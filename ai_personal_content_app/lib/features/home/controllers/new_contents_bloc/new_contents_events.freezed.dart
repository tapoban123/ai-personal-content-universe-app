// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_contents_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NewContentsEvents {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewContentsEvents);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewContentsEvents()';
}


}

/// @nodoc
class $NewContentsEventsCopyWith<$Res>  {
$NewContentsEventsCopyWith(NewContentsEvents _, $Res Function(NewContentsEvents) __);
}


/// Adds pattern-matching-related methods to [NewContentsEvents].
extension NewContentsEventsPatterns on NewContentsEvents {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CaptureImageEvent value)?  captureImage,TResult Function( ScanDocumentsEvent value)?  scanDocuments,TResult Function( UploadFilesEvent value)?  uploadFiles,TResult Function( CreateOrPasteNotesEvent value)?  createOrPasteNotes,TResult Function( EditAddedNoteEvent value)?  editAddedNote,TResult Function( RemoveContentEvent value)?  removeContent,TResult Function( ClearAllAddedContentsEvent value)?  clearAll,TResult Function( GenerateEmbeddingsForAllEvent value)?  generateEmbeddingsForAll,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CaptureImageEvent() when captureImage != null:
return captureImage(_that);case ScanDocumentsEvent() when scanDocuments != null:
return scanDocuments(_that);case UploadFilesEvent() when uploadFiles != null:
return uploadFiles(_that);case CreateOrPasteNotesEvent() when createOrPasteNotes != null:
return createOrPasteNotes(_that);case EditAddedNoteEvent() when editAddedNote != null:
return editAddedNote(_that);case RemoveContentEvent() when removeContent != null:
return removeContent(_that);case ClearAllAddedContentsEvent() when clearAll != null:
return clearAll(_that);case GenerateEmbeddingsForAllEvent() when generateEmbeddingsForAll != null:
return generateEmbeddingsForAll(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CaptureImageEvent value)  captureImage,required TResult Function( ScanDocumentsEvent value)  scanDocuments,required TResult Function( UploadFilesEvent value)  uploadFiles,required TResult Function( CreateOrPasteNotesEvent value)  createOrPasteNotes,required TResult Function( EditAddedNoteEvent value)  editAddedNote,required TResult Function( RemoveContentEvent value)  removeContent,required TResult Function( ClearAllAddedContentsEvent value)  clearAll,required TResult Function( GenerateEmbeddingsForAllEvent value)  generateEmbeddingsForAll,}){
final _that = this;
switch (_that) {
case CaptureImageEvent():
return captureImage(_that);case ScanDocumentsEvent():
return scanDocuments(_that);case UploadFilesEvent():
return uploadFiles(_that);case CreateOrPasteNotesEvent():
return createOrPasteNotes(_that);case EditAddedNoteEvent():
return editAddedNote(_that);case RemoveContentEvent():
return removeContent(_that);case ClearAllAddedContentsEvent():
return clearAll(_that);case GenerateEmbeddingsForAllEvent():
return generateEmbeddingsForAll(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CaptureImageEvent value)?  captureImage,TResult? Function( ScanDocumentsEvent value)?  scanDocuments,TResult? Function( UploadFilesEvent value)?  uploadFiles,TResult? Function( CreateOrPasteNotesEvent value)?  createOrPasteNotes,TResult? Function( EditAddedNoteEvent value)?  editAddedNote,TResult? Function( RemoveContentEvent value)?  removeContent,TResult? Function( ClearAllAddedContentsEvent value)?  clearAll,TResult? Function( GenerateEmbeddingsForAllEvent value)?  generateEmbeddingsForAll,}){
final _that = this;
switch (_that) {
case CaptureImageEvent() when captureImage != null:
return captureImage(_that);case ScanDocumentsEvent() when scanDocuments != null:
return scanDocuments(_that);case UploadFilesEvent() when uploadFiles != null:
return uploadFiles(_that);case CreateOrPasteNotesEvent() when createOrPasteNotes != null:
return createOrPasteNotes(_that);case EditAddedNoteEvent() when editAddedNote != null:
return editAddedNote(_that);case RemoveContentEvent() when removeContent != null:
return removeContent(_that);case ClearAllAddedContentsEvent() when clearAll != null:
return clearAll(_that);case GenerateEmbeddingsForAllEvent() when generateEmbeddingsForAll != null:
return generateEmbeddingsForAll(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  captureImage,TResult Function()?  scanDocuments,TResult Function()?  uploadFiles,TResult Function( File notesJson)?  createOrPasteNotes,TResult Function()?  editAddedNote,TResult Function( int index)?  removeContent,TResult Function()?  clearAll,TResult Function()?  generateEmbeddingsForAll,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CaptureImageEvent() when captureImage != null:
return captureImage();case ScanDocumentsEvent() when scanDocuments != null:
return scanDocuments();case UploadFilesEvent() when uploadFiles != null:
return uploadFiles();case CreateOrPasteNotesEvent() when createOrPasteNotes != null:
return createOrPasteNotes(_that.notesJson);case EditAddedNoteEvent() when editAddedNote != null:
return editAddedNote();case RemoveContentEvent() when removeContent != null:
return removeContent(_that.index);case ClearAllAddedContentsEvent() when clearAll != null:
return clearAll();case GenerateEmbeddingsForAllEvent() when generateEmbeddingsForAll != null:
return generateEmbeddingsForAll();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  captureImage,required TResult Function()  scanDocuments,required TResult Function()  uploadFiles,required TResult Function( File notesJson)  createOrPasteNotes,required TResult Function()  editAddedNote,required TResult Function( int index)  removeContent,required TResult Function()  clearAll,required TResult Function()  generateEmbeddingsForAll,}) {final _that = this;
switch (_that) {
case CaptureImageEvent():
return captureImage();case ScanDocumentsEvent():
return scanDocuments();case UploadFilesEvent():
return uploadFiles();case CreateOrPasteNotesEvent():
return createOrPasteNotes(_that.notesJson);case EditAddedNoteEvent():
return editAddedNote();case RemoveContentEvent():
return removeContent(_that.index);case ClearAllAddedContentsEvent():
return clearAll();case GenerateEmbeddingsForAllEvent():
return generateEmbeddingsForAll();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  captureImage,TResult? Function()?  scanDocuments,TResult? Function()?  uploadFiles,TResult? Function( File notesJson)?  createOrPasteNotes,TResult? Function()?  editAddedNote,TResult? Function( int index)?  removeContent,TResult? Function()?  clearAll,TResult? Function()?  generateEmbeddingsForAll,}) {final _that = this;
switch (_that) {
case CaptureImageEvent() when captureImage != null:
return captureImage();case ScanDocumentsEvent() when scanDocuments != null:
return scanDocuments();case UploadFilesEvent() when uploadFiles != null:
return uploadFiles();case CreateOrPasteNotesEvent() when createOrPasteNotes != null:
return createOrPasteNotes(_that.notesJson);case EditAddedNoteEvent() when editAddedNote != null:
return editAddedNote();case RemoveContentEvent() when removeContent != null:
return removeContent(_that.index);case ClearAllAddedContentsEvent() when clearAll != null:
return clearAll();case GenerateEmbeddingsForAllEvent() when generateEmbeddingsForAll != null:
return generateEmbeddingsForAll();case _:
  return null;

}
}

}

