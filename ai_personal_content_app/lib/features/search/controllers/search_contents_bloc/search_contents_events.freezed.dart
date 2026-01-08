// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_contents_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchContentsEvents {

 String get query;
/// Create a copy of SearchContentsEvents
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchContentsEventsCopyWith<SearchContentsEvents> get copyWith => _$SearchContentsEventsCopyWithImpl<SearchContentsEvents>(this as SearchContentsEvents, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchContentsEvents&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'SearchContentsEvents(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchContentsEventsCopyWith<$Res>  {
  factory $SearchContentsEventsCopyWith(SearchContentsEvents value, $Res Function(SearchContentsEvents) _then) = _$SearchContentsEventsCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchContentsEventsCopyWithImpl<$Res>
    implements $SearchContentsEventsCopyWith<$Res> {
  _$SearchContentsEventsCopyWithImpl(this._self, this._then);

  final SearchContentsEvents _self;
  final $Res Function(SearchContentsEvents) _then;

/// Create a copy of SearchContentsEvents
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchContentsEvents].
extension SearchContentsEventsPatterns on SearchContentsEvents {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GenerateQueryEmbeddings value)?  generateQueryEmbeddings,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GenerateQueryEmbeddings() when generateQueryEmbeddings != null:
return generateQueryEmbeddings(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GenerateQueryEmbeddings value)  generateQueryEmbeddings,}){
final _that = this;
switch (_that) {
case GenerateQueryEmbeddings():
return generateQueryEmbeddings(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GenerateQueryEmbeddings value)?  generateQueryEmbeddings,}){
final _that = this;
switch (_that) {
case GenerateQueryEmbeddings() when generateQueryEmbeddings != null:
return generateQueryEmbeddings(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String query)?  generateQueryEmbeddings,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GenerateQueryEmbeddings() when generateQueryEmbeddings != null:
return generateQueryEmbeddings(_that.query);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String query)  generateQueryEmbeddings,}) {final _that = this;
switch (_that) {
case GenerateQueryEmbeddings():
return generateQueryEmbeddings(_that.query);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String query)?  generateQueryEmbeddings,}) {final _that = this;
switch (_that) {
case GenerateQueryEmbeddings() when generateQueryEmbeddings != null:
return generateQueryEmbeddings(_that.query);case _:
  return null;

}
}

}

/// @nodoc


class GenerateQueryEmbeddings implements SearchContentsEvents {
   GenerateQueryEmbeddings({required this.query});
  

@override final  String query;

/// Create a copy of SearchContentsEvents
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerateQueryEmbeddingsCopyWith<GenerateQueryEmbeddings> get copyWith => _$GenerateQueryEmbeddingsCopyWithImpl<GenerateQueryEmbeddings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateQueryEmbeddings&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'SearchContentsEvents.generateQueryEmbeddings(query: $query)';
}


}

/// @nodoc
abstract mixin class $GenerateQueryEmbeddingsCopyWith<$Res> implements $SearchContentsEventsCopyWith<$Res> {
  factory $GenerateQueryEmbeddingsCopyWith(GenerateQueryEmbeddings value, $Res Function(GenerateQueryEmbeddings) _then) = _$GenerateQueryEmbeddingsCopyWithImpl;
@override @useResult
$Res call({
 String query
});




}
/// @nodoc
class _$GenerateQueryEmbeddingsCopyWithImpl<$Res>
    implements $GenerateQueryEmbeddingsCopyWith<$Res> {
  _$GenerateQueryEmbeddingsCopyWithImpl(this._self, this._then);

  final GenerateQueryEmbeddings _self;
  final $Res Function(GenerateQueryEmbeddings) _then;

/// Create a copy of SearchContentsEvents
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(GenerateQueryEmbeddings(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
