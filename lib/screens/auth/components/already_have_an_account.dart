import 'package:ask_it/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  final bool login;
  final void Function()? onTap;
  final MainAxisAlignment postion;

  const AlreadyHaveAnAccount({
    Key? key,
    required this.size,
    this.login = true,
    this.onTap,
    this.postion = MainAxisAlignment.start,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.9,
      child: Row(
        mainAxisAlignment: postion,
        children: <Widget>[
          Text(
            login ? "Already have an Account? " : "Don't Have an Account yet? ",
            style: smallTextW600,
          ),
          GestureDetector(
            onTap: onTap,
            child: Text(login ? "Sign In" : "Sign up",
                style: smallTextW600BlueAccent),
          )
        ],
      ),
    );
  }
}
