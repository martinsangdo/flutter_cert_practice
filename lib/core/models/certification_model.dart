import '../constants/constants.dart';

class CertificationModel {
  String symbol;
  String name;
  String cover;
  String file_url;
  String url;
  
  CertificationModel({
    required this.symbol,
    required this.name,
    required this.cover,  //cover url
    required this.file_url,  //file url where questions are stored
    required this.url,  //url to buy the certification exams
  });

  factory CertificationModel.fromJson(Map<String, dynamic> json) {
    return CertificationModel(
      symbol: json['s'],
      name: json['n'],
      cover: LOGO_PREFIX_PATH + json['s'] + LOGO_SUFFIX_PATH,
      file_url: json['f'],
      url: 'https://www.udemy.com/course/' + json['l'],
    );
  }
}
