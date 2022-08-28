import 'package:flutter/material.dart';
import 'package:payment_dashboard/components/payment_history_items.dart';
import 'package:payment_dashboard/components/sending_history.dart';
import 'package:payment_dashboard/constants.dart';
import 'package:payment_dashboard/widgets/chart.dart';
import 'package:payment_dashboard/widgets/payment_card.dart';
import 'package:payment_dashboard/widgets/search_field.dart';
import 'package:payment_dashboard/widgets/user_section.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              const SizedBox(
                height: defaultPadding,
              ),
              Row(
                children: const [
                  Text(
                    'Dashboard',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Expanded(child: SearchField()),
                  UserSection(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                ],
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: defaultPadding),
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: defaultPadding,
                                ),
                                child: Image(
                                  image: AssetImage('images/card.png'),
                                  height: 200,
                                ),
                              ),
                              SizedBox(width: defaultPadding * 2.5),
                              PaymentCard(
                                imgSrc: 'images/bag.svg',
                                text: 'Salary',
                                label: 'Belong interactive',
                                money: '+\$200',
                              ),
                              SizedBox(width: defaultPadding),
                              PaymentCard(
                                imgSrc: 'images/paypal.svg',
                                text: 'Paypal',
                                label: 'Freelance payments',
                                money: '+\$400',
                              ),
                              SizedBox(width: defaultPadding),
                              PaymentCard(
                                imgSrc: 'images/payoneer.svg',
                                text: 'Payoneer',
                                label: 'Freelance payments',
                                money: '+\$450',
                              ),
                            ],
                          ),
                          const SizedBox(height: defaultPadding * 2),
                          Padding(
                            // parei aqui...
                            padding: const EdgeInsets.symmetric(
                              horizontal: defaultPadding,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Recent Payments',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                const Spacer(flex: 1),
                                Container(
                                  height: 40,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: secondaryColor,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color: Colors.white),
                                  ),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          'Sort by',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_down,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: defaultPadding * 2),
                          const PaymentHistoryItems(
                            imgSrc: 'images/gift.svg',
                            label: 'Shopping',
                            date: '1 January, 2020',
                            money: '\$150',
                          ),
                          const Divider(
                            height: 30,
                            endIndent: 20,
                            color: Colors.white10,
                          ),
                          const PaymentHistoryItems(
                            imgSrc: 'images/factory.svg',
                            label: 'Grocery',
                            date: '2 January, 2021',
                            money: '\$100',
                          ),
                          const Divider(
                            height: 30,
                            endIndent: 20,
                            color: Colors.white10,
                          ),
                          const PaymentHistoryItems(
                            imgSrc: 'images/dumbbell.svg',
                            label: 'Gym bill',
                            date: '1 January, 2019',
                            money: '\$1200',
                          ),
                          const Divider(
                            height: 30,
                            endIndent: 20,
                            color: Colors.white10,
                          ),
                          const PaymentHistoryItems(
                            imgSrc: 'images/gift.svg',
                            label: 'Shopping',
                            date: '1 January, 2020',
                            money: '\$150',
                          ),
                          const Divider(
                            height: 30,
                            endIndent: 20,
                            color: Colors.white10,
                          ),
                          const PaymentHistoryItems(
                            imgSrc: 'images/washing.svg',
                            label: 'Laundry',
                            date: '1 January, 2020',
                            money: '\$2000',
                          ),
                          const Divider(
                            height: 30,
                            endIndent: 20,
                            color: Colors.white10,
                          ),
                          const PaymentHistoryItems(
                            imgSrc: 'images/car.svg',
                            label: 'Car wash',
                            date: '1 January, 2020',
                            money: '\$2000',
                          ),
                          const Divider(
                            height: 30,
                            endIndent: 20,
                            color: Colors.white10,
                          ),
                          const PaymentHistoryItems(
                            imgSrc: 'images/factory.svg',
                            label: 'Clothes',
                            date: '1 January, 2022',
                            money: '\$1220',
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: defaultPadding),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding,
                          vertical: defaultPadding,
                        ),
                        child: Column(
                          children: [
                            const Text(
                              'Saved This Month',
                              style: TextStyle(
                                color: Colors.white54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              '\$4025',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                            const SizedBox(height: 15),
                            // ignore: sized_box_for_whitespace
                            Container(
                              height: 200,
                              width: double.infinity,
                              child: const Chart(),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: const Text(
                                'Sending History',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            const SendingHistory(
                              name: 'Tushar',
                              mail: 'tushar@gmail.com',
                              money: '\$100',
                            ),
                            const SizedBox(height: 15),
                            const SendingHistory(
                              name: 'Rakib',
                              mail: 'rakib@gmail.com',
                              money: '\$120',
                            ),
                            const SizedBox(height: 15),
                            const SendingHistory(
                              name: 'Ibrahim',
                              mail: 'ibrm@gmail.com',
                              money: '\$140',
                            ),
                            const SizedBox(height: 15),
                            const SendingHistory(
                              name: 'Maisha',
                              mail: 'maisha@gmail.com',
                              money: '\$250',
                            ),
                            const SizedBox(height: 15),
                            const SendingHistory(
                              name: 'Zaima',
                              mail: 'zaima@gmail.com',
                              money: '\$140',
                            ),
                            const SizedBox(height: 15),
                            const SendingHistory(
                              name: 'Zara',
                              mail: 'zara@gmail.com',
                              money: '\$150',
                            ),
                            const SizedBox(height: 15),
                            const SendingHistory(
                              name: 'Tania',
                              mail: 'tania@gmail.com',
                              money: '\$250',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
