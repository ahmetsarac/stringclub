import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Narrow 271 songs by:'),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 80,
                  offset: Offset(0, 25),
                )
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                prefixIcon: Image.asset('assets/images/search_input_icon.png'),
                suffixIcon: Align(
                  widthFactor: 2.0,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: const Color(0xFF40E5BF),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.tune,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Search Song',
                hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: const Color(0xFF8F9BB3),
                    ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
