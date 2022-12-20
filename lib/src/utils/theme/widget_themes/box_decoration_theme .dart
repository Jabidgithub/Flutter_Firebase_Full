import 'package:flutter/material.dart';
import 'package:flutter_authentication/src/constants/colors.dart';
import 'package:flutter_authentication/src/constants/sizes.dart';

class TBoxDecotaion {
  TBoxDecotaion._();

  static final lightboxDecorationButtonTheme = BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    color: Colors.grey.shade200,
  );
  static final darkboxDecorationButtonTheme = BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    color: Colors.grey.shade800,
  );
}
