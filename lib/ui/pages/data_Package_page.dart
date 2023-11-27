import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/form.dart';
import 'package:bank_sha/ui/widgets/package_item.dart';
import 'package:flutter/material.dart';

class DataPackagePage extends StatelessWidget {
  const DataPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Paket Data"),
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
            "Phone Number",
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomFormField(
            title: "+628",
            isShowTitle: false,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Select Package",
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
            runSpacing: 18,
            children: [
              PackageItem(
                amount: "10",
                price: 20000,
              ),
              PackageItem(
                amount: "25",
                price: 420000,
              ),
              PackageItem(
                amount: "40",
                price: 2500000,
                isSelected: true,
              ),
              PackageItem(
                amount: "99",
                price: 5000000,
              ),
              SizedBox(
                height: 135,
              ),
            ],
          ),
          const SizedBox(
            height: 85,
          ),
          CustomFilledButton(
            title: "Continue",
            onPressed: () async {
              if (await Navigator.pushNamed(context, "/pin") == true &&
                  context.mounted) {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/data-success", (route) => false);
              }
            },
          ),
          const SizedBox(
            height: 57,
          )
        ],
      ),
    );
  }
}
