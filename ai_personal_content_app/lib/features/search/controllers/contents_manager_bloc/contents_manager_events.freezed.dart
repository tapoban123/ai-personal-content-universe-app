// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contents_manager_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ContentsManagerEvents {

 FilterAndSortOptions? get filterAndSortOptions;
/// Create a copy of ContentsManagerEvents
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContentsManagerEventsCopyWith<ContentsManagerEvents> get copyWith => _$ContentsManagerEventsCopyWithImpl<ContentsManagerEvents>(this as ContentsManagerEvents, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContentsManagerEvents&&(identical(other.filterAndSortOptions, filterAndSortOptions) || other.filterAndSortOptions == filterAndSortOptions));
}


@override
int get hashCode => Object.hash(runtimeType,filterAndSortOptions);

@override
String toString() {
  return 'ContentsManagerEvents(filterAndSortOptions: $filterAndSortOptions)';
}


}

/// @nodoc
abstract mixin class $ContentsManagerEventsCopyWith<$Res>  {
  factory $ContentsManagerEventsCopyWith(ContentsManagerEvents value, $Res Function(ContentsManagerEvents) _then) = _$ContentsManagerEventsCopyWithImpl;
@useResult
$Res call({
 FilterAndSortOptions? filterAndSortOptions
});




}
/// @nodoc
class _$ContentsManagerEventsCopyWithImpl<$Res>
    implements $ContentsManagerEventsCopyWith<$Res> {
  _$ContentsManagerEventsCopyWithImpl(this._self, this._then);

  final ContentsManagerEvents _self;
  final $Res Function(ContentsManagerEvents) _then;

/// Create a copy of ContentsManagerEvents
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filterAndSortOptions = freezed,}) {
  return _then(_self.copyWith(
filterAndSortOptions: freezed == filterAndSortOptions ? _self.filterAndSortOptions : filterAndSortOptions // ignore: cast_nullable_to_non_nullable
as FilterAndSortOptions?,
  ));
}

}


/// Adds pattern-matching-related methods to [ContentsManagerEvents].
extension ContentsManagerEventsPatterns on ContentsManagerEvents {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchAllContents value)?  fetchAllContents,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchAllContents() when fetchAllContents != null:
return fetchAllContents(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchAllContents value)  fetchAllContents,}){
final _that = this;
switch (_that) {
case FetchAllContents():
return fetchAllContents(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchAllContents value)?  fetchAllContents,}){
final _that = this;
switch (_that) {
case FetchAllContents() when fetchAllContents != null:
return fetchAllContents(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( FilterAndSortOptions? filterAndSortOptions)?  fetchAllContents,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchAllContents() when fetchAllContents != null:
return fetchAllContents(_that.filterAndSortOptions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( FilterAndSortOptions? filterAndSortOptions)  fetchAllContents,}) {final _that = this;
switch (_that) {
case FetchAllContents():
return fetchAllContents(_that.filterAndSortOptions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( FilterAndSortOptions? filterAndSortOptions)?  fetchAllContents,}) {final _that = this;
switch (_that) {
case FetchAllContents() when fetchAllContents != null:
return fetchAllContents(_that.filterAndSortOptions);case _:
  return null;

}
}

}

/// @nodoc


class FetchAllContents implements ContentsManagerEvents {
   FetchAllContents({this.filterAndSortOptions});
  

@override final  FilterAndSortOptions? filterAndSortOptions;

/// Create a copy of ContentsManagerEvents
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchAllContentsCopyWith<FetchAllContents> get copyWith => _$FetchAllContentsCopyWithImpl<FetchAllContents>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchAllContents&&(identical(other.filterAndSortOptions, filterAndSortOptions) || other.filterAndSortOptions == filterAndSortOptions));
}


@override
int get hashCode => Object.hash(runtimeType,filterAndSortOptions);

@override
String toString() {
  return 'ContentsManagerEvents.fetchAllContents(filterAndSortOptions: $filterAndSortOptions)';
}


}

/// @nodoc
abstract mixin class $FetchAllContentsCopyWith<$Res> implements $ContentsManagerEventsCopyWith<$Res> {
  factory $FetchAllContentsCopyWith(FetchAllContents value, $Res Function(FetchAllContents) _then) = _$FetchAllContentsCopyWithImpl;
@override @useResult
$Res call({
 FilterAndSortOptions? filterAndSortOptions
});




}
/// @nodoc
class _$FetchAllContentsCopyWithImpl<$Res>
    implements $FetchAllContentsCopyWith<$Res> {
  _$FetchAllContentsCopyWithImpl(this._self, this._then);

  final FetchAllContents _self;
  final $Res Function(FetchAllContents) _then;

/// Create a copy of ContentsManagerEvents
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? filterAndSortOptions = freezed,}) {
  return _then(FetchAllContents(
filterAndSortOptions: freezed == filterAndSortOptions ? _self.filterAndSortOptions : filterAndSortOptions // ignore: cast_nullable_to_non_nullable
as FilterAndSortOptions?,
  ));
}


}

// dart format on