/// @nodoc


class CaptureImageEvent implements NewContentsEvents {
   CaptureImageEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CaptureImageEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewContentsEvents.captureImage()';
}


}




/// @nodoc


class ScanDocumentsEvent implements NewContentsEvents {
   ScanDocumentsEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScanDocumentsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewContentsEvents.scanDocuments()';
}


}




/// @nodoc


class UploadFilesEvent implements NewContentsEvents {
   UploadFilesEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadFilesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewContentsEvents.uploadFiles()';
}


}




/// @nodoc


class CreateOrPasteNotesEvent implements NewContentsEvents {
   CreateOrPasteNotesEvent({required this.notesJson});
  

 final  File notesJson;

/// Create a copy of NewContentsEvents
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateOrPasteNotesEventCopyWith<CreateOrPasteNotesEvent> get copyWith => _$CreateOrPasteNotesEventCopyWithImpl<CreateOrPasteNotesEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrPasteNotesEvent&&(identical(other.notesJson, notesJson) || other.notesJson == notesJson));
}


@override
int get hashCode => Object.hash(runtimeType,notesJson);

@override
String toString() {
  return 'NewContentsEvents.createOrPasteNotes(notesJson: $notesJson)';
}


}

/// @nodoc
abstract mixin class $CreateOrPasteNotesEventCopyWith<$Res> implements $NewContentsEventsCopyWith<$Res> {
  factory $CreateOrPasteNotesEventCopyWith(CreateOrPasteNotesEvent value, $Res Function(CreateOrPasteNotesEvent) _then) = _$CreateOrPasteNotesEventCopyWithImpl;
@useResult
$Res call({
 File notesJson
});




}
/// @nodoc
class _$CreateOrPasteNotesEventCopyWithImpl<$Res>
    implements $CreateOrPasteNotesEventCopyWith<$Res> {
  _$CreateOrPasteNotesEventCopyWithImpl(this._self, this._then);

  final CreateOrPasteNotesEvent _self;
  final $Res Function(CreateOrPasteNotesEvent) _then;

/// Create a copy of NewContentsEvents
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? notesJson = null,}) {
  return _then(CreateOrPasteNotesEvent(
notesJson: null == notesJson ? _self.notesJson : notesJson // ignore: cast_nullable_to_non_nullable
as File,
  ));
}


}

/// @nodoc


class EditAddedNoteEvent implements NewContentsEvents {
   EditAddedNoteEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditAddedNoteEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewContentsEvents.editAddedNote()';
}


}




/// @nodoc


class RemoveContentEvent implements NewContentsEvents {
   RemoveContentEvent({required this.index});
  

 final  int index;

/// Create a copy of NewContentsEvents
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveContentEventCopyWith<RemoveContentEvent> get copyWith => _$RemoveContentEventCopyWithImpl<RemoveContentEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveContentEvent&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'NewContentsEvents.removeContent(index: $index)';
}


}

/// @nodoc
abstract mixin class $RemoveContentEventCopyWith<$Res> implements $NewContentsEventsCopyWith<$Res> {
  factory $RemoveContentEventCopyWith(RemoveContentEvent value, $Res Function(RemoveContentEvent) _then) = _$RemoveContentEventCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class _$RemoveContentEventCopyWithImpl<$Res>
    implements $RemoveContentEventCopyWith<$Res> {
  _$RemoveContentEventCopyWithImpl(this._self, this._then);

  final RemoveContentEvent _self;
  final $Res Function(RemoveContentEvent) _then;

/// Create a copy of NewContentsEvents
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(RemoveContentEvent(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ClearAllAddedContentsEvent implements NewContentsEvents {
   ClearAllAddedContentsEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearAllAddedContentsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewContentsEvents.clearAll()';
}


}




/// @nodoc


class GenerateEmbeddingsForAllEvent implements NewContentsEvents {
   GenerateEmbeddingsForAllEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateEmbeddingsForAllEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewContentsEvents.generateEmbeddingsForAll()';
}


}




// dart format on
