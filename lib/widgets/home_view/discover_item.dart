import 'package:flutter/material.dart';

import '../common/app_theme.dart';

class DiscoverItem extends StatelessWidget {
  final bool isSelected;
  final String title;
  final String description;

  const DiscoverItem(
    this.isSelected,
    this.title,
    this.description, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * (isSelected ? 0.55 : 0.4),
      margin: const EdgeInsets.only(
          top: 10.0, bottom: 22.0, right: 10.0, left: 10.0),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : AppTheme.colors['blue'],
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                color: isSelected == false
                    ? Colors.white
                    : Theme.of(context).textTheme.headlineMedium!.color),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5.0),
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 3.0,
            ),
            child: const Icon(Icons.play_arrow, color: Colors.white),
            decoration: BoxDecoration(
              color: isSelected
                  ? AppTheme.colors['blue']
                  : AppTheme.colors['green'],
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 5),
            child: Text(
              description,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          OutlinedButton.icon(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 8,
                ),
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              side: MaterialStateProperty.all(
                BorderSide(
                  width: isSelected ? 1.0 : 0.85,
                  color: isSelected
                      ? AppTheme.colors['blue'] as Color
                      : AppTheme.colors['lightBlue'] as Color,
                  style: BorderStyle.solid,
                ),
              ),
            ),
            icon: Icon(
              Icons.query_builder,
              color: isSelected ? AppTheme.colors['blue'] : Colors.white,
              size: 20,
            ),
            onPressed: () {},
            label: Text(
              '3 hours, 20 min',
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: isSelected ? AppTheme.colors['blue'] : Colors.white,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
