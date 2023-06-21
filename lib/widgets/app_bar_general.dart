import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

AppBar AppBarGeneral(BuildContext context) {
  return AppBar(
    title: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: ResponsiveBreakpoints.of(context).largerThan(TABLET)
            ? 120.0
            : ResponsiveBreakpoints.of(context).isTablet
                ? 40.0
                : 0.0,
      ),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
          hintText: 'Search',
          hintStyle: const TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
          prefixIcon: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.search,
                color: Colors.black45,
              ),
            ),
          ),
          suffixIcon: const Icon(
            Icons.mic,
            color: Colors.black45,
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    ),
    backgroundColor: Colors.amber,
    centerTitle: true,
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.more_vert),
      ),
    ],
  );
  // AppBar(
  //   title: const Text(
  //     'My First App',
  //     style: TextStyle(
  //       color: Colors.black,
  //       fontWeight: FontWeight.bold,
  //     ),
  //   ),
  //   backgroundColor: Colors.amber,
  //   centerTitle: true,
  //   actions: [
  //     IconButton(
  //       onPressed: () {},
  //       icon: const Icon(Icons.search),
  //     ),
  //     IconButton(
  //       onPressed: () {},
  //       icon: const Icon(Icons.more_vert),
  //     ),
  //   ],
  // );
}
