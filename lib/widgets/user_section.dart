import 'package:flutter/material.dart';
import 'package:payment_dashboard/constants.dart';

class UserSection extends StatelessWidget {
  const UserSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: defaultPadding,
        right: defaultPadding,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding / 5,
      ),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(
          color: Colors.white70,
        ),
      ),
      child: Row(
        children: const [
          Image(
            image: AssetImage('images/person.png'),
            height: 37,
          ),
          Padding(
            // divide 20 padding into 10
            padding: EdgeInsets.symmetric(
              horizontal: defaultPadding / 2,
            ),
            child: Text(
              'Tushar Mahmud',
              style: TextStyle(color: Colors.white70),
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white70,
          ),
        ],
      ),
    );
  }
}
