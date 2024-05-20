import 'dart:math';

// import 'package:wallet/util/base_util.dart';

class NumberUtil {
  static String format(dynamic n) {
    if (n is String) {
      n = double.tryParse(n) ?? 0;
    }

    if (n >= 1000000000) {
      n /= 1000000000;
      return "${n.toStringAsFixed(2)}B";
    } else if (n >= 1000000) {
      n /= 1000000;
      return "${n.toStringAsFixed(2)}M";
    } else if (n >= 10000) {
      n /= 1000;
      return "${n.toStringAsFixed(2)}K";
    } else {
      return BaseUtil.getNumByValueDouble(n, 4);
      // return n.toStringAsFixed(4);
    }
  }

  static int getDecimalLength(double b) {
    String s = b.toString();
    int dotIndex = s.indexOf(".");
    if (dotIndex < 0) {
      return 0;
    } else {
      return s.length - dotIndex - 1;
    }
  }

  static int getMaxDecimalLength(double a, double b, double c, double d) {
    // int result = max(getDecimalLength(a), getDecimalLength(b));
    // result = max(result, getDecimalLength(c));
    // result = max(result, getDecimalLength(d));
    // result = min(result, 8);
    if (b > 1) {
      return 4;
    } else {
      return 8;
    }
    // print('🐞 result $result');
    // 锁定输出长度
    // return 8;
  }

  static bool checkNotNullOrZero(double? a) {
    if (a == null || a == 0) {
      return false;
    } else if (a.abs().toStringAsFixed(4) == "0.0000") {
      return false;
    } else {
      return true;
    }
  }
}
