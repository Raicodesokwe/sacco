import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MpepeService {
  Response? response;
  Dio dio = Dio();
  pay(mbesha, partyB, context) async {
    try {
      response = await dio.get(
          'https://us-central1-projectbnpl.cloudfunctions.net/nyap/mbesha/',
          options: Options(
              contentType: Headers.jsonContentType,
              responseType: ResponseType.json,
              headers: {}),
          queryParameters: {
            'Amount': mbesha,
            'PartyB': partyB,
          });
          print(response!.data.toString());
    } on DioError catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Something went wrong')));
    }
  }
}
