import 'package:flutter/cupertino.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shoply/core/localization/app_localizations.dart';

class AppInfo {
  AppInfo._();
static Future<String> getAppVersion(BuildContext context) async{
  var appVersion ='';
  if(AppLocalizations.of(context)!.isEnLocale){
 final   packageInfo = await PackageInfo.fromPlatform();
 appVersion = '${packageInfo.version} (${packageInfo.buildNumber})';
  }else {
    final   packageInfo = await PackageInfo.fromPlatform();

    appVersion = '(${packageInfo.buildNumber})${packageInfo.version} ';
  }
  return appVersion;
}
}
