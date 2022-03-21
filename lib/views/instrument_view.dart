import 'package:flutter/material.dart';

import '../widgets/common/search_input.dart';
import '../widgets/common/top_text.dart';
import '../widgets/common/views_app_bar.dart';
import '../widgets/home_view/course_item.dart';
import '../widgets/instrument_view/horizontal_scroll_menu.dart';
import '../widgets/instrument_view/song_item.dart';

class InstrumentView extends StatefulWidget {
  const InstrumentView({Key? key}) : super(key: key);

  @override
  State<InstrumentView> createState() => _InstrumentViewState();
}

class _InstrumentViewState extends State<InstrumentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ViewsAppBar(),
      backgroundColor: const Color(0xFFF7F8FA),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopText('Cello Song', 'Let\'s upgrade your skill!'),
            const HorizontalScrollMenu(),
            const SearchInput(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              child: Text(
                'Popular Song',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  SongItem('assets/images/song1_bg.png', 'Classical',
                      'Minuet\nNo.3', 'Intermediate'),
                  SongItem('assets/images/song2_bg.png', 'Opera',
                      'Lightly\nRow', 'Intermediate'),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10.0, top: 10.0),
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    'View All',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: const [
                  // Course Item
                  CourseItem('Old Dan Tucker', 1),
                  CourseItem('Waltzing Matilda', 0.5),
                  CourseItem('Luly Gavotte', 0.7),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
