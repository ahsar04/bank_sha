import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class ProviderItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final bool? isSelected;
  const ProviderItem({
    super.key,
    required this.title,
    required this.imageUrl,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 18,
      ),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 2,
            color: isSelected == true ? blueColor : whiteColor,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imageUrl,
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 16,
                ),
              ),
              Text(
                "Available",
                style: greyTextStyle.copyWith(
                  fontWeight: reguler,
                  fontSize: 12,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
