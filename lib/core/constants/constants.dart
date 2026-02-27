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
const List<String> CATEGORY_LIST = [
  "AWS",
  "Azure",
  "CompTIA",
  "Databricks",
  "GCP",
  "ISACA",
  "NVIDIA",
  "PMI",
  "PRINCE2",
  "Scrum",
  "ServiceNow",
  "Snowflake",
  "Terraform",
  "Others"
];
const CATEGORY_GROUPS = {
  "AWS":["AWS_CLF_C02", "AWS_AIF", "AWS_DVA_C02", "AWS_AIP_C01", "AWS_DEA_C01", "AWS_MLA", "AWS_SAA", "AWS_SAP", "AWS_DOP", "AWS_ANS_C01"],
  "Azure": ["AZ_AI_102", "AZ_AI_900", "AZ_DP_900", "AZ_DP_100", "AZ_DP_300", "AZ_AZ_204", "AZ_AZ_900", "AZ_AZ_700", "AZ_AZ_500","AZ_SA_305", "AZ_AZ_400"],
  "CompTIA": ["COMP_A_PLUS", "COMP_CLOUD_NETX", "COMP_SECURITY_X", "COMP_CLOUD_PLUS", "COMP_CYSA", "COMP_PEN_TEST","COMP_SEC_AI"],
  "Databricks": ["DTB_DEA", "DTB_CDEP", "DTB_GAEA", "DTB_ADAS", "DTB_DAA", "DTB_MLA","DTB_MLP"],
  "GCP": ["GCP_PCDataE", "GCP_ACE", "GCP_GAL", "GCP_PCA", "GCP_PCDE", "GCP_PCDOE","GCP_PCSE", "GCP_PCNE", "GCP_PMLE"],
  "ISACA": ["ISC_CISSP", "ISACA_CISA", "ISACA_CISM", "ISACA_CRISC", "ISACA_AAISM", "ISACA_AIF", "ISACA_AAIA", "ISC_CCSP"],
  "NVIDIA": ["NCA_GENL", "NCA_GENM", "NCP_GENL", "NCP_AAI", "NCP_ADS", "NCP_AII"],
  "PMI": ["PMP", "PMI_CAPM", "PMI_PgMP", "PMI_PfMP", "PMI_PMOCP", "PMI-ACP", "PMI_PBA", "PMI_CPMAI"],
  "PRINCE2": ["PRINCE_AF", "PRINCE_PMF"],
  "Scrum": ["PSM_1", "PSM_2", "SCRUM_PSPO_I", "SCRUM_PSPO_II", "SCRUM_PAL_1", "SCRUM_PSD_1", "SCRUM_PSK_1", "SCRUM_CSM"],
  "ServiceNow": ["SERV_CAD", "SERV_CTA"],
  "Snowflake": ["SNOW_SAA", "SNOW_SADE", "SNOW_SADS", "SNOW_SSGA", "SNOW_SADA"],
  "Terraform": ["TERRA_A_004", "DOCKER_DCA"],
  "Others": ["SAFE_ARCH", "TOGAF_STAND", "ECC_CEH", "ITIL_FOUNDATION"]
};
const String CERTIFICATION_LIST_PATH = "https://api.npoint.io/c7ab4a7e38083f41af73";

//dynamic global variables
List<dynamic> glb_certification_list_metainfo = [];
// Map<String, String> glb_home_cities = {}; //cities to show in homepage
