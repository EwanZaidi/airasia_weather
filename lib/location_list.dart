import 'package:airasia_weather/bloc/weather_bloc.dart';
import 'package:airasia_weather/bloc/weather_event.dart';
import 'package:airasia_weather/bloc/weather_state.dart';
import 'package:airasia_weather/constant/cities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocationListScreen extends StatefulWidget {
  @override
  _LocationListScreenState createState() => _LocationListScreenState();
}

class _LocationListScreenState extends State<LocationListScreen> {
  WeatherBloc _weatherBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _weatherBloc = BlocProvider.of<WeatherBloc>(context);
    _weatherBloc.add(GetWeatherList());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  Future<String> _showMyDialog() async {
    return showDialog<String>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return Dialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("3 places"),
        actions: [
          InkWell(
            onTap: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              var list = new List<String>();

              if (prefs.getStringList("cities") != null &&
                  prefs.getStringList("cities").length > 0) {
                prefs.getStringList("cities").forEach((element) {
                  list.add(element);
                });
              }

              var test = await _showMyDialog();
              list.add(test);

              prefs.setStringList("cities", list);
              _weatherBloc.add(GetWeatherList(cities: null));
            },
            child: Icon(
              Icons.add,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          if (state != null && state is WeatherTest) {
            return ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(
                top: 20,
              ),
              itemCount: state.weathers.length,
              itemBuilder: (context, int index) {
                return Container(
                  padding: EdgeInsets.all(
                    10,
                  ),
                  margin: EdgeInsets.only(right: 30),
                  width: MediaQuery.of(context).size.width - 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                            offset: Offset(0, 3))
                      ]),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${state.weathers[index].name}",
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
                              "http://openweathermap.org/img/wn/${state.weathers[index].weathers[0].icon}@2x.png"),
                          Text("${state.weather.main.temp} \u2103"),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "Min: ${state.weathers[index].main.tempMin} \u2103"),
                              Text(
                                  "Max: ${state.weathers[index].main.tempMax} \u2103")
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
                            "${state.weathers[index].weathers[0].description}",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          }
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}

class Dialog extends StatefulWidget {
  @override
  _DialogState createState() => _DialogState();
}

class _DialogState extends State<Dialog> {
  String selectedCity = 'Kuala Lumpur';
  List<String> myCities = cities;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add City'),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
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
                  // getWeather();
                },
                items: myCities.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Add'),
          onPressed: () {
            Navigator.of(context).pop(selectedCity);
          },
        ),
      ],
    );
  }
}
