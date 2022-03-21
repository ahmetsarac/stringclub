import 'package:flutter/material.dart';
import 'package:stringclub/views/song_view.dart';
import 'views/instrument_view.dart';
import 'views/login_view.dart';
import 'views/home_view.dart';
import 'widgets/common/app_theme.dart';

void main() => runApp(const StringClub());

class StringClub extends StatelessWidget {
  const StringClub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StringClub',
      theme: AppTheme.appTheme,
      home: const SongView(),
    );
  }
}
