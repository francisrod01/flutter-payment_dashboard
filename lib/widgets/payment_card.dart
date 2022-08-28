import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_dashboard/constants.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({
    Key? key,
    @required this.label,
    @required this.text,
    @required this.money,
    @required this.imgSrc,
  }) : super(key: key);

  final label;
  final text;
  final money;
  final imgSrc;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 140,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            imgSrc,
            color: Colors.white54,
            height: 50,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white54,
            ),
          ),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white54,
            ),
          ),
          Text(
            money,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white54,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
