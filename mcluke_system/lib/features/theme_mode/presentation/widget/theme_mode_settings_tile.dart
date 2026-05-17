import 'package:flutter/material.dart';
import 'package:mcluke_system/core/extensions/string_extensions.dart';
import 'package:mcluke_system/core/extensions/theme_extension.dart';
import 'package:mcluke_system/core/router/routes.dart';
import 'package:go_router/go_router.dart';

import '../../../settings/presentation/widget/settings_tile.dart';

class ThemeModeSettingsTile extends StatelessWidget {
  const ThemeModeSettingsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var theme = context.watchCurrentThemeMode;

    return SettingsTile(
      leading: Icons.dark_mode,
      title: "Theme mode",
      subtitle: theme.name.capitalize(),
      onTap: () => context.push(Routes.themeMode.path),
    );
  }
}
