import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:intl/intl.dart';

void showCustomSnackbar(BuildContext context, String messgae) {
  Flushbar(
    message: messgae,
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: redColor,
    duration: const Duration(seconds: 2),
  ).show(context);
}

String formatCurency(
  num number, {
  String symbol = "Rp ",
}) {
  return NumberFormat.currency(
    locale: "id",
    symbol: symbol,
    decimalDigits: 0,
  ).format(number);
}