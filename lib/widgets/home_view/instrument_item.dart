import 'package:flutter/material.dart';

import '../common/app_theme.dart';

class InstrumentItem extends StatelessWidget {
  final String instrumentName;
  final String imageUrl;

  const InstrumentItem(
    this.instrumentName,
    this.imageUrl, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 13.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.0),
              color: AppTheme.colors['grey'],
            ),
            child: Image.asset(imageUrl),
          ),
          Text(
            instrumentName,
            style: Theme.of(context)
                .textTheme
                .labelSmall!
                .copyWith(letterSpacing: 0.4),
          ),
        ],
      ),
    );
  }
}

class IntsrumentItemOther extends StatelessWidget {
  const IntsrumentItemOther({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 13.0),
            padding:
                const EdgeInsets.symmetric(vertical: 36.0, horizontal: 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.0),
              border: Border.all(color: AppTheme.colors['grey'] as Color),
            ),
            child: Image.asset('assets/images/other.png'),
          ),
          Text('Other', style: Theme.of(context).textTheme.labelSmall),
        ],
      ),
    );
  }
}
