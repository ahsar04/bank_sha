import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/bank_item.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class TopupPage extends StatelessWidget {
  const TopupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Top Up"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              "Wallet",
              style:
                  blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/img_wallet.png",
                  height: 55,
                  width: 80,
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "8008 2208 1996",
                      style: blackTextStyle.copyWith(
                          fontSize: 16, fontWeight: medium),
                    ),
                    Text(
                      "Angga Risky",
                      style: greyTextStyle.copyWith(
                        fontWeight: reguler,
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Select Bank",
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const BankItem(
              imageUrl: "assets/images/img_bank_bca.png",
              title: "BANK BCA",
              isSelected: true,
            ),
            const BankItem(
              imageUrl: "assets/images/img_bank_bni.png",
              title: "BANK BNI",
              isSelected: false,
            ),
            const BankItem(
              imageUrl: "assets/images/img_bank_mandiri.png",
              title: "BANK Mandiri",
              isSelected: false,
            ),
            const BankItem(
              imageUrl: "assets/images/img_bank_ocbc.png",
              title: "BANK OCBC",
              isSelected: false,
            ),
            const SizedBox(
              height: 12,
            ),
            CustomFilledButton(
              title: "Continue",
              onPressed: () {
                Navigator.pushNamed(context, "/topup-amount");
              },
            ),
            const SizedBox(
              height: 57,
            )
          ],
        ),
      ),
    );
  }
}
