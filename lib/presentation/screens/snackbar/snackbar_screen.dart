import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackBar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(
        label: 'Ok!',
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro wn?'),
        content: const Text(
            'Aliqua dolore sint eiusmod id consectetur aliqua ea minim. Ad dolore cupidatat sunt consectetur sint aliqua occaecat ipsum non anim commodo nisi et. Irure labore incididunt id officia amet deserunt ad laborum cillum Lorem sunt sunt. Elit quis reprehenderit incididunt irure. Quis esse nulla aliquip ut veniam in commodo eiusmod adipisicing dolor proident cupidatat. Proident dolore enim nisi officia Lorem ad nisi eiusmod ea aute incididunt magna irure consequat.'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(
              onPressed: () => context.pop(), child: const Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y dialogos'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'Consectetur ut cillum duis labore ipsum non magna veniam sunt deserunt laboris. Pariatur exercitation commodo sunt nisi magna nulla reprehenderit qui anim commodo consectetur aliquip. Culpa esse proident mollit consequat. Officia nulla qui excepteur eu mollit elit magna nostrud ad aliqua velit laborum. Eiusmod quis anim officia mollit ullamco eu voluptate. Ad duis sit qui ea eiusmod laboris aute do nisi esse non voluptate nostrud. Fugiat do exercitation eiusmod labore quis in enim.')
                ]);
              },
              child: const Text('Licencias')),
          FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar dialogo')),
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
