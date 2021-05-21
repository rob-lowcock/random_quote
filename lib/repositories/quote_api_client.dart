import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:random_quote/models/models.dart';

class QuoteApiClient {
  final _baseUrl = 'https://quote-garden.herokuapp.com/api/v3';
  final http.Client httpClient;
  QuoteApiClient({
    required this.httpClient,
  });

  Future<Quote> fetchQuote() async {
    final url = '$_baseUrl/quotes/random';
    final response = await this.httpClient.get(Uri.parse(url));

    if (response.statusCode != 200) {
      throw new Exception('error getting quote');
    }

    final json = jsonDecode(response.body);
    return Quote.fromJson(json);
  }
}
