import '../constants/constants.dart';

class CertificationModel {
  String symbol;
  String name;
  String cover;
  
  CertificationModel({
    required this.symbol,
    required this.name,
    required this.cover,
  });

  factory CertificationModel.fromJson(Map<String, dynamic> json) {
    return CertificationModel(
      symbol: json['s'],
      name: json['n'],
      cover: LOGO_PREFIX_PATH + json['s'] + LOGO_SUFFIX_PATH,
    );
  }
}
