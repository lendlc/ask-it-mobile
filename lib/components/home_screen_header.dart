import 'package:ask_it/core/auth/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants.dart';

class HomeScreenHeader extends StatelessWidget {
  final String message;

  HomeScreenHeader({required this.message});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 70,
      child: Row(
        children: <Widget>[
          //Occupy Most of the Space
          Expanded(
            child: Container(
              //color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Hello,',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    message,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: double.infinity,
              width: 70,
              color: primaryColor,
              child: Consumer(
                builder: (context, ref, _) {
                  final userProfileAV = ref.watch(userProfileProvider);
                  return userProfileAV.maybeWhen(
                      orElse: () => Image.asset('assets/images/avatar.png'),
                      data: (profile) => Image.asset(profile.avatar));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
