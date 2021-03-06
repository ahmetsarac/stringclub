import 'package:flutter/material.dart';

import '../common/app_theme.dart';

class CourseItem extends StatelessWidget {
  final String name;
  final double progress;

  const CourseItem(
    this.name,
    this.progress, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 24.0),
                padding: const EdgeInsets.all(10.0),
                color: Colors.white,
                child: Image.asset('assets/images/violin.png'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Row(
                    children: [
                      Text(
                        'Beginner',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(width: 10),
                      for (int i = 0; i < 5; i++)
                        Icon(
                          Icons.star,
                          size: 12,
                          color: i == 4
                              ? AppTheme.colors['grey']
                              : AppTheme.colors['green'],
                        ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '4 (152)',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: AppTheme.colors['grey'],
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          InkWell(
            onTap: () {},
            child: Stack(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                  child: Icon(Icons.play_arrow),
                ),
                SizedBox(
                  width: 40,
                  height: 40,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: AppTheme.colors['purple'],
                    value: 1,
                  ),
                ),
                SizedBox(
                  width: 40,
                  height: 40,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: AppTheme.colors['blue'],
                    value: progress, // Change this value to update the progress
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
