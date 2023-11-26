import 'package:bank_sha/shared/shered_methods.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class PackageItem extends StatelessWidget {
  final String amount;
  final int price;
  final bool isSelected;
  const PackageItem({
    super.key,
    required this.amount,
    required this.price,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 171,
      width: 155,
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
          border: Border.all(
            width: 2,
            color: isSelected ? blueColor : whiteColor,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${amount}GB",
            style: blackTextStyle.copyWith(fontWeight: medium, fontSize: 32),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            formatCurency(price),
            style: greyTextStyle.copyWith(
              fontWeight: reguler,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
