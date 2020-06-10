import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dynamic_theming_bloc/ui/global/theme/bloc/theme_bloc.dart';
import 'package:flutter_dynamic_theming_bloc/ui/home/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new BlocProvider(
      builder: (context) => ThemeBloc(),
      child: new BlocBuilder<ThemeBloc, ThemeState>(builder: _buildWithTheme),
    );
  }

  Widget _buildWithTheme(BuildContext context, ThemeState state) {
    return new MaterialApp(
      title: 'Material App',
      theme: state.themeData,
      home: HomePage(),
    );
  }
}
