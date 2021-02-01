import 'package:flutter/material.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  final bool login;
  final Function onTap;

  const AlreadyHaveAnAccount({
    Key key,
    @required this.size,
    this.login = true,
    this.onTap,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            login ? "Already have an Account? " : "Don't Have an Account yet? ",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          GestureDetector(
            onTap: onTap,
            child: Text(
              login ? "Sign In" : "Sign up",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
