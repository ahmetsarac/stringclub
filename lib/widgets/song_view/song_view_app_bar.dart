import 'package:flutter/material.dart';

import '../common/app_theme.dart';

class SongViewAppBar extends StatefulWidget implements PreferredSizeWidget {
  const SongViewAppBar({
    Key? key,
  }) : super(key: key);

  @override
  State<SongViewAppBar> createState() => _SongViewAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _SongViewAppBarState extends State<SongViewAppBar> {
  bool _isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Image.asset('assets/images/menu_icon.png'),
        onPressed: () {},
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(
            right: 5,
          ),
          child: IconButton(
            icon: Icon(
              _isFavourite ? Icons.star : Icons.star_outline,
              color: AppTheme.colors['blue'],
              size: 36,
            ),
            onPressed: () {
              setState(() {
                _isFavourite = !_isFavourite;
              });
            },
          ),
        ),
      ],
    );
  }
}
