// // import 'package:ai_resume_builder/views/template_view/widget/template_tile.dart';

// //import 'package:ai_resume_builder/constant/colors.dart';
// import 'package:ai_resume_builder/views/template_view/data/template_data.dart';
// import 'package:ai_resume_builder/views/template_view/screens/select_resume_mode_screen.dart';
// import 'package:flutter/material.dart';

// // List<TemplateTheme> templateThemeList = [
// //   TemplateTheme.business,
// //   TemplateTheme.classic,
// //   //TemplateTheme.modern,
// //   TemplateTheme.technical,
// //   TemplateTheme.business,
// //   TemplateTheme.classic,
// //   //TemplateTheme.modern,
// //   TemplateTheme.technical,
// // ];

// class TemplateScreen extends StatelessWidget {
//   const TemplateScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black12,
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         elevation: 0.0,
//         automaticallyImplyLeading: false,
//         centerTitle: true,
//         title: const Text(
//           'Resume Pro',
//           style: TextStyle(
//             fontSize: 30.0,
//             fontFamily: "Inter",
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: GridView.builder(
//           scrollDirection: Axis.vertical,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2, // Display 2 templates per row
//             childAspectRatio: 0.8,
//             mainAxisSpacing: 8.0,
//             crossAxisSpacing: 12.0,
//           ),
//           itemCount: templateThemeList.length,
//           itemBuilder: (context, index) {
//             TemplateTheme templateTheme = templateThemeList[index];
//             return GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (_) => SelectResumeModeScreen(
//                       data: data,
//                       templateTheme: templateTheme,
//                     ),
//                   ),
//                 );
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.black), // Black border
//                   borderRadius: BorderRadius.circular(8.0), // Rounded corners
//                 ),
//                 child: SizedBox(
//                   child: FlutterResumeTemplate(
//                     backgroundColor: Colors.white24,
//                     mode: TemplateMode.readOnlyMode,
//                     templateTheme: templateTheme,
//                     data: data,
//                     imageBoxFit: BoxFit.fill
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

//       // body: const TemplatesTile(),
//       // body: Padding(
//       //   padding: const EdgeInsets.all(8.0),
//       //   child: GridView.builder(
//       //       scrollDirection: Axis.vertical,
//       //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//       //         crossAxisCount: 2,
//       //         childAspectRatio: 0.8,
//       //         mainAxisSpacing: 8.0,
//       //         crossAxisSpacing: 12.0,
//       //       ),
//       //       itemCount: 4,
//       //       itemBuilder: (context, index) {
//       //         // final randomThemeIndex =
//       //         //     Random().nextInt(templateThemeList.length);
//       //         TemplateTheme templateTheme = templateThemeList[index];
//       //         return GestureDetector(
//       //           onTap: () {
//       //             Navigator.push(
//       //               context,
//       //               MaterialPageRoute(
//       //                 builder: (_) => SelectResumeModeScreen(
//       //                   data: data,
//       //                   templateTheme: templateTheme,
//       //                 ),
//       //               ),
//       //             );
//       //           },
//       //           child: SizedBox(
//       //             child: FlutterResumeTemplate(
//       //               backgroundColor: Colors.white24,
//       //               mode: TemplateMode.readOnlyMode,
//       //               templateTheme: templateTheme,
//       //               data: data,
//       //             ),
//       //           ),
//       //         );
//       //       }),
//       // ),



import 'package:flutter/material.dart';


class TemplateScreen extends StatelessWidget {
  const TemplateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Resume Pro',
          style: TextStyle(
            fontSize: 30.0,
            fontFamily: "Inter",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(child: Text("Template Screen")),
      ),
    );
  }
}
