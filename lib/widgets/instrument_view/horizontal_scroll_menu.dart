import 'package:flutter/material.dart';

class HorizontalScrollMenu extends StatefulWidget {
  const HorizontalScrollMenu({Key? key}) : super(key: key);

  @override
  State<HorizontalScrollMenu> createState() => _HorizontalScrollMenuState();
}

class _HorizontalScrollMenuState extends State<HorizontalScrollMenu> {
  final menuList = const [
    'Overview',
    'Song',
    'Exercises',
    'Video',
    'Artist',
    'Exercises',
    'Video',
    'Artist'
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: menuList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: const EdgeInsets.only(
                        bottom: 4.0, right: 8.0, left: 8.0),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    menuList[index],
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 16,
                          color: _selectedIndex == index
                              ? const Color(0xFF131A22)
                              : const Color(0xFF8F9BB3),
                        ),
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                ),
                if (_selectedIndex == index)
                  Container(
                    width: 30,
                    height: 5,
                    decoration: BoxDecoration(
                      color: const Color(0xFF40E5BF),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
