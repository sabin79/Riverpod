import 'package:flutter/material.dart';
import 'package:interntrial/tools/animated_toggle/component/box.dart';
import 'package:interntrial/tools/animated_toggle/theme/theme_provider.dart';
import 'package:provider/provider.dart';

import '../component/button.dart';

class ToggleHome extends StatelessWidget {
  const ToggleHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: MyBox(
          color: Theme.of(context).colorScheme.primary,
          child: ToggleButton(
            color: Theme.of(context).colorScheme.secondary,
            onTap: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
          ),
        ),
      ),
    );
  }
}
