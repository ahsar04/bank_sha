import 'package:bank_sha/shared/shered_methods.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/provider_item.dart';
import 'package:flutter/material.dart';

class DataProviderPage extends StatelessWidget {
  const DataProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Beli Data"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              "From Wallet",
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
                      "Balance: ${formatCurency(18000000)}",
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
              "Select Provider",
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const ProviderItem(
              imageUrl: "assets/images/img_provider_telkomsel.png",
              title: "Telkomsel",
              isSelected: true,
            ),
            const ProviderItem(
              imageUrl: "assets/images/img_provider_indosat.png",
              title: "Indosat Ooredoo",
              isSelected: false,
            ),
            const ProviderItem(
              imageUrl: "assets/images/img_provider_singtel.png",
              title: "Singtel ID",
              isSelected: false,
            ),
            const SizedBox(
              height: 135,
            ),
            CustomFilledButton(
              title: "Continue",
              onPressed: () {
                Navigator.pushNamed(context, "/data-package");
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
