import '../models/dummy_bundle_model.dart';
import '../models/dummy_product_model.dart';
import '../models/certification_model.dart';

class Dummy {
  /// List Of Dummy Products
  static List<ProductModel> products = [
    ProductModel(
      name: 'PMI Professional in Business Analysis (PMI-PBA)',
      weight: '800 gm',
      cover: 'https://martinsangdo.github.io/public/img/cert_logo/PMI_PBA.png',
      images: ['https://i.imgur.com/6unJlSL.png'],
      price: 13,
      mainPrice: 15,
    ),
    ProductModel(
      name: 'Vanilla Ice Cream Banana',
      weight: '500 gm',
      cover: 'https://i.imgur.com/oaCY49b.png',
      images: ['https://i.imgur.com/oaCY49b.png'],
      price: 12,
      mainPrice: 15,
    ),
    ProductModel(
      name: 'Meat',
      weight: '1 Kg',
      cover: 'https://i.imgur.com/5wghZji.png',
      images: ['https://i.imgur.com/5wghZji.png'],
      price: 15,
      mainPrice: 18,
    ),
  ];

  /// List Of Dummy Bundles
  static List<BundleModel> bundles = [
    BundleModel(
      name: 'PMI Project Management Professional (PMP)',
      cover: 'https://martinsangdo.github.io/public/img/cert_logo/PMP.png',
      itemNames: ['Onion, Oil, Salt'],
      price: 35,
      mainPrice: 50.32,
    ),
    BundleModel(
      name: 'Medium Spices Pack',
      cover: 'https://i.postimg.cc/qtM4zj1K/packs-2.png',
      itemNames: ['Onion, Oil, Salt'],
      price: 35,
      mainPrice: 50.32,
    ),
    BundleModel(
      name: 'Bundle Pack',
      cover: 'https://i.postimg.cc/MnwW8WRd/pack-1.png',
      itemNames: ['Onion, Oil, Salt'],
      price: 35,
      mainPrice: 50.32,
    ),
    BundleModel(
      name: 'Bundle Pack',
      cover: 'https://i.postimg.cc/k2y7Jkv9/pack-4.png',
      itemNames: ['Onion, Oil, Salt'],
      price: 35,
      mainPrice: 50.32,
    ),
  ];

  static List<CertificationModel> certifications = [
    CertificationModel(
      symbol: 'PMP',
      name: 'PMI Project Management Professional (PMP)',
      cover: 'https://martinsangdo.github.io/public/img/cert_logo/PMP.png',
    ),
    CertificationModel(
      symbol: 'PMI_CAPM',
      name: 'PMI Certified Associate in Project Management (CAPM)',
      cover: 'https://martinsangdo.github.io/public/img/cert_logo/PMI_CAPM.png',
    ),
  ];
}
