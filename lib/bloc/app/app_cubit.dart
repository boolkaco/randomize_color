import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_state.dart';

/// general application bloc.
class AppCubit extends Cubit<AppState> {
  /// application bloc constructor.
  AppCubit() : super(const AppState());

  /// method to update app state data
  void updateAppData() {
    emit(
      state.copyWith(
        bonusPoints: state.bonusPoints + 1,
        color: getRandomColor(),
      ),
    );
  }

  /// local method to generate random color
  Color getRandomColor() {
    final Random random = Random();
    final int r = random.nextInt(256);
    final g = random.nextInt(256);
    final b = random.nextInt(256);
    return Color.fromRGBO(r, g, b, 1);
  }
}
