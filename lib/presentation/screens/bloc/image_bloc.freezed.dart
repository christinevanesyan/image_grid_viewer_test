// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImageEvent {
  Size get screenSize => throw _privateConstructorUsedError;
  String? get continuationToken => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Size screenSize, String? continuationToken)
        fetchImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Size screenSize, String? continuationToken)? fetchImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Size screenSize, String? continuationToken)? fetchImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchImagesEvent value) fetchImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchImagesEvent value)? fetchImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchImagesEvent value)? fetchImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ImageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageEventCopyWith<ImageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageEventCopyWith<$Res> {
  factory $ImageEventCopyWith(
          ImageEvent value, $Res Function(ImageEvent) then) =
      _$ImageEventCopyWithImpl<$Res, ImageEvent>;
  @useResult
  $Res call({Size screenSize, String? continuationToken});
}

/// @nodoc
class _$ImageEventCopyWithImpl<$Res, $Val extends ImageEvent>
    implements $ImageEventCopyWith<$Res> {
  _$ImageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenSize = null,
    Object? continuationToken = freezed,
  }) {
    return _then(_value.copyWith(
      screenSize: null == screenSize
          ? _value.screenSize
          : screenSize // ignore: cast_nullable_to_non_nullable
              as Size,
      continuationToken: freezed == continuationToken
          ? _value.continuationToken
          : continuationToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchImagesEventImplCopyWith<$Res>
    implements $ImageEventCopyWith<$Res> {
  factory _$$FetchImagesEventImplCopyWith(_$FetchImagesEventImpl value,
          $Res Function(_$FetchImagesEventImpl) then) =
      __$$FetchImagesEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Size screenSize, String? continuationToken});
}

/// @nodoc
class __$$FetchImagesEventImplCopyWithImpl<$Res>
    extends _$ImageEventCopyWithImpl<$Res, _$FetchImagesEventImpl>
    implements _$$FetchImagesEventImplCopyWith<$Res> {
  __$$FetchImagesEventImplCopyWithImpl(_$FetchImagesEventImpl _value,
      $Res Function(_$FetchImagesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screenSize = null,
    Object? continuationToken = freezed,
  }) {
    return _then(_$FetchImagesEventImpl(
      screenSize: null == screenSize
          ? _value.screenSize
          : screenSize // ignore: cast_nullable_to_non_nullable
              as Size,
      continuationToken: freezed == continuationToken
          ? _value.continuationToken
          : continuationToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchImagesEventImpl implements FetchImagesEvent {
  const _$FetchImagesEventImpl(
      {required this.screenSize, this.continuationToken});

  @override
  final Size screenSize;
  @override
  final String? continuationToken;

  @override
  String toString() {
    return 'ImageEvent.fetchImages(screenSize: $screenSize, continuationToken: $continuationToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchImagesEventImpl &&
            (identical(other.screenSize, screenSize) ||
                other.screenSize == screenSize) &&
            (identical(other.continuationToken, continuationToken) ||
                other.continuationToken == continuationToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, screenSize, continuationToken);

  /// Create a copy of ImageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchImagesEventImplCopyWith<_$FetchImagesEventImpl> get copyWith =>
      __$$FetchImagesEventImplCopyWithImpl<_$FetchImagesEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Size screenSize, String? continuationToken)
        fetchImages,
  }) {
    return fetchImages(screenSize, continuationToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Size screenSize, String? continuationToken)? fetchImages,
  }) {
    return fetchImages?.call(screenSize, continuationToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Size screenSize, String? continuationToken)? fetchImages,
    required TResult orElse(),
  }) {
    if (fetchImages != null) {
      return fetchImages(screenSize, continuationToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchImagesEvent value) fetchImages,
  }) {
    return fetchImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchImagesEvent value)? fetchImages,
  }) {
    return fetchImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchImagesEvent value)? fetchImages,
    required TResult orElse(),
  }) {
    if (fetchImages != null) {
      return fetchImages(this);
    }
    return orElse();
  }
}

abstract class FetchImagesEvent implements ImageEvent {
  const factory FetchImagesEvent(
      {required final Size screenSize,
      final String? continuationToken}) = _$FetchImagesEventImpl;

  @override
  Size get screenSize;
  @override
  String? get continuationToken;

  /// Create a copy of ImageEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchImagesEventImplCopyWith<_$FetchImagesEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ImageState {
  List<ImageViewModel>? get imagesList => throw _privateConstructorUsedError;
  List<ImageVariant>? get imageVariantList =>
      throw _privateConstructorUsedError;
  String? get continuationToken => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  ImageStateStatus get status => throw _privateConstructorUsedError;

