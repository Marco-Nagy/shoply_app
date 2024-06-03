import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class DeviceUtil {
  static String _getDeviceType(BuildContext context) {
    final view = View.of(context);
    final data = MediaQueryData.fromView(view);
    return data.size.shortestSide < 600 ? 'phone' : 'tablet';
  }

  static bool get isTablet {
    return _getDeviceType.toString().contains('tablet') ;
  }
}

