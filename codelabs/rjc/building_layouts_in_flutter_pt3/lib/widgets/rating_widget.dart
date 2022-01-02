import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RatingWidget extends StatelessWidget {
  int? rating;
  RatingWidget({Key? key, this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: List.generate(5, (index) {
            return Icon(
              index < rating! ? Icons.star : Icons.star_border,
              color: Colors.yellow,
            );
          }),
        ),
        const SizedBox(width: 5),
        Text(
          '${rating!}/5 Reviews',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey.withOpacity(0.7),
          ),
        ),
      ],
    );
  }
}
