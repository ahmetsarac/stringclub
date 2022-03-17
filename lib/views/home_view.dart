import 'package:flutter/material.dart';

import '../widgets/home_view/course_item.dart';
import '../widgets/home_view/discover_item.dart';
import '../widgets/home_view/home_view_app_bar.dart';
import '../widgets/home_view/instrument_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeViewAppBar(),
      backgroundColor: const Color(0xFFF7F8FA),
      body: SizedBox.expand(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Hello Melissa',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Let\'s upgrade your skill!',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    InstrumentItem('Viola', 'assets/images/viola.png'),
                    InstrumentItem('Cello', 'assets/images/cello.png'),
                    InstrumentItem('Guitar', 'assets/images/guitar.png'),
                    IntsrumentItemOther(),
                  ],
                ),
              ),
              const SizedBox(height: 31.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Discover',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              LimitedBox(
                maxHeight: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    DiscoverItem(true, 'Tutorial\nCello',
                        'This video shows how to play our scrolling tablature on the cello.'),
                    DiscoverItem(false, 'Tuning for Beginners', ''),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Last Seen Courses',
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
                  children: [
                    // Course Item
                    CourseItem('Pavane And Air', 1),
                    CourseItem('Las Mananitas', 0.5),
                    CourseItem('Cripple Creek', 0.7),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
