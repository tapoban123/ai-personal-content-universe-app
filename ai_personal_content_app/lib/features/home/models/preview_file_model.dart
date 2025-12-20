import 'dart:io';

enum FileType { IMAGE, PDF, NOTE, UNKNOWN }

class PreviewFileModel {
  final File file;
  final String extension;
  FileType fileType;

  PreviewFileModel({
    required this.file,
    required this.extension,
    this.fileType = FileType.UNKNOWN,
  });

  FileType detectFileType() {
    if (["jpg", "png", "jpeg"].contains(extension.toLowerCase())) {
      fileType = FileType.IMAGE;
    } else if (["pdf"].contains(extension.toLowerCase())) {
      fileType = FileType.PDF;
    } else if (["json"].contains(extension.toLowerCase())) {
      fileType = FileType.NOTE;
    } else {
      return FileType.UNKNOWN;
    }
    return fileType;
  }
}
