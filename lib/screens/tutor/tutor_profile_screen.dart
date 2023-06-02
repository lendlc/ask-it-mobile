import 'package:ask_it/constants.dart';
import 'package:ask_it/core/schedule/schedule_model.dart';
import 'package:ask_it/screens/shared/logout_button.dart';
import 'package:ask_it/screens/shared/profile_info_card.dart';
import 'package:ask_it/screens/tutor/tutor_edit_schedule_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:ndialog/ndialog.dart';
import 'package:skeletons/skeletons.dart';

import '../../core/schedule/schedule_controller.dart';

class TutorProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: mediumTextBold,
        ),
        actions: <Widget>[
          LogoutButton(),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ProfileInfoCard(
              actions: Container(
                child: Container(
                  child: Row(
                    children: [
                      HeaderButton(
                        title: 'My Videos',
                        path: '/tutor/profile/videos',
                      ),
                      Spacer(),
                      HeaderButton(
                        title: 'Edit Profile',
                        path: '/profile/edit',
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Text(
                  'My Schedule',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    Navigator.pushNamed(context, '/tutor/schedule');
                  },
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Consumer(builder: (context, ref, _) {
              final schedulesAsyncValue = ref.watch(schedulesProvider);
              return schedulesAsyncValue.when(
                error: (error, stackTrace) => Center(
                  child: Text(error.toString()),
                ),
                loading: () => Expanded(child: SkeletonListView()),
                data: (schedules) {
                  if (schedules.isEmpty) {
                    return SizedBox(
                      height: 100,
                      child: Center(
                        child: Text('No schedule yet.'),
                      ),
                    );
                  }

                  return Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(
                            schedules.length,
                            (index) => ScheduleListItem(schedule: schedules[index]),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            })
          ],
        ),
      ),
    );
  }
}

class ScheduleListItem extends StatelessWidget {
  const ScheduleListItem({
    Key? key,
    required this.schedule,
  }) : super(key: key);

  final Schedule schedule;

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('EEE, MMM d, yyyy');
    final timeFormat = DateFormat('h:mm a');
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 8),
      decoration: boxDecorationStyle,
      child: Row(
        children: [
          Icon(
            Icons.access_time,
            size: 32,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dateFormat.format(schedule.start),
                    style: mediumTextW600,
                  ),
                  Builder(builder: (context) {
                    final start = timeFormat.format(schedule.start);
                    final end = timeFormat.format(schedule.end);

                    return Text(
                      '$start to $end',
                    );
                  })
                ],
              ),
            ),
          ),
          Consumer(builder: (context, ref, _) {
            final deleteController = ref.watch(deleteScheduleProvider(schedule.id));

            return PopupMenuButton(
              itemBuilder: (BuildContext bc) => [
                PopupMenuItem(
                  child: Text("Edit"),
                  value: "edit",
                ),
                PopupMenuItem(
                  child: Text("Delete"),
                  value: "delete",
                ),
              ],
              onSelected: (action) {
                if (deleteController.isBusy) return;

                if (action == 'edit') {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => TutorEditScheduleScreen(
                        schedule: schedule,
                      ),
                    ),
                  );
                  return;
                }

                if (action == 'delete') {
                  NAlertDialog(
                    dismissable: false,
                    dialogStyle: DialogStyle(titleDivider: true),
                    title: Text('Delete Schedule'),
                    content: Text('Are you sure you want to do this action?'),
                    actions: <Widget>[
                      TextButton(
                        child: Text('Yes'),
                        onPressed: () async {
                          final either = await deleteController.call(null);
                          either?.fold(
                            (l) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                      'Cannot delete schedule. Maybe it already has a linked appointment'),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            },
                            (r) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Successfully deleted schedule.'),
                                  backgroundColor: secondaryColor,
                                ),
                              );
                            },
                          );
                          Navigator.pop(context);
                        },
                      ),
                      TextButton(
                        child: Text('Cancel'),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ).show(context);
                }
              },
            );
          }),
        ],
      ),
    );
  }
}

class HeaderButton extends StatelessWidget {
  final String title, path;

  const HeaderButton({
    Key? key,
    required this.title,
    required this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.9,
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          backgroundColor: lightColor,
        ),
        onPressed: () {
          Navigator.pushNamed(context, '$path');
        },
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
