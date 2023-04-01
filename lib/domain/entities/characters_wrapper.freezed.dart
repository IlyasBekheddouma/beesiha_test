// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characters_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharactersWrapper _$CharactersWrapperFromJson(Map<String, dynamic> json) {
  return _CharactersWrapper.fromJson(json);
}

/// @nodoc
mixin _$CharactersWrapper {
  PaginatedCharacters get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharactersWrapperCopyWith<CharactersWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersWrapperCopyWith<$Res> {
  factory $CharactersWrapperCopyWith(
          CharactersWrapper value, $Res Function(CharactersWrapper) then) =
      _$CharactersWrapperCopyWithImpl<$Res, CharactersWrapper>;
  @useResult
  $Res call({PaginatedCharacters data});

  $PaginatedCharactersCopyWith<$Res> get data;
}

/// @nodoc
class _$CharactersWrapperCopyWithImpl<$Res, $Val extends CharactersWrapper>
    implements $CharactersWrapperCopyWith<$Res> {
  _$CharactersWrapperCopyWithImpl(this._value, this._then);

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
              as PaginatedCharacters,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatedCharactersCopyWith<$Res> get data {
    return $PaginatedCharactersCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CharactersWrapperCopyWith<$Res>
    implements $CharactersWrapperCopyWith<$Res> {
  factory _$$_CharactersWrapperCopyWith(_$_CharactersWrapper value,
          $Res Function(_$_CharactersWrapper) then) =
      __$$_CharactersWrapperCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaginatedCharacters data});

  @override
  $PaginatedCharactersCopyWith<$Res> get data;
}

/// @nodoc
class __$$_CharactersWrapperCopyWithImpl<$Res>
    extends _$CharactersWrapperCopyWithImpl<$Res, _$_CharactersWrapper>
    implements _$$_CharactersWrapperCopyWith<$Res> {
  __$$_CharactersWrapperCopyWithImpl(
      _$_CharactersWrapper _value, $Res Function(_$_CharactersWrapper) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_CharactersWrapper(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaginatedCharacters,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharactersWrapper extends _CharactersWrapper {
  _$_CharactersWrapper({required this.data}) : super._();

  factory _$_CharactersWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_CharactersWrapperFromJson(json);

  @override
  final PaginatedCharacters data;

  @override
  String toString() {
    return 'CharactersWrapper(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharactersWrapper &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharactersWrapperCopyWith<_$_CharactersWrapper> get copyWith =>
      __$$_CharactersWrapperCopyWithImpl<_$_CharactersWrapper>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharactersWrapperToJson(
      this,
    );
  }
}

abstract class _CharactersWrapper extends CharactersWrapper {
  factory _CharactersWrapper({required final PaginatedCharacters data}) =
      _$_CharactersWrapper;
  _CharactersWrapper._() : super._();

  factory _CharactersWrapper.fromJson(Map<String, dynamic> json) =
      _$_CharactersWrapper.fromJson;

  @override
  PaginatedCharacters get data;
  @override
  @JsonKey(ignore: true)
  _$$_CharactersWrapperCopyWith<_$_CharactersWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginatedCharacters _$PaginatedCharactersFromJson(Map<String, dynamic> json) {
  return _PaginatedCharacters.fromJson(json);
}

/// @nodoc
mixin _$PaginatedCharacters {
  List<Character> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedCharactersCopyWith<PaginatedCharacters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedCharactersCopyWith<$Res> {
  factory $PaginatedCharactersCopyWith(
          PaginatedCharacters value, $Res Function(PaginatedCharacters) then) =
      _$PaginatedCharactersCopyWithImpl<$Res, PaginatedCharacters>;
  @useResult
  $Res call({List<Character> results});
}

/// @nodoc
class _$PaginatedCharactersCopyWithImpl<$Res, $Val extends PaginatedCharacters>
    implements $PaginatedCharactersCopyWith<$Res> {
  _$PaginatedCharactersCopyWithImpl(this._value, this._then);

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
              as List<Character>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginatedCharactersCopyWith<$Res>
    implements $PaginatedCharactersCopyWith<$Res> {
  factory _$$_PaginatedCharactersCopyWith(_$_PaginatedCharacters value,
          $Res Function(_$_PaginatedCharacters) then) =
      __$$_PaginatedCharactersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Character> results});
}

/// @nodoc
class __$$_PaginatedCharactersCopyWithImpl<$Res>
    extends _$PaginatedCharactersCopyWithImpl<$Res, _$_PaginatedCharacters>
    implements _$$_PaginatedCharactersCopyWith<$Res> {
  __$$_PaginatedCharactersCopyWithImpl(_$_PaginatedCharacters _value,
      $Res Function(_$_PaginatedCharacters) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$_PaginatedCharacters(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginatedCharacters extends _PaginatedCharacters {
  const _$_PaginatedCharacters({required final List<Character> results})
      : _results = results,
        super._();

  factory _$_PaginatedCharacters.fromJson(Map<String, dynamic> json) =>
      _$$_PaginatedCharactersFromJson(json);

  final List<Character> _results;
  @override
  List<Character> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PaginatedCharacters(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginatedCharacters &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginatedCharactersCopyWith<_$_PaginatedCharacters> get copyWith =>
      __$$_PaginatedCharactersCopyWithImpl<_$_PaginatedCharacters>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginatedCharactersToJson(
      this,
    );
  }
}

abstract class _PaginatedCharacters extends PaginatedCharacters {
  const factory _PaginatedCharacters({required final List<Character> results}) =
      _$_PaginatedCharacters;
  const _PaginatedCharacters._() : super._();

  factory _PaginatedCharacters.fromJson(Map<String, dynamic> json) =
      _$_PaginatedCharacters.fromJson;

  @override
  List<Character> get results;
  @override
  @JsonKey(ignore: true)
  _$$_PaginatedCharactersCopyWith<_$_PaginatedCharacters> get copyWith =>
      throw _privateConstructorUsedError;
}
