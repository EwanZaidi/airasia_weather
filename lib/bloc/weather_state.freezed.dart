// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'weather_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$WeatherStateTearOff {
  const _$WeatherStateTearOff();

  WeatherStateLoaded call(
      {WeatherResponse weather, List<WeatherResponse> weathers}) {
    return WeatherStateLoaded(
      weather: weather,
      weathers: weathers,
    );
  }

  WeatherTest test({WeatherResponse weather, List<WeatherResponse> weathers}) {
    return WeatherTest(
      weather: weather,
      weathers: weathers,
    );
  }

  WeatherFiveDays location(
      {WeatherResponse weather, List<WeatherResponse> weathers}) {
    return WeatherFiveDays(
      weather: weather,
      weathers: weathers,
    );
  }

  WeatherStateLoading loading({WeatherResponse weather}) {
    return WeatherStateLoading(
      weather: weather,
    );
  }

  WeatherStateError error({Exception error, WeatherResponse weather}) {
    return WeatherStateError(
      error: error,
      weather: weather,
    );
  }
}

// ignore: unused_element
const $WeatherState = _$WeatherStateTearOff();

mixin _$WeatherState {
  WeatherResponse get weather;

  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(WeatherResponse weather, List<WeatherResponse> weathers), {
    @required
        Result test(WeatherResponse weather, List<WeatherResponse> weathers),
    @required
        Result location(
            WeatherResponse weather, List<WeatherResponse> weathers),
    @required Result loading(WeatherResponse weather),
    @required Result error(Exception error, WeatherResponse weather),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(WeatherResponse weather, List<WeatherResponse> weathers), {
    Result test(WeatherResponse weather, List<WeatherResponse> weathers),
    Result location(WeatherResponse weather, List<WeatherResponse> weathers),
    Result loading(WeatherResponse weather),
    Result error(Exception error, WeatherResponse weather),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(WeatherStateLoaded value), {
    @required Result test(WeatherTest value),
    @required Result location(WeatherFiveDays value),
    @required Result loading(WeatherStateLoading value),
    @required Result error(WeatherStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(WeatherStateLoaded value), {
    Result test(WeatherTest value),
    Result location(WeatherFiveDays value),
    Result loading(WeatherStateLoading value),
    Result error(WeatherStateError value),
    @required Result orElse(),
  });

  $WeatherStateCopyWith<WeatherState> get copyWith;
}

abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
  $Res call({WeatherResponse weather});
}

class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;

  @override
  $Res call({
    Object weather = freezed,
  }) {
    return _then(_value.copyWith(
      weather: weather == freezed ? _value.weather : weather as WeatherResponse,
    ));
  }
}

abstract class $WeatherStateLoadedCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory $WeatherStateLoadedCopyWith(
          WeatherStateLoaded value, $Res Function(WeatherStateLoaded) then) =
      _$WeatherStateLoadedCopyWithImpl<$Res>;
  @override
  $Res call({WeatherResponse weather, List<WeatherResponse> weathers});
}

class _$WeatherStateLoadedCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements $WeatherStateLoadedCopyWith<$Res> {
  _$WeatherStateLoadedCopyWithImpl(
      WeatherStateLoaded _value, $Res Function(WeatherStateLoaded) _then)
      : super(_value, (v) => _then(v as WeatherStateLoaded));

  @override
  WeatherStateLoaded get _value => super._value as WeatherStateLoaded;

  @override
  $Res call({
    Object weather = freezed,
    Object weathers = freezed,
  }) {
    return _then(WeatherStateLoaded(
      weather: weather == freezed ? _value.weather : weather as WeatherResponse,
      weathers: weathers == freezed
          ? _value.weathers
          : weathers as List<WeatherResponse>,
    ));
  }
}

class _$WeatherStateLoaded implements WeatherStateLoaded {
  const _$WeatherStateLoaded({this.weather, this.weathers});

  @override
  final WeatherResponse weather;
  @override
  final List<WeatherResponse> weathers;

