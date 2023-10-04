// import 'package:ai_resume_builder/constant/colors.dart';
// import 'package:ai_resume_builder/views/preview_view/widgets/text_input_widget2.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// // import 'package:provider/provider.dart';

// final fullNameProvider = StateProvider<String>((ref) => "Alicia Sm");

// class EditResumeScreen extends ConsumerStatefulWidget {
//   const EditResumeScreen({super.key});

//   @override
//   ConsumerState<EditResumeScreen> createState() => _EditResumeScreenState();
// }

// class _EditResumeScreenState extends ConsumerState<EditResumeScreen> {
//   // TextEditingController fnController = TextEditingController();
//   // late String fullName;

//   // // @override
//   // // void initState() {
//   // //   super.initState();
//   // //   // fullName = widget.fullName;
//   // //   fnController.text = ref
//   // //       .watch(fullNameProvider.notifier)
//   // //       .state; // Set the initial value of the controller
//   // // }

//   // @override
//   // void didChangeDependencies() {
//   //   // TODO: implement didChangeDependencies
//   //   super.didChangeDependencies();

//   //   fnController.text = ref
//   //       .watch(fullNameProvider.notifier)
//   //       .state;
//   // }

//   TextEditingController fnController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     fnController.text = ref.read(fullNameProvider.notifier).state;
//   }

//       void _sendDataBack(BuildContext context) {
//       // String finalFullName = fnController.text;
//       String finalFullName = fnController.text;

//       if (finalFullName == "" || finalFullName == " ") {
//         Future.delayed(Duration.zero, () {
//           showDialog(
//               context: context,
//               builder: (BuildContext context) {
//                 return AlertDialog(
//                   content: const Text(
//                     "You can't leave the TextField empty",
//                     style: TextStyle(
//                       fontSize: 16.0,
//                       color: Color(0xFF000000),
//                     ),
//                   ),
//                   actions: <Widget>[
//                     TextButton(
//                       onPressed: () => Navigator.pop(context, 'OK'),
//                       child: Text(
//                         'OK',
//                         style: TextStyle(
//                           color: AppColor.bottomNavigationBar,
//                         ),
//                       ),
//                     ),
//                   ],
//                 );
//               });
//         });
//       } else {
//         // setState(() {
//         //   fullName = finalFullName;
//         // });

//         // Navigator.pop(
//         //   context,
//         //   [
//         //     finalFullName,
//         //   ],
//         // );


//         // context.read().state = finalFullName;

//         // ref.read(fullNameProvider.notifier).state = finalFullName;

//         // Close the screen
//         Navigator.pop(context, finalFullName);
//       }
//     }

//   @override
//   Widget build(BuildContext context) {
//     // String fullName = widget.fullName;

//     // TextEditingController fnController = TextEditingController(text: fullName);



//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: true,
//         backgroundColor: Colors.black,
//         elevation: 0.0,
//         title: const Text(
//           "Edit Resume",
//           style: TextStyle(
//             fontSize: 20,
//             fontFamily: 'Inter',
//             fontWeight: FontWeight.w700,
//             height: 0,
//             letterSpacing: 0.30,
//           ),
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {
//               setState(() {
//                 _sendDataBack(context);
//               });
//             },
//             icon: const Icon(
//               Icons.save,
//               size: 22,
//               color: Colors.white,
//             ),
//           ),
//         ],
//       ),
//       body: ListView(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
//             child: Column(
//               children: [
//                 EditScreenField(
//                   title: "Full Name",
//                   keyboardType: TextInputType.text,
//                   controller: fnController,
//                   onChanged: (value) {
//                     // fullName = value;
//                   },
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class EditScreenField extends StatelessWidget {
//   const EditScreenField({
//     super.key,
//     required this.title,
//     required this.keyboardType,
//     this.controller,
//     this.onChanged,
//   });

//   final String title;
//   final TextInputType keyboardType;
//   final TextEditingController? controller;
//   final void Function(String)? onChanged;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: const TextStyle(
//             fontSize: 15,
//             fontFamily: 'Inter',
//             fontWeight: FontWeight.w800,
//             color: Colors.black,
//           ),
//         ),
//         const SizedBox(
//           height: 5,
//         ),
//         TextInputWidget2(
//           keyboardType: keyboardType,
//           controller: controller,
//           onChanged: onChanged,
//         ),
//         const SizedBox(
//           height: 5,
//         ),
//       ],
//     );
//   }
// }
