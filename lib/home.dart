import 'package:airasia_weather/bloc/weather_bloc.dart';
import 'package:airasia_weather/bloc/weather_event.dart';
import 'package:airasia_weather/bloc/weather_state.dart';
import 'package:airasia_weather/constant/cities.dart';
import 'package:airasia_weather/current_location.dart';
import 'package:airasia_weather/functions/Api.dart';
import 'package:airasia_weather/location_list.dart';
import 'package:airasia_weather/models/response/weather_response.dart';
import 'package:airasia_weather/models/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCity = 'Kuala Lumpur';
  List<String> myCities = cities;
  WeatherBloc _weatherBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _weatherBloc = BlocProvider.of<WeatherBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(builder: (context, state) {
      print(state);
      if (state is WeatherStateLoading)
        return Scaffold(
          appBar: AppBar(
            title: Text("Weather"),
          ),
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      if (state is WeatherStateLoaded)
        return Scaffold(
          appBar: AppBar(
            title: Text("Weather"),
          ),
          body: ListView(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
            ),
            shrinkWrap: true,
            children: [
              Row(
                children: [Text("Select city : ")],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.0,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(
                    5,
                  ),
                ),
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: selectedCity,
                  icon: Icon(Icons.arrow_drop_down_outlined),
                  iconSize: 24,
                  elevation: 0,
                  underline: Container(),
                  onChanged: (String newValue) {
                    setState(() {
                      selectedCity = newValue;
                    });
                    getWeather();
                  },
                  items: myCities.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(
                  10,
                ),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          offset: Offset(0, 3))
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${state.weather.name}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.network(
                            "http://openweathermap.org/img/wn/${state.weather.weathers[0].icon}@2x.png"),
                        Text("${state.weather.main.temp} \u2103"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Min: ${state.weather.main.tempMin} \u2103"),
                            Text("Max: ${state.weather.main.tempMax} \u2103")
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${state.weather.weathers[0].description}",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LocationListScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Show 3 cities",
                      style: TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          bottomNavigationBar: Container(
            height: 70,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20),
            color: Colors.red,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CurrentLocationScreen(),
                  ),
                );
              },
              child: Text(
                "Go to Current Location Page",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      return Scaffold(
        appBar: AppBar(
          title: Text("Weather"),
        ),
        body: Text("DEFAULT"),
      );
    });
  }

  getWeather() async {
    _weatherBloc.add(GetWeather(city: selectedCity));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // _weatherBloc.
  }
}
