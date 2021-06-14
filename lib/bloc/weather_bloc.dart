import 'package:airasia_weather/bloc/weather_event.dart';
import 'package:airasia_weather/bloc/weather_state.dart';
import 'package:airasia_weather/models/response/weather_list_response.dart';
import 'package:airasia_weather/models/response/weather_response.dart';
import 'package:airasia_weather/repository/weather_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherRepository _weatherRepository;

  WeatherBloc({@required WeatherRepository weatherRepository})
      : assert(weatherRepository != null),
        _weatherRepository = weatherRepository,
        super(null) {
    add(GetWeather());
  }

  @override
  WeatherState get initialState => WeatherState.loading();

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    // TODO: implement mapEventToState
    if (event is GetWeather) {
      String city;
      yield WeatherStateLoading();
      try {
        if (event.city == null) {
          city = "Kuala Lumpur";
        } else {
          city = event.city;
        }

        var response = await _weatherRepository.getCurrentWeather(city);
        if (response is WeatherResponse) {
          yield WeatherState(
            weather: response,
          );
        }
      } catch (error) {
        yield WeatherStateError(weather: state.weather, error: error);
      }
    } else if (event is GetWeatherUsingLocation) {
      yield WeatherStateLoading();
      try {
        var response =
            await _weatherRepository.getWeatherByLocation(event.lat, event.lng);
        if (response is WeatherListResponse) {
          yield WeatherFiveDays(
            weather: state.weather,
            weathers: response.list,
          );
        }
      } catch (error) {
        yield WeatherStateError(weather: state.weather, error: error);
      }
    } else if (event is GetWeatherList) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      List<String> cities = ["Kuala Lumpur", "Kota Kinabalu", "Labuan"];
      List<WeatherResponse> weathers = new List<WeatherResponse>();
      yield WeatherStateLoading();
      try {
        if (prefs.getStringList("cities") != null && prefs.getStringList("cities").length > 0) {
          prefs.getStringList("cities").forEach((element) {
            cities.add(element);
          });
        }

        for (var city in cities) {
          var response = await _weatherRepository.getCurrentWeather(city);
          if (response is WeatherResponse) {
            weathers.add(response);
          }
        }

        yield WeatherTest(weather: weathers[0], weathers: weathers);
      } catch (error) {
        yield WeatherStateError(weather: state.weather, error: error);
      }
    }
  }

  Future<List<WeatherResponse>> getList(List<String> cities) async {
    List<WeatherResponse> weathers = [];
    for (var city in cities) {
      var response = await _weatherRepository.getCurrentWeather(city);
      if (response is WeatherResponse) {
        weathers.add(response);
      }
    }

    return weathers;
  }
}
