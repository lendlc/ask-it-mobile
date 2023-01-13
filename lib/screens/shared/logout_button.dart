import 'package:ask_it/constants.dart';
import 'package:ask_it/core/auth/auth_controller.dart';
import 'package:ask_it/core/basic_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart' show Either;
import 'package:ndialog/ndialog.dart';

class LogoutButton extends ConsumerWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      icon: Icon(
        Icons.logout,
        semanticLabel: 'Sign Out',
        color: Colors.redAccent,
      ),
      onPressed: () {
        NAlertDialog(
          dialogStyle: DialogStyle(titleDivider: true),
          title: Text('Are you sure?'),
          content: Text('Are you sure you want to log out?'),
          actions: <Widget>[
            TextButton(
              child: Text('Yes'),
              onPressed: () => Navigator.of(context).pop(true),
            ),
            TextButton(
              child: Text('Cancel', style: TextStyle(color: Colors.red)),
              onPressed: () => Navigator.of(context).pop(false),
            ),
          ],
        ).show<bool>(context).then((perform) {
          if (perform == null || !perform) return;

          ProgressDialog.future<Either<BasicError, bool>>(
            context,
            future: ref.read(logoutProvider).call(null),
            message: Text('Logging out...'),
            title: Text('Please wait...'),
            dismissable: false,
          ).then((value) {
            if (value == null) return;

            value.fold(
              (l) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Error occurred while trying to logout.'),
                    backgroundColor: Colors.red,
                  ),
                );
              },
              (r) {
                if (r) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Successfully logged out.'),
                      backgroundColor: secondaryColor,
                    ),
                  );
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/login',
                    (_) => false,
                  );
                }
              },
            );
          });
        });
      },
    );
  }
}
