import 'dart:convert';

import 'package:api_project/number_fact_response/number_fact_response.dart';
import 'package:http/http.dart' as http;

Future<NumberFactResponse> getNumberFact({required String number}) async {
  final _response =
      await http.get(Uri.parse('http://numbersapi.com/$number?json'));
  final _bodyAsJson = jsonDecode(_response.body) as Map<String, dynamic>;
  final _data = NumberFactResponse.fromJson(_bodyAsJson);
  return _data;
}
