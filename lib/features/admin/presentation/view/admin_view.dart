import 'package:goodfood_ecosystem/core/widgets/language_toggle.dart';
import 'package:goodfood_ecosystem/core/localization/goodfood_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goodfood_ecosystem/features/auth/presentation/view_model/auth_cubit.dart';

class AdminView extends StatelessWidget {
  const AdminView({super.key});

  @override
  Widget build(BuildContext context) {
    final authCubit = context.read<AuthCubit>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: const [LanguageToggle()],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            AppText("Welcome ${authCubit.currentUser!.name} , from Admin Page"),
          ],
        ),
      ),
    );
  }
}
