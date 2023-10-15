// ignore_for_file: deprecated_member_use

import 'package:dio/dio.dart';

class Failuers {
  final String massage;

  Failuers({required this.massage});
}

class ServiersFailuers extends Failuers {
  ServiersFailuers({required super.massage});

  factory ServiersFailuers.fromDioError(DioError e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServiersFailuers(massage: 'connectionTimeout with api Servier');
      case DioExceptionType.sendTimeout:
        return ServiersFailuers(massage: 'send time out with api Servier');
      case DioExceptionType.receiveTimeout:
        return ServiersFailuers(massage: 'recivedTime out with api Servier');
      case DioExceptionType.badCertificate:
        return ServiersFailuers(massage: 'badCertificate with api Servier');
      case DioExceptionType.badResponse:
        return ServiersFailuers.fromResponse(
            e.response!.statusCode!, e.response!.data);
      case DioExceptionType.cancel:
        return ServiersFailuers(massage: 'cancel with api Servier');
      case DioExceptionType.connectionError:
        return ServiersFailuers(massage: 'connectionError with api Servier');
      case DioExceptionType.unknown:
        return ServiersFailuers(massage: 'unknown with api Servier');
    }
  }

  factory ServiersFailuers.fromResponse(int statescode, dynamic response) {
    if (statescode == 404) {
      return ServiersFailuers(
          massage: 'Your request is not found ,please try later ');
    } else if (statescode == 500) {
      return ServiersFailuers(
          massage: 'ther are the problem please try later,');
    } else if (statescode == 400 || statescode == 401 || statescode == 403) {
      return ServiersFailuers(massage: response['error']['message']);
    } else {
      return ServiersFailuers(massage: 'Ther was an error pleas try agine');
    }
  }
}
