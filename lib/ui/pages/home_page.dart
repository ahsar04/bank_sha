import 'package:bank_sha/shared/shered_methods.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/home_lates_transactions_item.dart';
import 'package:bank_sha/ui/widgets/home_service_item.dart';
import 'package:bank_sha/ui/widgets/home_tips_item.dart';
import 'package:bank_sha/ui/widgets/home_user_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        elevation: 0,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          elevation: 0,
          selectedItemColor: blueColor,
          unselectedItemColor: blackColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle:
              blueTextStyle.copyWith(fontSize: 10, fontWeight: medium),
          unselectedLabelStyle: blackTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/ic_overview.png',
                width: 20,
                color: blueColor,
              ),
              label: 'Overview',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/ic_history.png',
                width: 20,
              ),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/ic_statistic.png',
                width: 20,
              ),
              label: 'Statistic',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/ic_reward.png',
                width: 20,
              ),
              label: 'Reward',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: purpleColor,
        child: Image.asset(
          'assets/icons/ic_plus_circle.png',
          width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          buildProfile(context),
          buildWalletCard(),
          buildLevel(),
          buildServices(context),
          buildLatesTransactions(),
          buildSendAgain(),
          buildFriendlyTips()
        ],
      ),
    );
  }
}

Widget buildProfile(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(
      top: 40,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Howdy,',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              'Shaynahan',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/profile');
          },
          child: Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/img_profile.png',
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: whiteColor,
                ),
                child: Icon(
                  Icons.check_circle,
                  color: greenColor,
                  size: 14,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildWalletCard() {
  return Container(
    width: double.infinity,
    height: 220,
    margin: const EdgeInsets.only(
      top: 30,
    ),
    padding: const EdgeInsets.all(30),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(28),
      image: const DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(
          'assets/images/img_bg_card.png',
        ),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Shayna Hanna',
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        const SizedBox(
          height: 28,
        ),
        Text(
          '**** **** **** 1280',
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
            letterSpacing: 6,
          ),
        ),
        const SizedBox(
          height: 21,
        ),
        Text(
          'Balance',
          style: whiteTextStyle,
        ),
        Text(
          formatCurency(50000),
          style: whiteTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        )
      ],
    ),
  );
}

Widget buildLevel() {
  return Container(
    margin: const EdgeInsets.only(
      top: 20,
    ),
    padding: const EdgeInsets.all(22),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: whiteColor,
    ),
    child: Column(
      children: [
        Row(
          children: [
            Text(
              'Level 1',
              style: blackTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
            const Spacer(),
            Text(
              '50% ',
              style: greenTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
            Text(
              'of ${formatCurency(22000)}',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(55),
          child: LinearProgressIndicator(
            value: 0.55,
            minHeight: 5,
            valueColor: AlwaysStoppedAnimation(greenColor),
            backgroundColor: lightBackgroundColor,
          ),
        ),
      ],
    ),
  );
}

Widget buildServices(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(
      top: 10,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Do Something',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HomeServiceItem(
              iconUrl: 'assets/icons/ic_topup.png',
              title: 'Top Up',
              onTap: () {
                Navigator.pushNamed(context, "/topup");
              },
            ),
            HomeServiceItem(
              iconUrl: 'assets/icons/ic_send.png',
              title: 'Send',
              onTap: () {
                Navigator.pushNamed(context, "/transfer");
              },
            ),
            HomeServiceItem(
              iconUrl: 'assets/icons/ic_withdraw.png',
              title: 'Withdraw',
              onTap: () {},
            ),
            HomeServiceItem(
              iconUrl: 'assets/icons/ic_more.png',
              title: 'More',
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => const MoreDialog(),
                );
              },
            ),
          ],
        )
      ],
    ),
  );
}

