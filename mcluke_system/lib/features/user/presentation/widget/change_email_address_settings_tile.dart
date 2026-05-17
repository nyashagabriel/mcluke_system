import 'package:flutter/material.dart';
import 'package:mcluke_system/core/router/routes.dart';
import 'package:mcluke_system/features/settings/presentation/widget/settings_tile.dart';
import 'package:go_router/go_router.dart';

class ChangeEmailAddressSettingsTile extends StatelessWidget {
  const ChangeEmailAddressSettingsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SettingsTile(
      leading: Icons.email,
      title: "Change email address",
      onTap: () => context.push(Routes.changeEmailAddress.path),
    );
  }
}
