import 'package:flutter/material.dart';
import '../widgets/common/app_theme.dart';
import '../widgets/common/top_text.dart';
import '../widgets/song_view/song_view_app_bar.dart';
import '../widgets/song_view/strings.dart';

class SongView extends StatelessWidget {
  const SongView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const SongViewAppBar(),
        backgroundColor: AppTheme.colors['backgroundColor'],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopText('Pachalbel\'s Canon in D', 'Intermediate'),

            // Strings
            Expanded(
              child: CustomPaint(
                painter: Strings(),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    icon: Image.asset('assets/images/reload_icon.png'),
                    onPressed: () {}),
                Ink(
                  decoration: ShapeDecoration(
                    shape: const CircleBorder(),
                    color: AppTheme.colors['lightBlue'],
                  ),
                  child: IconButton(
                      icon: Image.asset('assets/images/previous_icon.png'),
                      onPressed: () {}),
                ),
                Ink(
                  decoration: ShapeDecoration(
                    shape: const CircleBorder(),
                    color: AppTheme.colors['blue'],
                  ),
                  child: IconButton(
                      icon: Image.asset('assets/images/metronome_icon.png'),
                      onPressed: () {}),
                ),
                Ink(
                  decoration: ShapeDecoration(
                    shape: const CircleBorder(),
                    color: AppTheme.colors['lightBlue'],
                  ),
                  child: IconButton(
                      icon: Image.asset('assets/images/next_icon.png'),
                      onPressed: () {}),
                ),
                IconButton(
                    icon: Image.asset('assets/images/repeat_icon.png'),
                    onPressed: () {}),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Ink(
                  decoration: ShapeDecoration(
                    shape: const CircleBorder(),
                    color: AppTheme.colors['blue'],
                  ),
                  child: IconButton(
                    icon: Image.asset('assets/images/play_icon.png'),
                    onPressed: () {},
                  ),
                ),
                Image.asset('assets/images/waves.png'),
                Text(
                  '1:24',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: AppTheme.colors['blue'],
                      ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
          ],
        ));
  }
}