Widget buildLatesTransactions() {
  return Container(
    margin: const EdgeInsets.only(
      top: 10,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Lates Transactions',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 14,
          ),
          padding: const EdgeInsets.all(22),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: whiteColor,
          ),
          child: Column(
            children: [
              HomeLatesTransactionsItem(
                iconUrl: 'assets/icons/ic_transaction_category_1.png',
                title: 'Top Up',
                time: 'Yesterday',
                value: formatCurency(450000, symbol: "+ "),
              ),
              HomeLatesTransactionsItem(
                iconUrl: 'assets/icons/ic_transaction_category_2.png',
                title: 'Cashback',
                time: 'Sep 11',
                value: formatCurency(22000, symbol: "+ "),
              ),
              HomeLatesTransactionsItem(
                iconUrl: 'assets/icons/ic_transaction_category_3.png',
                title: 'Withdraw',
                time: 'Sep 2',
                value: formatCurency(5000, symbol: "- "),
              ),
              HomeLatesTransactionsItem(
                iconUrl: 'assets/icons/ic_transaction_category_4.png',
                title: 'Transfer',
                time: 'Aug 27',
                value: formatCurency(123500, symbol: "- "),
              ),
              HomeLatesTransactionsItem(
                iconUrl: 'assets/icons/ic_transaction_category_5.png',
                title: 'Electric',
                time: 'Feb 18',
                value: formatCurency(123000, symbol: "- "),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildSendAgain() {
  return Container(
    margin: const EdgeInsets.only(
      top: 30,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Send Again',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              HomeUserItem(
                imageUrl: "assets/images/img_friend_1.png",
                username: "Yuanita",
              ),
              HomeUserItem(
                imageUrl: "assets/images/img_friend_2.png",
                username: "Jani",
              ),
              HomeUserItem(
                imageUrl: "assets/images/img_friend_3.png",
                username: "Urim",
              ),
              HomeUserItem(
                imageUrl: "assets/images/img_friend_4.png",
                username: "Masa",
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget buildFriendlyTips() {
  return Container(
    margin: const EdgeInsets.only(
      top: 30,
      bottom: 50,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Friendly Tips",
          style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 15),
        ),
        const SizedBox(
          height: 14,
        ),
        const Wrap(
          spacing: 17,
          runSpacing: 18,
          children: [
            HomeTipsItem(
              imageUrl: "assets/images/img_tips_1.png",
              title: "Best tips for using a credit card ",
              url: "https://www.google.com",
            ),
            HomeTipsItem(
              imageUrl: "assets/images/img_tips_2.png",
              title: "Spot the good pie of inance model",
              url: "https://www.google.com",
            ),
            HomeTipsItem(
              imageUrl: "assets/images/img_tips_3.png",
              title: "Great hack to get better advices",
              url: "https://www.google.com",
            ),
            HomeTipsItem(
              imageUrl: "assets/images/img_tips_4.png",
              title: "Save more penny buy this instead",
              url: "https://www.google.com",
            )
          ],
        )
      ],
    ),
  );
}

class MoreDialog extends StatelessWidget {
  const MoreDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      alignment: Alignment.bottomCenter,
      content: Container(
        height: 326,
        padding: const EdgeInsets.all(30),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: lightBackgroundColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Do More With Us",
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Wrap(
              spacing: 29,
              runSpacing: 29,
              children: [
                HomeServiceItem(
                  iconUrl: 'assets/icons/ic_product_data.png',
                  title: 'Data',
                  onTap: () {
                    Navigator.pushNamed(context, "/data-provider");
                  },
                ),
                HomeServiceItem(
                  iconUrl: 'assets/icons/ic_product_water.png',
                  title: 'Water',
                  onTap: () {},
                ),
                HomeServiceItem(
                  iconUrl: 'assets/icons/ic_product_stream.png',
                  title: 'Stream',
                  onTap: () {},
                ),
                HomeServiceItem(
                  iconUrl: 'assets/icons/ic_product_movie.png',
                  title: 'Movie',
                  onTap: () {},
                ),
                HomeServiceItem(
                  iconUrl: 'assets/icons/ic_product_food.png',
                  title: 'Food',
                  onTap: () {},
                ),
                HomeServiceItem(
                  iconUrl: 'assets/icons/ic_product_travel.png',
                  title: 'Travel',
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
