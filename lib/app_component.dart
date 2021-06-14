import 'package:airasia_weather/bloc/weather_bloc.dart';
import 'package:airasia_weather/constant/routes.dart';
import 'package:airasia_weather/current_location.dart';
import 'package:airasia_weather/home.dart';
import 'package:airasia_weather/location_list.dart';
import 'package:airasia_weather/repository/weather_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class AppComponent extends StatefulWidget {
  AppComponent(
    this.weatherRepository,
  );

  final WeatherRepository weatherRepository;

  @override
  _AppComponentState createState() => _AppComponentState();
}

class _AppComponentState extends State<AppComponent> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
    ]);

    return MultiProvider(
      providers: [
        Provider<WeatherRepository>.value(value: widget.weatherRepository),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<WeatherBloc>(
            create: (BuildContext context) => WeatherBloc(
              weatherRepository: widget.weatherRepository,
            ),
          ),
        ],
        child: MaterialApp(
          title: 'Airasia Weather',
          debugShowCheckedModeBanner: false,
          onGenerateRoute: generator,
          theme: ThemeData(
            primarySwatch: Colors.red,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          onUnknownRoute: (RouteSettings settings) {
            return MaterialPageRoute(builder: (context) {
              return Container();
            });
          },
        ),
      ),
    );
  }

  Route<dynamic> generator(RouteSettings settings) {
    if (settings.name == Routes.root) {
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => BlocProvider<WeatherBloc>(
          create: (context) => WeatherBloc(
            weatherRepository: widget.weatherRepository,
          ),
          child: HomeScreen(),
        ),
      );
    }

    if (settings.name == Routes.location) {
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => BlocProvider<WeatherBloc>(
          create: (context) => WeatherBloc(
            weatherRepository: widget.weatherRepository,
          ),
          child: CurrentLocationScreen(),
        ),
      );
    }

    if (settings.name == Routes.list) {
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => BlocProvider<WeatherBloc>(
          create: (context) => WeatherBloc(
            weatherRepository: widget.weatherRepository,
          ),
          child: LocationListScreen(),
        ),
      );
    }

    return MaterialPageRoute(
      settings: settings,
      builder: (_) => Container(
        color: Colors.white,
      ),
    );
  }
}
