import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/theme/app_theme.dart';

// Colores inmutable

final colorListProvider = Provider((ref) => colorList);

// bool
final isDarkProvider = StateProvider((ref) => false);

// int
final selectedIndexColorProvider = StateProvider((ref) => 0);
