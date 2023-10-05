import 'dart:convert';
import 'dart:io';

import 'package:ai_resume_builder/models/pdf_meta_data.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PdfHandler {
  List<PdfMetadata> savedPdfList = [];

  Future<void> saveAndLaunchFile(List<int> bytes, String fileName) async {
    try {
      final directory = await getExternalStorageDirectory();
      final path = directory!.path;
      final file = File('$path/$fileName');
      await file.writeAsBytes(bytes);
      OpenFile.open('$path/$fileName');

      savedPdfList.add(
        PdfMetadata(
          fileName: fileName,
          filePath: file.path,
          dateSaved: DateTime.now(),
        ),
      );

      print('Saving file : ${file.path}');
      print('File saved ');
      print('Checking list : $savedPdfList');
    } catch (e) {
      print('Saving File Exception >>>>>>> ${e.toString()}');
    }
  }

  Future<void> loadSavedPdfList() async {
    final prefs = await SharedPreferences.getInstance();
    final savedPdfData = prefs.getStringList('savedPdfList');
    if (savedPdfData != null) {
      savedPdfList = savedPdfData.map((jsonString) {
        return PdfMetadata.fromJson(json.decode(jsonString));
      }).toList();
    }
  }

  Future<void> saveSavedPdfList() async {
    final prefs = await SharedPreferences.getInstance();
    final savedPdfData = savedPdfList.map((pdfMetadata) {
      return json.encode(pdfMetadata.toJson());
    }).toList();
    prefs.setStringList('savedPdfList', savedPdfData);
  }
}
