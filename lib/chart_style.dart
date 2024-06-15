import 'package:flutter/material.dart' show Color;

class ChartColors {
  List<Color> bgColor = [const Color(0xffffffff), const Color(0xffffffff)];

  Color kLineColor = const Color(0xff4C86CD); // K线颜色（蓝色）
  Color lineFillColor = const Color(0x554C86CD); // K线填充颜色（半透明蓝色）
  Color lineFillInsideColor = const Color(0x00000000); // K线内填充颜色（透明）

  Color ma5Color = const Color(0xffC9B885); // MA5线颜色（淡黄色）
  Color ma10Color = const Color(0xff6CB0A6); // MA10线颜色（青绿色）
  Color ma30Color = const Color(0xff9979C6); // MA30线颜色（紫色）

  Color upColor = const Color(0xff15A479); // 上涨颜色（绿色）
  Color dnColor = const Color(0xffEB5F54); // 下跌颜色（红色）
  Color volColor = const Color(0xff4729AE); // 成交量颜色（深紫色）

  Color macdColor = const Color(0xff4729AE); // MACD线颜色（深紫色）
  Color difColor = const Color(0xffC9B885); // DIF线颜色（淡黄色）
  Color deaColor = const Color(0xff6CB0A6); // DEA线颜色（青绿色）

  Color kColor = const Color(0xffC9B885); // K线颜色（淡黄色）
  Color dColor = const Color(0xff6CB0A6); // D线颜色（青绿色）
  Color jColor = const Color(0xff9979C6); // J线颜色（紫色）
  Color rsiColor = const Color(0xffC9B885); // RSI线颜色（淡黄色）

  Color defaultTextColor = const Color(0xff60738E); // 默认文字颜色（灰蓝色）

  Color nowPriceUpColor = const Color(0xff15A479); // 当前价格上涨颜色（绿色）
  Color nowPriceDnColor = const Color(0xffEB5F54); // 当前价格下跌颜色（红色）
  Color nowPriceTextColor = const Color(0xffffffff); // 当前价格文字颜色（白色）

  Color depthBuyColor = const Color(0xff15A479); // 深度买入颜色（浅绿色）
  Color depthSellColor = const Color(0xffEB5F54); // 深度卖出颜色（红色）

  Color selectBorderColor = const Color(0xffa2a2a2); // 选中后显示值边框颜色（灰蓝色）
  Color selectFillColor = const Color(0xfff1f1f1); // 选中后显示值背景的填充颜色（深蓝色）

  Color gridColor = const Color(0xffefefef); // 分割线颜色（深蓝色）

  Color infoWindowNormalColor = const Color(0xff000000); // 信息窗口正常颜色（白色）
  Color infoWindowTitleColor = const Color(0xff000000); // 信息窗口标题颜色（白色）
  Color infoWindowUpColor = const Color(0xff15A479); // 信息窗口上涨颜色（绿色）
  Color infoWindowDnColor = const Color(0xffEB5F54); // 信息窗口下跌颜色（红色）

  Color hCrossColor = const Color(0xff000000); // 水平十字线颜色（白色）
  Color vCrossColor = const Color(0x1e676767); // 垂直十字线颜色（半透明白色）
  Color crossTextColor = const Color(0xff000000); // 十字线文字颜色（白色）

  Color maxColor = const Color(0xffa2a2a2); // 当前显示内最大值颜色（白色）
  Color minColor = const Color(0xffa2a2a2); // 当前显示内最小值颜色（白色）

  Color getMAColor(int index) {
    switch (index % 3) {
      case 1:
        return ma10Color;
      case 2:
        return ma30Color;
      default:
        return ma5Color;
    }
  }
}

class ChartStyle {
  double topPadding = 30.0;

  double bottomPadding = 20.0;

  double childPadding = 12.0;

  //点与点的距离
  double pointWidth = 11.0;

  //蜡烛宽度
  double candleWidth = 8.5;

  //蜡烛中间线的宽度
  double candleLineWidth = 1.5;

  //vol柱子宽度
  double volWidth = 8.5;

  //macd柱子宽度
  double macdWidth = 3.0;

  //垂直交叉线宽度
  double vCrossWidth = 8.5;

  //水平交叉线宽度
  double hCrossWidth = 0.5;

  //现在价格的线条长度
  double nowPriceLineLength = 1;

  //现在价格的线条间隔
  double nowPriceLineSpan = 1;

  //现在价格的线条粗细
  double nowPriceLineWidth = 1;

  int gridRows = 4;

  int gridColumns = 4;

  //下方時間客製化
  List<String>? dateTimeFormat;
}
