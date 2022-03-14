import 'package:flutter/material.dart';
import 'package:tr3umphant_designs/models/pricing_model.dart';

class PricingWidget extends StatelessWidget {
  const PricingWidget({Key? key, required this.price}) : super(key: key);

  final PricingModel price;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/computer.jpg',
              height: 100,
            ),
            const SizedBox(height: 10),
            Text(
              price.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 21,
                fontFamily: 'Raleway',
              ),
            ),
            const SizedBox(height: 10),
            Text(
              price.description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'Raleway',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
