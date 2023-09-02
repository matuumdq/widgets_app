import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/router/app_router.dart';
import 'package:widget_app/config/theme/app_theme.dart';
import 'package:widget_app/presentation/providers/theme_provider.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, ref) {
    final bool isDarkMode = ref.watch(isDarkProvider);
    final int indexColor = ref.watch(selectedIndexColorProvider);

    return MaterialApp.router(
      title: 'Flutter Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: indexColor, isDarkMode: isDarkMode)
          .getTheme(),
      //   routes: {
      //     '/buttons': (context) => const ButtonsScreen(),
      //     '/cards': (context) => const CardsScreen(),
      //   },
    );
  }
}
