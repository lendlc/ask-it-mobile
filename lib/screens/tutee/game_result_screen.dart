import 'package:ask_it/components/rounded_button.dart';
import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

class GameResultScreen extends StatelessWidget {
  static final String routeName = '/mini-game/result';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Results',
          style: mediumTextBold,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StarsContainer(),
            SizedBox(
              height: 32,
            ),
            Container(
              child: Image.asset(
                'assets/images/result-learning.png',
                width: 500,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            RoundedButton(
              text: 'Next Chapter',
              color: primaryColor,
              press: () {
                //pops all screen until list of topics screen
                Navigator.popUntil(context, ModalRoute.withName('/learn-java'));
              },
            ),
            RoundedButton(
              text: 'I want to learn more',
              textColor: Colors.white,
              color: secondaryColor,
              press: () {
                return showDialog<void>(
                  context: context,
                  barrierDismissible: false, // user must tap button!
                  builder: (BuildContext context) {
                    return LearnMoreAlertDialog();
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class LearnMoreAlertDialog extends StatelessWidget {
  const LearnMoreAlertDialog({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      //title: Text('AlertDialog Title'),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(
              'Do you want to....',
              style: mediumTextBold,
            ),
            SizedBox(
              height: 32,
            ),
            _buildAlertDialogButton(
              context,
              'Consult with Tutor',
              '/tutor/list',
              Icons.chat_bubble_outlined,
            ),
            SizedBox(
              height: 8,
            ),
            _buildAlertDialogButton(
              context,
              'Watch Video Tutorials',
              '/tutor-list/videos',
              Icons.video_library_rounded,
            )
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }

  Widget _buildAlertDialogButton(
      BuildContext context, String title, String path, IconData icon) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamedAndRemoveUntil('/home', (route) => false);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: EdgeInsets.all(16),
          height: 70,
          color: primaryColor,
          child: Row(
            children: [
              Icon(icon),
              SizedBox(
                width: 16,
              ),
              Text(
                title,
                style: mediumTextW600,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StarsContainer extends StatelessWidget {
  const StarsContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.star_rate_rounded,
          size: 70,
          color: primaryColor,
        ),
        Icon(
          Icons.star_rate_rounded,
          size: 70,
          color: primaryColor,
        ),
        Icon(
          Icons.star_rate_rounded,
          size: 70,
          color: primaryColor,
        ),
        Icon(
          Icons.star_rate_rounded,
          size: 70,
          color: primaryColor,
        ),
        Icon(
          Icons.star_rate_rounded,
          size: 70,
          color: primaryColor,
        ),
      ],
    );
  }
}
