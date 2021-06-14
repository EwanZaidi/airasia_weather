import 'package:airasia_weather/models/response/weather_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_state.freezed.dart';

@freezed
abstract class WeatherState with _$WeatherState {

  const factory WeatherState({
    WeatherResponse weather,
    List<WeatherResponse> weathers
  }) = WeatherStateLoaded;

  const factory WeatherState.test({
    WeatherResponse weather,
    List<WeatherResponse> weathers
  }) = WeatherTest;

  const factory WeatherState.location({
    WeatherResponse weather,
    List<WeatherResponse> weathers
  }) = WeatherFiveDays;

  const factory WeatherState.loading({
   WeatherResponse weather
  }) = WeatherStateLoading;

  const factory WeatherState.error({
    Exception error,
    WeatherResponse weather
  }) = WeatherStateError;
}
