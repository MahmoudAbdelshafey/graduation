
import 'package:flutter/material.dart';

import '../constants/Constants.dart';

BoxDecoration monthlyNotSelectedPackageItem = BoxDecoration(
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(10),
      bottomLeft: Radius.circular(10),

    ),
    border: Border.all(
        color: AppConstants.kPrimaryColor, width: 2));

BoxDecoration monthlySelectedPackageItem = BoxDecoration(
    color: AppConstants.kPrimaryColor,
    borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10),
        bottomLeft: Radius.circular(10)),
    border: Border.all(
        color: AppConstants.kPrimaryColor, width: 2));

BoxDecoration weaklyNotSelectedPackageItem = BoxDecoration(
    borderRadius: const BorderRadius.only(
      topRight: Radius.circular(10),
      bottomRight: Radius.circular(10),

    ),
    border: Border.all(
        color: AppConstants.kPrimaryColor, width: 2));

BoxDecoration weaklySelectedPackageItem = BoxDecoration(
    color: AppConstants.kPrimaryColor,
    borderRadius: const BorderRadius.only(
        topRight: Radius.circular(10),
        bottomRight: Radius.circular(10)),
    border: Border.all(
        color: AppConstants.kPrimaryColor, width: 2));