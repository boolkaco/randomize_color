part of 'app_cubit.dart';

/// state of application bloc
class AppState extends Equatable {
  /// variable with times of changes colors
  final int bonusPoints;
  /// variable with current color
  final Color color;

  /// constructor for application state
  const AppState({
    this.bonusPoints = 0,
    this.color = Colors.white,
  });

  @override
  List<Object?> get props => [
    bonusPoints,
    color,
  ];

  /// method for update application state
  AppState copyWith({int? bonusPoints, Color? color}) {
    return AppState(
      bonusPoints: bonusPoints ?? this.bonusPoints,
      color: color ?? this.color,
    );
  }
}
