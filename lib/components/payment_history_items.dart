import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_dashboard/constants.dart';

class PaymentHistoryItems extends StatelessWidget {
  const PaymentHistoryItems({
    Key? key,
    @required this.imgSrc,
    @required this.date,
    @required this.label,
    @required this.money,
  }) : super(key: key);
  final imgSrc;
  final date;
  final label;
  final money;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            imgSrc,
            height: 25,
            color: Colors.white,
          ),
          const SizedBox(width: defaultPadding * 2),
          Text(
            label,
            style: const TextStyle(color: Colors.white54),
          ),
          const SizedBox(width: defaultPadding * 8),
          Text(
            date,
            style: const TextStyle(color: Colors.white54),
          ),
          const SizedBox(width: defaultPadding * 8),
          Text(
            money,
            style: const TextStyle(
              color: Colors.white54,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
