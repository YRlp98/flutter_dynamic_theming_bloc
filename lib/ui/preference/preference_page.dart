import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dynamic_theming_bloc/ui/global/theme/app_themes.dart';
import 'package:flutter_dynamic_theming_bloc/ui/global/theme/bloc/theme_bloc.dart';

class PreferencePage extends StatelessWidget {
  const PreferencePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Scaffold(
        appBar: AppBar(
          title: Text('Preferences'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            final itemAppTheme = AppTheme.values[index];
            return new Card(
              color: appThemeData[itemAppTheme].primaryColor,
              child: ListTile(
                title: Text(
                  itemAppTheme.toString(),
                  style: appThemeData[itemAppTheme].textTheme.bodyText1,
                ),
                onTap: () {
                  BlocProvider.of<ThemeBloc>(context)
                      .dispatch(ThemeChanged(theme: itemAppTheme));
                },
              ),
            );
          },
          itemCount: AppTheme.values.length,
          padding: const EdgeInsets.all(8),
        ),
      ),
    );
  }
}
