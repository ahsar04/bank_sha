import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/form.dart';
import 'package:bank_sha/ui/widgets/transfer_recent_user_item.dart';
import 'package:bank_sha/ui/widgets/transfer_result_item.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transfer"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            "Search",
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomFormField(
            title: "by username",
            isShowTitle: false,
          ),
          // buildRecentUser(),
          buildResultUser(),
          const SizedBox(
            height: 275,
          ),
          CustomFilledButton(
            title: "Continue",
            onPressed: () {
              Navigator.pushNamed(context, "/transfer-amount");
            },
          )
        ],
      ),
    );
  }
}

Widget buildRecentUser() {
  return Container(
    margin: const EdgeInsets.only(top: 40),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recent Users",
          style: blackTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const TransferRecentUserItem(
          imageUrl: "assets/images/img_friend_1.png",
          name: "Yonna Jie",
          username: "yoenna",
          isVerified: true,
        ),
        const TransferRecentUserItem(
          imageUrl: "assets/images/img_friend_2.png",
          name: "John Hi",
          username: "jhi",
        ),
        const TransferRecentUserItem(
          imageUrl: "assets/images/img_friend_3.png",
          name: "Masayoshi",
          username: "form",
        ),
      ],
    ),
  );
}

Widget buildResultUser() {
  return Container(
    margin: const EdgeInsets.only(
      top: 40,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Result",
          style: blackTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const Wrap(
          spacing: 17,
          runSpacing: 17,
          children: [
            TransferResultUserItem(
              imageUrl: "assets/images/img_friend_1.png",
              name: "Yonna Jie",
              username: "yoenna",
              isVerified: true,
            ),
            TransferResultUserItem(
              imageUrl: "assets/images/img_friend_4.png",
              name: "Saifur ",
              username: "sai",
              isSelected: true,
            ),
          ],
        )
      ],
    ),
  );
}
