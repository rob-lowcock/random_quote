import 'package:random_quote/repositories/quote_api_client.dart';

import 'dart:async';

import 'package:random_quote/models/models.dart';

class QuoteRepository {
  final QuoteApiClient quoteApiClient;

  QuoteRepository({required this.quoteApiClient});

  Future<Quote> fetchQuote() async {
    return await quoteApiClient.fetchQuote();
  }
}
