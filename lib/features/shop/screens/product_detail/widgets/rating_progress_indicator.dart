import 'package:demo/features/shop/screens/product_detail/widgets/progress_indicator_and_rating.dart';
import 'package:flutter/material.dart';

class TOverallProductRating extends StatelessWidget {
  const TOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            '4.9',
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              TRatingProgressIndicator(
                text: '5',
                value: 1.0,
              ),
              TRatingProgressIndicator(
                text: '4',
                value: 0.8,
              ),
              TRatingProgressIndicator(
                text: '3',
                value: 0.5,
              ),
              TRatingProgressIndicator(
                text: '2',
                value: 0.2,
              ),
              TRatingProgressIndicator(
                text: '1',
                value: 0.3,
              )
            ],
          ),
        )
      ],
    );
  }
}
