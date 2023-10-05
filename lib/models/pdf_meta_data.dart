class PdfMetadata {
  final String fileName;
  final String filePath;
  final DateTime dateSaved;

  PdfMetadata({
    required this.fileName,
    required this.filePath,
    required this.dateSaved,
  });
  Map<String, dynamic> toJson() {
    return {
      'fileName': fileName,
      'filePath': filePath,
      'dateSaved': dateSaved.toIso8601String(),
    };
  }

  factory PdfMetadata.fromJson(Map<String, dynamic> json) {
    return PdfMetadata(
      fileName: json['fileName'],
      filePath: json['filePath'],
      dateSaved: DateTime.parse(json['dateSaved']),
    );
  }
}
