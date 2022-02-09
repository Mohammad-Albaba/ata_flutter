import 'dart:io';

import 'package:beauty_app/core/errors/base_error.dart';
import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../main.dart';
import 'ApiUrl.dart';

class DioHelper {
  static Dio _dio;

  static BaseOptions options = BaseOptions(
      baseUrl: ApiUrl.BASICURL,
      receiveDataWhenStatusError: true,
      connectTimeout: 50 * 1000, // 50 seconds
      receiveTimeout: 50 * 1000 // 50 seconds
      );

  static Dio getDio() {
    if (_dio == null) {
      _dio = Dio(options);
    }
    return _dio;
  }
}

class Network {
  // function Exception handler
  static handelException(e) {
    if (e.type == DioErrorType.connectTimeout) {
      return BaseError(message: "The request has timed out, try again".tr());
    }
    if (e.type == DioErrorType.other) {
      // print(AppSharedPreferences.accessToken);
      return BaseError(message: "no connect the network".tr());
    }
    if (e.response.statusCode == 401) {
//      navigatorKey.currentState.pushReplacement(
//        MaterialPageRoute(builder: (context) => LoginPage(Unauthorized: true,),),);
      return BaseError(message: "Error 401".tr());
    } else {
      return BaseError(message: "Error".tr());
    }
  }
}
