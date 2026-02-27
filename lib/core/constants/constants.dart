export 'app_colors.dart';
export 'app_defaults.dart';
export 'app_icons.dart';
export 'app_images.dart';
export 'dummy_data.dart';

//list of npoint io paths
const String LOGO_PREFIX_PATH = "https://martinsangdo.github.io/public/img/cert_logo/"; //where to store logo
const String LOGO_SUFFIX_PATH = ".png"; //file extension

const List<String> CERTIFICATION_CATEGORIES = [
  "AGILE",  //0
  "AI",     //1
  "CLOUD",  //2
  "DATA ENGINEER", //3
  "DIGITAL INTELLIGENCE", //4
  "PROJECT MANAGEMENT", //5
  "SECURITY", //6
  "SOLUTIONS ARCHITECT"
];
const String CERTIFICATION_LIST_PATH = "https://api.npoint.io/c7ab4a7e38083f41af73";

//dynamic global variables
List<dynamic> glb_certification_list_metainfo = [];
// Map<String, String> glb_home_cities = {}; //cities to show in homepage
