import '../constants/constants.dart';

class QuestionModel {
  String question;
  Map<String, String> options;
  String answer;
  Map<String, String> explanations;

  QuestionModel({
    required this.question,
    required this.options,
    required this.answer,
    required this.explanations,
  });

  factory QuestionModel.fromJson(Map<String, dynamic> json) {
    return QuestionModel(
      question: json['q'],
      options: json['o'],
      answer: json['a'],
      explanations: json['e']
    );
  }
}
