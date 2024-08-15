import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvTypeEnum { dev, prod }

class EnvVariables {
  EnvVariables._();

  static final EnvVariables instance = EnvVariables._();

  String _envType = '';
  String _notificationBaseUrl = '';
  String _testDeviceToken = '';

  Future<void> init({required EnvTypeEnum envType}) async {
    switch (envType) {
      case EnvTypeEnum.dev:
        await dotenv.load(fileName: '.env.dev');


      case EnvTypeEnum.prod:
        await dotenv.load(fileName: '.env.prod');
    }
    _envType = dotenv.get('ENV_TYPE');
    await dotenv.load(fileName:'.env.firebase');
    _notificationBaseUrl = dotenv.get('NOTIFICATION_BASE_URL');
    _testDeviceToken = dotenv.get('TEST_DEVICE_TOKEN');

  }

  String get envType => _envType;
  String get notificationBaseUrl => _notificationBaseUrl;
  String get testDeviceToken => _testDeviceToken;

  bool get debugMode => _envType == 'dev';
}
