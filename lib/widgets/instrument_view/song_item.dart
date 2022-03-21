import 'package:flutter/material.dart';

class SongItem extends StatelessWidget {
  final String imageUrl;
  final String category;
  final String title;
  final String difficulty;

  const SongItem(this.imageUrl, this.category, this.title, this.difficulty,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: InkWell(
        onTap: () {},
        child: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(imageUrl),
                ),
              ),
            ),
            Positioned(
              top: 15,
              left: 15,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 6.0,
                  horizontal: 8.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  category,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.4,
                        fontSize: 12,
                        color: const Color(0xFF4076E5),
                      ),
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              left: 15,
              child: Text(
                title,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.4,
                      fontSize: 25,
                      color: Colors.white,
                    ),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 15,
              child: Text(
                difficulty,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: 12,
                      color: Colors.white,
                      letterSpacing: 0.4,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
