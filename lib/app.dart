import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:randomize_color/bloc/app/app_cubit.dart';
import 'package:randomize_color/screens/randomize_screen.dart';

/// general App widget
class App extends StatelessWidget {
  /// constructor of App widget
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppCubit>(create: (context) => AppCubit()),
      ],
      child: const MaterialApp(
        title: 'Randomize Color',
        home: RandomizeScreen(),
      ),
    );
  }
}
