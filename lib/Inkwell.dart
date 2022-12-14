import 'package:flutter/material.dart';

Widget Inkwell({String? title, String? singer, String? cover, onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              image: DecorationImage(
                image: NetworkImage(
                  cover!,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title!,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                singer!,
                style: const TextStyle(
                  color: Colors.green,
                  fontSize: 16.0,
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