  /// Create a copy of ImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageStateCopyWith<ImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageStateCopyWith<$Res> {
  factory $ImageStateCopyWith(
          ImageState value, $Res Function(ImageState) then) =
      _$ImageStateCopyWithImpl<$Res, ImageState>;
  @useResult
  $Res call(
      {List<ImageViewModel>? imagesList,
      List<ImageVariant>? imageVariantList,
      String? continuationToken,
      String? errorMessage,
      ImageStateStatus status});
}

/// @nodoc
class _$ImageStateCopyWithImpl<$Res, $Val extends ImageState>
    implements $ImageStateCopyWith<$Res> {
  _$ImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagesList = freezed,
    Object? imageVariantList = freezed,
    Object? continuationToken = freezed,
    Object? errorMessage = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      imagesList: freezed == imagesList
          ? _value.imagesList
          : imagesList // ignore: cast_nullable_to_non_nullable
              as List<ImageViewModel>?,
      imageVariantList: freezed == imageVariantList
          ? _value.imageVariantList
          : imageVariantList // ignore: cast_nullable_to_non_nullable
              as List<ImageVariant>?,
      continuationToken: freezed == continuationToken
          ? _value.continuationToken
          : continuationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ImageStateStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageStateImplCopyWith<$Res>
    implements $ImageStateCopyWith<$Res> {
  factory _$$ImageStateImplCopyWith(
          _$ImageStateImpl value, $Res Function(_$ImageStateImpl) then) =
      __$$ImageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ImageViewModel>? imagesList,
      List<ImageVariant>? imageVariantList,
      String? continuationToken,
      String? errorMessage,
      ImageStateStatus status});
}

/// @nodoc
class __$$ImageStateImplCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$ImageStateImpl>
    implements _$$ImageStateImplCopyWith<$Res> {
  __$$ImageStateImplCopyWithImpl(
      _$ImageStateImpl _value, $Res Function(_$ImageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagesList = freezed,
    Object? imageVariantList = freezed,
    Object? continuationToken = freezed,
    Object? errorMessage = freezed,
    Object? status = null,
  }) {
    return _then(_$ImageStateImpl(
      imagesList: freezed == imagesList
          ? _value._imagesList
          : imagesList // ignore: cast_nullable_to_non_nullable
              as List<ImageViewModel>?,
      imageVariantList: freezed == imageVariantList
          ? _value._imageVariantList
          : imageVariantList // ignore: cast_nullable_to_non_nullable
              as List<ImageVariant>?,
      continuationToken: freezed == continuationToken
          ? _value.continuationToken
          : continuationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ImageStateStatus,
    ));
  }
}

/// @nodoc

class _$ImageStateImpl implements _ImageState {
  const _$ImageStateImpl(
      {final List<ImageViewModel>? imagesList = null,
      final List<ImageVariant>? imageVariantList = null,
      this.continuationToken = null,
      this.errorMessage = null,
      this.status = ImageStateStatus.initial})
      : _imagesList = imagesList,
        _imageVariantList = imageVariantList;

  final List<ImageViewModel>? _imagesList;
  @override
  @JsonKey()
  List<ImageViewModel>? get imagesList {
    final value = _imagesList;
    if (value == null) return null;
    if (_imagesList is EqualUnmodifiableListView) return _imagesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ImageVariant>? _imageVariantList;
  @override
  @JsonKey()
  List<ImageVariant>? get imageVariantList {
    final value = _imageVariantList;
    if (value == null) return null;
    if (_imageVariantList is EqualUnmodifiableListView)
      return _imageVariantList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final String? continuationToken;
  @override
  @JsonKey()
  final String? errorMessage;
  @override
  @JsonKey()
  final ImageStateStatus status;

  @override
  String toString() {
    return 'ImageState(imagesList: $imagesList, imageVariantList: $imageVariantList, continuationToken: $continuationToken, errorMessage: $errorMessage, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageStateImpl &&
            const DeepCollectionEquality()
                .equals(other._imagesList, _imagesList) &&
            const DeepCollectionEquality()
                .equals(other._imageVariantList, _imageVariantList) &&
            (identical(other.continuationToken, continuationToken) ||
                other.continuationToken == continuationToken) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_imagesList),
      const DeepCollectionEquality().hash(_imageVariantList),
      continuationToken,
      errorMessage,
      status);

  /// Create a copy of ImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageStateImplCopyWith<_$ImageStateImpl> get copyWith =>
      __$$ImageStateImplCopyWithImpl<_$ImageStateImpl>(this, _$identity);
}

abstract class _ImageState implements ImageState {
  const factory _ImageState(
      {final List<ImageViewModel>? imagesList,
      final List<ImageVariant>? imageVariantList,
      final String? continuationToken,
      final String? errorMessage,
      final ImageStateStatus status}) = _$ImageStateImpl;

  @override
  List<ImageViewModel>? get imagesList;
  @override
  List<ImageVariant>? get imageVariantList;
  @override
  String? get continuationToken;
  @override
  String? get errorMessage;
  @override
  ImageStateStatus get status;

  /// Create a copy of ImageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageStateImplCopyWith<_$ImageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
