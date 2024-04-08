import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:randomize_color/bloc/app/app_cubit.dart';

/// Randomize widget
class RandomizeScreen extends StatelessWidget {
  /// Randomize container
  const RandomizeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, appState) {
        return Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                const Text('Bonus points: '),
                Text(appState.bonusPoints.toString()),
              ],
            ),
          ),
          body: GestureDetector(
            onTap: () => BlocProvider.of<AppCubit>(context).updateAppData(),
            child: ColoredBox(
              color: appState.color,
              child: const Center(
                child: Text(
                  'Hello',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
