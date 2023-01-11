import 'package:ask_it/constants.dart';
import 'package:ask_it/core/auth/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletons/skeletons.dart';

class ProfileInfoCard extends StatelessWidget {
  const ProfileInfoCard({super.key, required this.actions});

  final Widget actions;

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: boxDecorationStyle,
      child: Column(
        children: <Widget>[
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: primaryColor,
              border: Border.all(color: primaryColor),
              borderRadius: BorderRadius.circular(150),
            ),
            child: ClipOval(
              child: Image.asset('assets/images/avatar.png'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Consumer(
            child: oneLineTextSkeleton,
            builder: (context, ref, child) {
              final userProfileAV = ref.watch(userProfileProvider);
              return userProfileAV.maybeWhen(
                data: (userProfile) => Text(
                  userProfile.fullName,
                  style: mediumTextBold,
                ),
                orElse: () => child!,
              );
            },
          ),
          Consumer(
              child: oneLineTextSkeleton,
              builder: (context, ref, child) {
                final userProfileAV = ref.watch(userProfileProvider);
                return userProfileAV.maybeWhen(
                  data: (userProfile) => Text(
                    userProfile.email,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  orElse: () => child!,
                );
              }),
          SizedBox(
            height: 20,
          ),
          actions,
        ],
      ),
    );
  }
}
