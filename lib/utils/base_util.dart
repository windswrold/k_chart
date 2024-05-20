import 'package:common_utils/common_utils.dart';
import 'package:flutter/services.dart';

/// 自定义工具类
class BaseUtil {
  // 小数舍掉指定位数之后
  static String getNumByValueDouble(dynamic num, [int position = 2]) {
    try {
      if (num is double) {
        return NumUtil.getNumByValueDouble(num, position).toString();
      } else if (num is String) {
        return NumUtil.getNumByValueDouble(double.tryParse(num) ?? 0, position)
            .toString();
      }
      return '0.00';
    } catch (err) {
      return '0.00';
    }
  }

  // // 处理时间
  // static String getDateTime(dynamic time) {
  //   if (time is int) {
  //     // print('️⌚️ 时间戳 $time');
  //     return DateUtil.formatDateMs(time, format: DateFormats.full);
  //   } else if (time is String) {
  //     // print('️⌚️ 字符串 $time');
  //     return time;
  //   } else {
  //     // print('️⌚️ 未知 $time');
  //     return '--';
  //   }
  // }
  //
  // // 切 字符串
  // static String getSubstring(String input, int length) {
  //   if (input.length <= length * 2 + 3) {
  //     return input;
  //   }
  //   String start = input.substring(0, length);
  //   String end = input.substring(input.length - length);
  //   return '$start....$end';
  // }
  //
  // static void copy(String? val) async {
  //   if (val == null) return;
  //   await Clipboard.setData(ClipboardData(text: val));
  //   // showToast('复制成功');
  //   HWToast.showText(text: "复制成功");
  // }
  //
  // static String formatNumber(double number) {
  //   // 最小是1
  //   if (number >= 1) {
  //     return number.to4;
  //   }
  //
  //   String numberStr = number.toStringAsFixed(18);
  //   // 拆分成整数部分和小数部分
  //   List<String> parts = numberStr.split('.');
  //   if (parts.length < 2 || parts[1].isEmpty) {
  //     // 没有小数部分或小数部分为空，直接返回原始数据
  //     return numberStr.to4;
  //   }
  //
  //   String integerPart = parts[0];
  //   String fractionalPart = parts[1];
  //
  //   // 统计前导零的个数
  //   int leadingZeros = 0;
  //   for (int i = 0; i < fractionalPart.length; i++) {
  //     if (fractionalPart[i] == '0') {
  //       leadingZeros++;
  //     } else {
  //       break;
  //     }
  //   }
  //
  //   // 如果没有前导零或者所有的数字都是零，返回原始数据
  //   if (leadingZeros < 3 || leadingZeros == fractionalPart.length) {
  //     return numberStr.to4;
  //   }
  //
  //   String lastStr = fractionalPart.substring(leadingZeros);
  //   if (lastStr.length >= 4) {
  //     lastStr = lastStr.substring(0, 4);
  //   }
  //
  //   // 构造结果字符串
  //   String result = '$integerPart.0{$leadingZeros}$lastStr';
  //
  //   return result;
  // }
}
