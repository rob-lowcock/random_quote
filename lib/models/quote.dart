import 'package:equatable/equatable.dart';

class Quote extends Equatable {
  final id;
  final String quoteText;
  final String quoteAuthor;
  const Quote({this.id, required this.quoteText, required this.quoteAuthor});

  @override
  List<Object> get props => [id, quoteText, quoteAuthor];

  static Quote fromJson(dynamic json) {
    return Quote(
      id: json['data'][0]['_id'],
      quoteText: json['data'][0]['quoteText'],
      quoteAuthor: json['data'][0]['quoteAuthor'],
    );
  }

  @override
  String toString() => 'Quote { id: $id }';
}