  @override
  String toString() {
    return 'WeatherState(weather: $weather, weathers: $weathers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WeatherStateLoaded &&
            (identical(other.weather, weather) ||
                const DeepCollectionEquality()
                    .equals(other.weather, weather)) &&
            (identical(other.weathers, weathers) ||
                const DeepCollectionEquality()
                    .equals(other.weathers, weathers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(weather) ^
      const DeepCollectionEquality().hash(weathers);

  @override
  $WeatherStateLoadedCopyWith<WeatherStateLoaded> get copyWith =>
      _$WeatherStateLoadedCopyWithImpl<WeatherStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(WeatherResponse weather, List<WeatherResponse> weathers), {
    @required
        Result test(WeatherResponse weather, List<WeatherResponse> weathers),
    @required
        Result location(
            WeatherResponse weather, List<WeatherResponse> weathers),
    @required Result loading(WeatherResponse weather),
    @required Result error(Exception error, WeatherResponse weather),
  }) {
    assert($default != null);
    assert(test != null);
    assert(location != null);
    assert(loading != null);
    assert(error != null);
    return $default(weather, weathers);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(WeatherResponse weather, List<WeatherResponse> weathers), {
    Result test(WeatherResponse weather, List<WeatherResponse> weathers),
    Result location(WeatherResponse weather, List<WeatherResponse> weathers),
    Result loading(WeatherResponse weather),
    Result error(Exception error, WeatherResponse weather),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(weather, weathers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(WeatherStateLoaded value), {
    @required Result test(WeatherTest value),
    @required Result location(WeatherFiveDays value),
    @required Result loading(WeatherStateLoading value),
    @required Result error(WeatherStateError value),
  }) {
    assert($default != null);
    assert(test != null);
    assert(location != null);
    assert(loading != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(WeatherStateLoaded value), {
    Result test(WeatherTest value),
    Result location(WeatherFiveDays value),
    Result loading(WeatherStateLoading value),
    Result error(WeatherStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class WeatherStateLoaded implements WeatherState {
  const factory WeatherStateLoaded(
      {WeatherResponse weather,
      List<WeatherResponse> weathers}) = _$WeatherStateLoaded;

  @override
  WeatherResponse get weather;
  List<WeatherResponse> get weathers;
  @override
  $WeatherStateLoadedCopyWith<WeatherStateLoaded> get copyWith;
}

abstract class $WeatherTestCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory $WeatherTestCopyWith(
          WeatherTest value, $Res Function(WeatherTest) then) =
      _$WeatherTestCopyWithImpl<$Res>;
  @override
  $Res call({WeatherResponse weather, List<WeatherResponse> weathers});
}

class _$WeatherTestCopyWithImpl<$Res> extends _$WeatherStateCopyWithImpl<$Res>
    implements $WeatherTestCopyWith<$Res> {
  _$WeatherTestCopyWithImpl(
      WeatherTest _value, $Res Function(WeatherTest) _then)
      : super(_value, (v) => _then(v as WeatherTest));

  @override
  WeatherTest get _value => super._value as WeatherTest;

  @override
  $Res call({
    Object weather = freezed,
    Object weathers = freezed,
  }) {
    return _then(WeatherTest(
      weather: weather == freezed ? _value.weather : weather as WeatherResponse,
      weathers: weathers == freezed
          ? _value.weathers
          : weathers as List<WeatherResponse>,
    ));
  }
}

class _$WeatherTest implements WeatherTest {
  const _$WeatherTest({this.weather, this.weathers});

  @override
  final WeatherResponse weather;
  @override
  final List<WeatherResponse> weathers;

  @override
  String toString() {
    return 'WeatherState.test(weather: $weather, weathers: $weathers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WeatherTest &&
            (identical(other.weather, weather) ||
                const DeepCollectionEquality()
                    .equals(other.weather, weather)) &&
            (identical(other.weathers, weathers) ||
                const DeepCollectionEquality()
                    .equals(other.weathers, weathers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(weather) ^
      const DeepCollectionEquality().hash(weathers);

  @override
  $WeatherTestCopyWith<WeatherTest> get copyWith =>
      _$WeatherTestCopyWithImpl<WeatherTest>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(WeatherResponse weather, List<WeatherResponse> weathers), {
    @required
        Result test(WeatherResponse weather, List<WeatherResponse> weathers),
    @required
        Result location(
            WeatherResponse weather, List<WeatherResponse> weathers),
    @required Result loading(WeatherResponse weather),
    @required Result error(Exception error, WeatherResponse weather),
  }) {
    assert($default != null);
    assert(test != null);
    assert(location != null);
    assert(loading != null);
    assert(error != null);
    return test(weather, weathers);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(WeatherResponse weather, List<WeatherResponse> weathers), {
    Result test(WeatherResponse weather, List<WeatherResponse> weathers),
    Result location(WeatherResponse weather, List<WeatherResponse> weathers),
    Result loading(WeatherResponse weather),
    Result error(Exception error, WeatherResponse weather),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (test != null) {
      return test(weather, weathers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(WeatherStateLoaded value), {
    @required Result test(WeatherTest value),
    @required Result location(WeatherFiveDays value),
    @required Result loading(WeatherStateLoading value),
    @required Result error(WeatherStateError value),
  }) {
    assert($default != null);
    assert(test != null);
    assert(location != null);
    assert(loading != null);
    assert(error != null);
    return test(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(WeatherStateLoaded value), {
    Result test(WeatherTest value),
    Result location(WeatherFiveDays value),
    Result loading(WeatherStateLoading value),
    Result error(WeatherStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (test != null) {
      return test(this);
    }
    return orElse();
  }
}

abstract class WeatherTest implements WeatherState {
  const factory WeatherTest(
      {WeatherResponse weather,
      List<WeatherResponse> weathers}) = _$WeatherTest;

  @override
  WeatherResponse get weather;
  List<WeatherResponse> get weathers;
  @override
  $WeatherTestCopyWith<WeatherTest> get copyWith;
}

abstract class $WeatherFiveDaysCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory $WeatherFiveDaysCopyWith(
          WeatherFiveDays value, $Res Function(WeatherFiveDays) then) =
      _$WeatherFiveDaysCopyWithImpl<$Res>;
  @override
  $Res call({WeatherResponse weather, List<WeatherResponse> weathers});
}

class _$WeatherFiveDaysCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements $WeatherFiveDaysCopyWith<$Res> {
  _$WeatherFiveDaysCopyWithImpl(
      WeatherFiveDays _value, $Res Function(WeatherFiveDays) _then)
      : super(_value, (v) => _then(v as WeatherFiveDays));

  @override
  WeatherFiveDays get _value => super._value as WeatherFiveDays;

  @override
  $Res call({
    Object weather = freezed,
    Object weathers = freezed,
  }) {
    return _then(WeatherFiveDays(
      weather: weather == freezed ? _value.weather : weather as WeatherResponse,
      weathers: weathers == freezed
          ? _value.weathers
          : weathers as List<WeatherResponse>,
    ));
  }
}

class _$WeatherFiveDays implements WeatherFiveDays {
  const _$WeatherFiveDays({this.weather, this.weathers});

  @override
  final WeatherResponse weather;
  @override
  final List<WeatherResponse> weathers;

  @override
  String toString() {
    return 'WeatherState.location(weather: $weather, weathers: $weathers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WeatherFiveDays &&
            (identical(other.weather, weather) ||
                const DeepCollectionEquality()
                    .equals(other.weather, weather)) &&
            (identical(other.weathers, weathers) ||
                const DeepCollectionEquality()
                    .equals(other.weathers, weathers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(weather) ^
      const DeepCollectionEquality().hash(weathers);

  @override
  $WeatherFiveDaysCopyWith<WeatherFiveDays> get copyWith =>
      _$WeatherFiveDaysCopyWithImpl<WeatherFiveDays>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(WeatherResponse weather, List<WeatherResponse> weathers), {
    @required
        Result test(WeatherResponse weather, List<WeatherResponse> weathers),
    @required
        Result location(
            WeatherResponse weather, List<WeatherResponse> weathers),
    @required Result loading(WeatherResponse weather),
    @required Result error(Exception error, WeatherResponse weather),
  }) {
    assert($default != null);
    assert(test != null);
    assert(location != null);
    assert(loading != null);
    assert(error != null);
    return location(weather, weathers);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(WeatherResponse weather, List<WeatherResponse> weathers), {
    Result test(WeatherResponse weather, List<WeatherResponse> weathers),
    Result location(WeatherResponse weather, List<WeatherResponse> weathers),
    Result loading(WeatherResponse weather),
    Result error(Exception error, WeatherResponse weather),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (location != null) {
      return location(weather, weathers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(WeatherStateLoaded value), {
    @required Result test(WeatherTest value),
    @required Result location(WeatherFiveDays value),
    @required Result loading(WeatherStateLoading value),
    @required Result error(WeatherStateError value),
  }) {
    assert($default != null);
    assert(test != null);
    assert(location != null);
    assert(loading != null);
    assert(error != null);
    return location(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(WeatherStateLoaded value), {
    Result test(WeatherTest value),
    Result location(WeatherFiveDays value),
    Result loading(WeatherStateLoading value),
    Result error(WeatherStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (location != null) {
      return location(this);
    }
    return orElse();
  }
}

abstract class WeatherFiveDays implements WeatherState {
  const factory WeatherFiveDays(
      {WeatherResponse weather,
      List<WeatherResponse> weathers}) = _$WeatherFiveDays;

  @override
  WeatherResponse get weather;
  List<WeatherResponse> get weathers;
  @override
  $WeatherFiveDaysCopyWith<WeatherFiveDays> get copyWith;
}

abstract class $WeatherStateLoadingCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory $WeatherStateLoadingCopyWith(
          WeatherStateLoading value, $Res Function(WeatherStateLoading) then) =
      _$WeatherStateLoadingCopyWithImpl<$Res>;
  @override
  $Res call({WeatherResponse weather});
}

class _$WeatherStateLoadingCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements $WeatherStateLoadingCopyWith<$Res> {
  _$WeatherStateLoadingCopyWithImpl(
      WeatherStateLoading _value, $Res Function(WeatherStateLoading) _then)
      : super(_value, (v) => _then(v as WeatherStateLoading));

  @override
  WeatherStateLoading get _value => super._value as WeatherStateLoading;

  @override
  $Res call({
    Object weather = freezed,
  }) {
    return _then(WeatherStateLoading(
      weather: weather == freezed ? _value.weather : weather as WeatherResponse,
    ));
  }
}

class _$WeatherStateLoading implements WeatherStateLoading {
  const _$WeatherStateLoading({this.weather});

  @override
  final WeatherResponse weather;

  @override
  String toString() {
    return 'WeatherState.loading(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WeatherStateLoading &&
            (identical(other.weather, weather) ||
                const DeepCollectionEquality().equals(other.weather, weather)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(weather);

  @override
  $WeatherStateLoadingCopyWith<WeatherStateLoading> get copyWith =>
      _$WeatherStateLoadingCopyWithImpl<WeatherStateLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(WeatherResponse weather, List<WeatherResponse> weathers), {
    @required
        Result test(WeatherResponse weather, List<WeatherResponse> weathers),
    @required
        Result location(
            WeatherResponse weather, List<WeatherResponse> weathers),
    @required Result loading(WeatherResponse weather),
    @required Result error(Exception error, WeatherResponse weather),
  }) {
    assert($default != null);
    assert(test != null);
    assert(location != null);
    assert(loading != null);
    assert(error != null);
    return loading(weather);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(WeatherResponse weather, List<WeatherResponse> weathers), {
    Result test(WeatherResponse weather, List<WeatherResponse> weathers),
    Result location(WeatherResponse weather, List<WeatherResponse> weathers),
    Result loading(WeatherResponse weather),
    Result error(Exception error, WeatherResponse weather),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(WeatherStateLoaded value), {
    @required Result test(WeatherTest value),
    @required Result location(WeatherFiveDays value),
    @required Result loading(WeatherStateLoading value),
    @required Result error(WeatherStateError value),
  }) {
    assert($default != null);
    assert(test != null);
    assert(location != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(WeatherStateLoaded value), {
    Result test(WeatherTest value),
    Result location(WeatherFiveDays value),
    Result loading(WeatherStateLoading value),
    Result error(WeatherStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WeatherStateLoading implements WeatherState {
  const factory WeatherStateLoading({WeatherResponse weather}) =
      _$WeatherStateLoading;

  @override
  WeatherResponse get weather;
  @override
  $WeatherStateLoadingCopyWith<WeatherStateLoading> get copyWith;
}

abstract class $WeatherStateErrorCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory $WeatherStateErrorCopyWith(
          WeatherStateError value, $Res Function(WeatherStateError) then) =
      _$WeatherStateErrorCopyWithImpl<$Res>;
  @override
  $Res call({Exception error, WeatherResponse weather});
}

class _$WeatherStateErrorCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements $WeatherStateErrorCopyWith<$Res> {
  _$WeatherStateErrorCopyWithImpl(
      WeatherStateError _value, $Res Function(WeatherStateError) _then)
      : super(_value, (v) => _then(v as WeatherStateError));

  @override
  WeatherStateError get _value => super._value as WeatherStateError;

  @override
  $Res call({
    Object error = freezed,
    Object weather = freezed,
  }) {
    return _then(WeatherStateError(
      error: error == freezed ? _value.error : error as Exception,
      weather: weather == freezed ? _value.weather : weather as WeatherResponse,
    ));
  }
}

class _$WeatherStateError implements WeatherStateError {
  const _$WeatherStateError({this.error, this.weather});

  @override
  final Exception error;
  @override
  final WeatherResponse weather;

  @override
  String toString() {
    return 'WeatherState.error(error: $error, weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WeatherStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.weather, weather) ||
                const DeepCollectionEquality().equals(other.weather, weather)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(weather);

  @override
  $WeatherStateErrorCopyWith<WeatherStateError> get copyWith =>
      _$WeatherStateErrorCopyWithImpl<WeatherStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(WeatherResponse weather, List<WeatherResponse> weathers), {
    @required
        Result test(WeatherResponse weather, List<WeatherResponse> weathers),
    @required
        Result location(
            WeatherResponse weather, List<WeatherResponse> weathers),
    @required Result loading(WeatherResponse weather),
    @required Result error(Exception error, WeatherResponse weather),
  }) {
    assert($default != null);
    assert(test != null);
    assert(location != null);
    assert(loading != null);
    assert(error != null);
    return error(this.error, weather);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(WeatherResponse weather, List<WeatherResponse> weathers), {
    Result test(WeatherResponse weather, List<WeatherResponse> weathers),
    Result location(WeatherResponse weather, List<WeatherResponse> weathers),
    Result loading(WeatherResponse weather),
    Result error(Exception error, WeatherResponse weather),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error, weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(WeatherStateLoaded value), {
    @required Result test(WeatherTest value),
    @required Result location(WeatherFiveDays value),
    @required Result loading(WeatherStateLoading value),
    @required Result error(WeatherStateError value),
  }) {
    assert($default != null);
    assert(test != null);
    assert(location != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(WeatherStateLoaded value), {
    Result test(WeatherTest value),
    Result location(WeatherFiveDays value),
    Result loading(WeatherStateLoading value),
    Result error(WeatherStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class WeatherStateError implements WeatherState {
  const factory WeatherStateError({Exception error, WeatherResponse weather}) =
      _$WeatherStateError;

  Exception get error;
  @override
  WeatherResponse get weather;
  @override
  $WeatherStateErrorCopyWith<WeatherStateError> get copyWith;
}
