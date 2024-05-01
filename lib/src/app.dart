import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formus_digital_challenge/flavors/flavors.dart';
import 'package:formus_digital_challenge/src/modules/home/bloc/home_page_bloc.dart';
import 'package:formus_digital_challenge/src/modules/home/view/home_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomePageBloc()),
      ],
      child: MaterialApp(
        title: FlavorsSettings.title,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
