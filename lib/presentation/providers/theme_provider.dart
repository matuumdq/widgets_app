import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/theme/app_theme.dart';

// Colores inmutable

final colorListProvider = Provider((ref) => colorList);

// bool
final isDarkProvider = StateProvider((ref) => false);

// int
final selectedIndexColorProvider = StateProvider((ref) => 0);

// Objeto de tipo AppTheme
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

// Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // State = new AppTheme()
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWidth(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWidth(selectedColor: colorIndex);
  }
}
