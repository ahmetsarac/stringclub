import 'package:flutter/material.dart';

class ViewsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ViewsAppBar({
    Key? key,
  }) : super(key: key);

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
        IconButton(
          icon: Image.asset('assets/images/search_icon.png'),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
