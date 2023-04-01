// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comics_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComicsWrapper _$ComicsWrapperFromJson(Map<String, dynamic> json) {
  return _ComicsWrapper.fromJson(json);
}

/// @nodoc
mixin _$ComicsWrapper {
  PaginatedComics get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicsWrapperCopyWith<ComicsWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicsWrapperCopyWith<$Res> {
  factory $ComicsWrapperCopyWith(
          ComicsWrapper value, $Res Function(ComicsWrapper) then) =
      _$ComicsWrapperCopyWithImpl<$Res, ComicsWrapper>;
  @useResult
  $Res call({PaginatedComics data});

  $PaginatedComicsCopyWith<$Res> get data;
}

/// @nodoc
class _$ComicsWrapperCopyWithImpl<$Res, $Val extends ComicsWrapper>
    implements $ComicsWrapperCopyWith<$Res> {
  _$ComicsWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaginatedComics,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatedComicsCopyWith<$Res> get data {
    return $PaginatedComicsCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ComicsWrapperCopyWith<$Res>
    implements $ComicsWrapperCopyWith<$Res> {
  factory _$$_ComicsWrapperCopyWith(
          _$_ComicsWrapper value, $Res Function(_$_ComicsWrapper) then) =
      __$$_ComicsWrapperCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaginatedComics data});

  @override
  $PaginatedComicsCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ComicsWrapperCopyWithImpl<$Res>
    extends _$ComicsWrapperCopyWithImpl<$Res, _$_ComicsWrapper>
    implements _$$_ComicsWrapperCopyWith<$Res> {
  __$$_ComicsWrapperCopyWithImpl(
      _$_ComicsWrapper _value, $Res Function(_$_ComicsWrapper) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ComicsWrapper(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaginatedComics,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComicsWrapper extends _ComicsWrapper {
  _$_ComicsWrapper({required this.data}) : super._();

  factory _$_ComicsWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_ComicsWrapperFromJson(json);

  @override
  final PaginatedComics data;

  @override
  String toString() {
    return 'ComicsWrapper(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicsWrapper &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComicsWrapperCopyWith<_$_ComicsWrapper> get copyWith =>
      __$$_ComicsWrapperCopyWithImpl<_$_ComicsWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComicsWrapperToJson(
      this,
    );
  }
}

abstract class _ComicsWrapper extends ComicsWrapper {
  factory _ComicsWrapper({required final PaginatedComics data}) =
      _$_ComicsWrapper;
  _ComicsWrapper._() : super._();

  factory _ComicsWrapper.fromJson(Map<String, dynamic> json) =
      _$_ComicsWrapper.fromJson;

  @override
  PaginatedComics get data;
  @override
  @JsonKey(ignore: true)
  _$$_ComicsWrapperCopyWith<_$_ComicsWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginatedComics _$PaginatedComicsFromJson(Map<String, dynamic> json) {
  return _PaginatedComics.fromJson(json);
}

/// @nodoc
mixin _$PaginatedComics {
  List<Comic> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedComicsCopyWith<PaginatedComics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedComicsCopyWith<$Res> {
  factory $PaginatedComicsCopyWith(
          PaginatedComics value, $Res Function(PaginatedComics) then) =
      _$PaginatedComicsCopyWithImpl<$Res, PaginatedComics>;
  @useResult
  $Res call({List<Comic> results});
}

/// @nodoc
class _$PaginatedComicsCopyWithImpl<$Res, $Val extends PaginatedComics>
    implements $PaginatedComicsCopyWith<$Res> {
  _$PaginatedComicsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Comic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginatedComicsCopyWith<$Res>
    implements $PaginatedComicsCopyWith<$Res> {
  factory _$$_PaginatedComicsCopyWith(
          _$_PaginatedComics value, $Res Function(_$_PaginatedComics) then) =
      __$$_PaginatedComicsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Comic> results});
}

/// @nodoc
class __$$_PaginatedComicsCopyWithImpl<$Res>
    extends _$PaginatedComicsCopyWithImpl<$Res, _$_PaginatedComics>
    implements _$$_PaginatedComicsCopyWith<$Res> {
  __$$_PaginatedComicsCopyWithImpl(
      _$_PaginatedComics _value, $Res Function(_$_PaginatedComics) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$_PaginatedComics(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Comic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginatedComics extends _PaginatedComics {
  const _$_PaginatedComics({required final List<Comic> results})
      : _results = results,
        super._();

  factory _$_PaginatedComics.fromJson(Map<String, dynamic> json) =>
      _$$_PaginatedComicsFromJson(json);

  final List<Comic> _results;
  @override
  List<Comic> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PaginatedComics(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginatedComics &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginatedComicsCopyWith<_$_PaginatedComics> get copyWith =>
      __$$_PaginatedComicsCopyWithImpl<_$_PaginatedComics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginatedComicsToJson(
      this,
    );
  }
}

abstract class _PaginatedComics extends PaginatedComics {
  const factory _PaginatedComics({required final List<Comic> results}) =
      _$_PaginatedComics;
  const _PaginatedComics._() : super._();

  factory _PaginatedComics.fromJson(Map<String, dynamic> json) =
      _$_PaginatedComics.fromJson;

  @override
  List<Comic> get results;
  @override
  @JsonKey(ignore: true)
  _$$_PaginatedComicsCopyWith<_$_PaginatedComics> get copyWith =>
      throw _privateConstructorUsedError;
}
