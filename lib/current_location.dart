import 'package:airasia_weather/bloc/weather_bloc.dart';
import 'package:airasia_weather/bloc/weather_event.dart';
import 'package:airasia_weather/bloc/weather_state.dart';
import 'package:airasia_weather/models/response/weather_response.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';

class CurrentLocationScreen extends StatefulWidget {
  @override
  _CurrentLocationScreenState createState() => _CurrentLocationScreenState();
}

class _CurrentLocationScreenState extends State<CurrentLocationScreen> {
  Location location = new Location();
  bool _serviceEnabled;
  PermissionStatus _permissionGranted;
  LocationData _locationData;

  WeatherBloc _weatherBloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _weatherBloc = BlocProvider.of<WeatherBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Current Location Weather"),
        actions: [
          InkWell(
            onTap: getLocation,
            child: Icon(
              Icons.location_searching,
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          var test;
          var newList = [];
          if (state is WeatherFiveDays) {
            test = groupBy(state.weathers,
                (WeatherResponse obj) => obj.dtTxt.split(" ")[0]);
            newList = test.entries
                .map((entry) =>
                    GroupByDate(date: entry.key, weathers: entry.value))
                .toList();
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, int index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("${newList[index].date}"),
                      Image.network(
                          "http://openweathermap.org/img/wn/${newList[index].weathers[0].weathers[0].icon}@2x.png"),
                      Text("${newList[index].weathers[0].main.temp} \u2103"),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "${newList[index].weathers[0].main.tempMin} \u2103"),
                          Text(
                              "${newList[index].weathers[0].main.tempMax} \u2103")
                        ],
                      )
                    ],
                  );
                },
              ),
            );
          }
          return Container();
        },
      ),
    );
  }

  getLocation() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();

    _weatherBloc.add(
      GetWeatherUsingLocation(
        lat: _locationData.latitude.toString(),
        lng: _locationData.longitude.toString(),
      ),
    );
  }
}

class GroupByDate {
  String date;
  List<WeatherResponse> weathers;

  GroupByDate({this.date, this.weathers});
}
