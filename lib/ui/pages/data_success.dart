import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class DataSuccess extends StatelessWidget {
  const DataSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Paket Data\nBerhasil Terbeli",
              textAlign: TextAlign.center,
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            Text(
              "Use the money wisely and \ngrow your finance",
              textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(
                fontWeight: reguler,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomFilledButton(
              title: "Back To Home",
              width: 230,
              onPressed: () {
                Navigator.pushNamed(context, "/home");
              },
            )
          ],
        ),
      ),
    );
  }
}
