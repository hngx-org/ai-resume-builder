import 'package:ai_resume_builder/constant/colors.dart';
import 'package:ai_resume_builder/constant/image_path.dart';
import 'package:ai_resume_builder/views/preview_view/screens/edit_resume_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// final fullNameProvider = StateProvider<String>((ref) => "Alicia Sm");

class PreviewScreen extends ConsumerStatefulWidget {
  const PreviewScreen({super.key});

  // final TemplateTheme? templateTheme;

  @override
  ConsumerState<PreviewScreen> createState() => _PreviewScreenState();
}

class _PreviewScreenState extends ConsumerState<PreviewScreen> {
// String fullName = 'Alicia Smith';
//  late String fullName;

  @override
  Widget build(BuildContext context) {
    // final fullName = ref.watch(fullNameProvider.notifier).state;
    // final fullName = ref.watch(fullNameProvider.notifier).state;

    String fullName = ref.watch(fullNameProvider.notifier).state;

//     const String workExperienceCompany1 = '''
// Responsibilities:
//   - Developed and maintained RESTful APIs using Node.js and Express.js for our web applications.
//   - Collaborated with the frontend team to integrate GraphQL APIs into our applications.
//   - Utilized Docker for containerization and Kubernetes for orchestration of microservices.
//   - Implemented user authentication and authorization using JWT tokens and OAuth2.

//   Technologies Used:
//   - Node.js, Express.js, GraphQL, RESTful APIs
//   - Docker, Kubernetes, JWT, OAuth2
//   - PostgreSQL, MongoDB
//   - Git, JIRA

//   Achievements:
//   - Successfully reduced API response times by 30% by optimizing database queries.
//   - Led a team of developers in delivering critical features on time.
// ''';

//     const String workExperienceCompany2 = '''
// Responsibilities:
//   - Developed scalable microservices using Java and Spring Boot for our cloud-based applications.
//   - Integrated Elasticsearch and Kibana for real-time log monitoring and analysis.
//   - Implemented message queuing systems using Apache Kafka for event-driven architecture.
//   - Collaborated with the QA team to ensure high code quality and performance.

//   Technologies Used:
//   - Java, Spring Boot, RESTful APIs
//   - Elasticsearch, Kibana, Apache Kafka
//   - AWS (Amazon Web Services)
//   - Git, Jenkins

//   Achievements:
//   - Improved application performance by optimizing database queries and reducing response times.
//   - Implemented automated deployment pipelines, resulting in a 50% reduction in release time.
// ''';

//     const String workExperienceCompany3 = '''
// Responsibilities:
//   - Designed and developed responsive web applications using React.js and Redux.
//   - Implemented serverless architecture using AWS Lambda and API Gateway for cost-effective solutions.
//   - Integrated third-party APIs and payment gateways for e-commerce applications.
//   - Conducted code reviews and mentored junior developers in best practices.

//   Technologies Used:
//   - React.js, Redux, GraphQL
//   - AWS Lambda, API Gateway
//   - MySQL, MongoDB
//   - Git, Bitbucket

//   Achievements:
//   - Successfully launched three web applications, increasing customer engagement by 25%.
//   - Implemented a GraphQL API, reducing the number of network requests and improving frontend performance.
// ''';

//     const String bio = '''
// I am a dedicated Flutter developer with four years of valuable experience in both front-end and back-end development. 
// My expertise lies in crafting robust and user-friendly applications using the Flutter framework. 
// Having worked on projects of all sizes, I possess a deep understanding of the development 
// lifecycle and a proven ability to deliver high-quality solutions.

// Currently based in the vibrant city of Berlin, Germany, I enjoy being a part of its thriving tech community.
//  As a Computer Engineering graduate, I bring a solid foundation of technical knowledge and problem-solving
//   skills to every project I undertake.

// Throughout my career, I have consistently demonstrated a passion for creating innovative and efficient applications
//  that provide an exceptional user experience. My proficiency in Flutter enables me to build cross-platform 
//  applications with beautiful interfaces, seamless functionality, and optimized performance.

// I thrive in collaborative environments and enjoy working closely with cross-functional teams to bring ideas to life.
//  I am always eager to stay up-to-date with the latest industry trends and technologies, continuously honing 
//  my skills to deliver cutting-edge solutions.
// ''';

//     TemplateData editableData = TemplateData(
//         fullName: fullName,
//         currentPosition: 'Flutter Developer',
//         street: 'Curvy Str. 53',
//         address: 'Berlin, 14568',
//         country: 'Germany',
//         email: 'aliciasmith@wuerth.com',
//         phoneNumber: '+ 49 (106)341 753 12',
//         bio: bio,
//         experience: [
//           ExperienceData(
//             experienceTitle: 'Software Engineer',
//             experienceLocation: 'at Mindable Health',
//             experiencePeriod: 'Aug 2021 - Dec 2023',
//             experiencePlace: 'Berlin',
//             experienceDescription: workExperienceCompany1,
//           ),
//           ExperienceData(
//             experienceTitle: 'Product Design',
//             experienceLocation: 'Uk . London',
//             experiencePeriod: 'Aug 2021 - Dec 2023',
//             experiencePlace: 'London',
//             experienceDescription: workExperienceCompany2,
//           ),
//           ExperienceData(
//             experienceTitle: 'Flutter Developer',
//             experienceLocation: 'Uk . London',
//             experiencePeriod: 'Aug 2021 - Dec 2023',
//             experiencePlace: 'London',
//             experienceDescription: workExperienceCompany3,
//           ),
//         ],
//         educationDetails: [
//           Education('Bachelor Degree', 'Oxford University'),
//           Education('Post Graduate Degree', 'Oxford University'),
//         ],
//         languages: [
//           Language('English', 5),
//           Language('French', 4),
//           Language('Spanish', 3),
//           Language('Mandarin', 2),
//           Language('Russian', 1),
//         ],
//         hobbies: [
//           'Bungee jumping',
//           'Fitness Studio',
//           'Martial Art',
//           'Vintage Art Collection'
//         ],
//         image:
//             'https://images.pexels.com/photos/3768911/pexels-photo-3768911.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
//         backgroundImage:
//             'https://images.pexels.com/photos/3768911/pexels-photo-3768911.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'Preview',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inter',
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              ImagePath.download,
              width: 22,
              height: 22,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      // body: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      //   child: SingleChildScrollView(
      //     child: SizedBox(
      //       child: FlutterResumeTemplate(
      //         mode: TemplateMode.readOnlyMode,
      //         templateTheme: widget.templateTheme!,
      //         data: editableData,
      //       ),
      //     ),
      //   ),
      // ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        // child: SingleChildScrollView(
        //   child: SizedBox(
        //     child: widget.templateTheme != null
        //         ? FlutterResumeTemplate(
        //             mode: TemplateMode.readOnlyMode,
        //             templateTheme: widget.templateTheme!,
        //             data: editableData,
        //           )
        //         : const Center(
        //             // Handle the case when templateTheme is null (you can customize this)
        //             child: Text(
        //               'Template theme is null',
        //               style: TextStyle(fontSize: 16),
        //             ),
        //           ),
        //   ),
        // ),
        child: Center(child: Text("Preview Screen"),),
      ),

      floatingActionButton: FloatingActionButton(
        // onPressed: () async{
        //  final result = await Navigator.of(context).push(
        //     MaterialPageRoute(
        //       builder: (context) => const EditResumeScreen(),
        //     ),
        //   );

        //   if(result != null){
        //     context.read(fullNameProvider).state = result;
        //   }
        // },
        onPressed: () async {
          final result = await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const EditResumeScreen(),
            ),
          );

          // Update the state in PreviewScreen if result is not null
          if (result != null) {
            fullName = result;
          }
        },
        backgroundColor: AppColor.upgradeToProDarkMode,
        child: const Icon(
          Icons.edit,
          size: 25,
        ),
      ),
    );
  }

  Widget _previewResume() {
    return Image.asset(
      ImagePath.coloredResume,
      height: 400,
      width: double.maxFinite,
      fit: BoxFit.fill,
    );
  }
}
