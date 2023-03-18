// import 'package:ask_it/components/rounded_button.dart';
// import 'package:ask_it/components/course_card.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// import '../../constants.dart';
// import '../../core/auth/auth_controller.dart';
// import '../../core/subjects.dart';

// class RegisterTutorSubjectScreen extends StatefulWidget {
//   static String routeName = '/register/tutor/subject';

//   @override
//   _RegisterTutorSubjectScreenState createState() => _RegisterTutorSubjectScreenState();
// }

// class _RegisterTutorSubjectScreenState extends State<RegisterTutorSubjectScreen> {
//   int? selectedSubject;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//       ),
//       body: Container(
//         child: Column(
//           //mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//               height: 30,
//             ),
//             Container(
//               alignment: Alignment.centerLeft,
//               padding: EdgeInsets.all(16),
//               child: Text(
//                 'What do you want to teach?',
//                 style: largeTextBold,
//               ),
//             ),
//             GridView.count(
//               padding: EdgeInsets.all(16),
//               crossAxisSpacing: 8,
//               mainAxisSpacing: 8,
//               crossAxisCount: 2,
//               shrinkWrap: true,
//               physics: ScrollPhysics(),
//               children: List<Widget>.generate(
//                 subjects.length,
//                 (index) => CourseTile(
//                   title: subjects[index]['title']!,
//                   imagePath: subjects[index]['imagePath']!,
//                   isSelected: selectedSubject == index,
//                   onTap: () {
//                     setState(() {
//                       selectedSubject = index;
//                     });
//                   },
//                 ),
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.all(16),
//               alignment: Alignment.centerRight,
//               child: Container(
//                 width: 175,
//                 child: Consumer(
//                   builder: (context, ref, _) {
//                     final details = ref.watch(registerTutorDetailsControllerProvider);
//                     return RoundedButton(
//                       text: 'Next',
//                       textColor: Colors.white,
//                       color: secondaryColor,
//                       press: selectedSubject != null
//                           ? () {
//                               FocusScope.of(context).unfocus();

//                               ref
//                                   .read(registerTutorDetailsControllerProvider.notifier)
//                                   .setData(details.copyWith(
//                                     subject: subjects[selectedSubject!]['title']!,
//                                   ));

//                               Navigator.pushNamed(context, '/register/tutor/schedule');
//                             }
//                           : null,
//                     );
//                   },
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
