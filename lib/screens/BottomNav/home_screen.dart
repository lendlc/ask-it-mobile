import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildHeader(),
            SizedBox(
              height: 50,
            ),
            _buildTopicCardList(),
          ],
        ),
      ),
    );
  }
}

class _buildTopicCardList extends StatelessWidget {
  const _buildTopicCardList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildModuleCard(
          title: 'Learn Java Programming',
          description: 'Learn about the basics of Java',
          icon: Icons.lightbulb_outline_rounded,
          onTap: () {
            Navigator.pushNamed(context, '/learn-java');
          },
        ),
        _buildModuleCard(
          title: 'Watch Tutorial Videos',
          description: 'Learn from our tutors',
          icon: Icons.ondemand_video_outlined,
        ),
        _buildModuleCard(
          title: 'Connect with a Tutor',
          description: 'Something blah blah',
          icon: Icons.connect_without_contact_outlined,
          onTap: () {
            Navigator.pushNamed(context, '/tutor-category');
          },
        )
      ],
    );
  }
}

class _buildModuleCard extends StatelessWidget {
  final String title, description;
  final IconData icon;
  final Function onTap;

  const _buildModuleCard({
    Key key,
    this.title,
    this.description,
    this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(bottom: 16),
        //height: 100,
        decoration: boxDecorationStyle,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 75,
                width: 75,
                color: primaryColor,
                child: Center(
                  child: Icon(
                    icon,
                    size: 50,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: mediumTextBold,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        description,
                        style: TextStyle(fontSize: smallText),
                      ),
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _buildHeader extends StatelessWidget {
  const _buildHeader({
    Key key,
  }) : super(key: key);

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
                    'What do you want to do Today?',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            //occupy parent height (80)
            height: double.infinity,
            width: 70,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  10.0,
                ),
              ),
            ),

            child: Center(
              child: Image.asset('assets/images/avatar.png'),
            ),
          )
        ],
      ),
    );
  }
}
