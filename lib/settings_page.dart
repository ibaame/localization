import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/cubit/locale_cubit.dart';
import 'app_localizations.dart';

String value = 'en';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("settings".tr(context)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          // BlocConsumer can used build and listener
          child: BlocConsumer<LocaleCubit, ChangeLocaleState>(
            listener: (context, state) {
              Navigator.pop(context);
            },
            builder: (context, state) {
              return DropdownButton<String>(
                value: state.locale.languageCode,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: ['ar', 'en'].map((String items) {
                  return DropdownMenuItem<String>(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    // context.read<LocaleCubit>().changeLanguage(newValue);
                    BlocProvider.of<LocaleCubit>(context)
                        .changeLanguage(newValue);
                  }
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
