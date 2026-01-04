import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_contents_events.freezed.dart';

@freezed
sealed class NewContentsEvents with _$NewContentsEvents {
  factory NewContentsEvents.captureImage() = CaptureImageEvent;

  factory NewContentsEvents.scanDocuments() = ScanDocumentsEvent;

  factory NewContentsEvents.uploadFiles() = UploadFilesEvent;

  factory NewContentsEvents.createOrPasteNotes({required File notesJson}) =
      CreateOrPasteNotesEvent;

  factory NewContentsEvents.editAddedNote() = EditAddedNoteEvent;

  factory NewContentsEvents.removeContent({required int index}) = RemoveContentEvent;

  factory NewContentsEvents.clearAll() = ClearAllAddedContentsEvent;

  factory NewContentsEvents.generateEmbeddingsForAll() =
      GenerateEmbeddingsForAllEvent;
}
