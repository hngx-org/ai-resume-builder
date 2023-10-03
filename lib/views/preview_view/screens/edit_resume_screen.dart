import 'package:ai_resume_builder/constant/colors.dart';
import 'package:ai_resume_builder/views/preview_view/widgets/edit_screen_field.dart';
import 'package:flutter/material.dart';

class EditResumeScreen extends StatefulWidget {
  const EditResumeScreen({super.key, required this.fullName});

  final String fullName;

  @override
  State<EditResumeScreen> createState() => _EditResumeScreenState();
}

class _EditResumeScreenState extends State<EditResumeScreen> {

  TextEditingController fnController = TextEditingController();
  late String fullName;
  @override
  Widget build(BuildContext context) {
    String fullName = widget.fullName;

    TextEditingController fnController = TextEditingController(text: fullName);

    void _sendDataBack(BuildContext context) {
      String finalFullName = fnController.text;

      if (finalFullName == "" || finalFullName == " ") {
        Future.delayed(Duration.zero, () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: const Text(
                    "You can't leave the TextField empty",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xFF000000),
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: Text(
                        'OK',
                        style: TextStyle(
                          color: AppColor.bottomNavigationBar,
                        ),
                      ),
                    ),
                  ],
                );
              });
        });
      } else {
        Navigator.pop(
          context,
          [
            finalFullName,
          ],
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: const Text(
          "Edit Resume",
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            height: 0,
            letterSpacing: 0.30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _sendDataBack(context);
              });
            },
            icon: const Icon(
              Icons.save,
              size: 22,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Column(
              children: [
                EditScreenField(
                  title: "Full Name",
                  keyboardType: TextInputType.text,
                  controller: fnController,
                  onChanged: (value) {
                    fullName = value;
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

