import 'package:flutter/material.dart';

import '../../core/components/app_back_button.dart';
import '../../core/components/buy_now_row_button.dart';
import '../../core/components/price_and_quantity.dart';
import '../../core/components/product_images_slider.dart';
import '../../core/components/review_row_button.dart';
import '../../core/constants/app_defaults.dart';
import '../../core/models/certification_model.dart';
import '../../core/components/network_image.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../core/models/question_model.dart';
import '../../core/components/expandable_text.dart';

class ProductDetailsPage extends StatefulWidget {
  final CertificationModel data;
  const ProductDetailsPage({super.key, required this.data});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  List<dynamic> questions = [];

  void fetchQuestions() async {
    String url = 'https://api.npoint.io/' + widget.data.file_url;
    final response = await http.Client().get(Uri.parse(url));
    if (response.statusCode != 200) {
      debugPrint('Cannot get questions from cloud');
    } else {
      setState(() {
        questions = jsonDecode(response.body);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchQuestions();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int question_index = 1;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: const AppBackButton(),
        title: Text(widget.data.name),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDefaults.padding),
          child: BuyNowRow(
            onBuyButtonTap: () {},
            onCartButtonTap: () {},
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NetworkImageWithLoader(
              widget.data.cover,
              fit: BoxFit.contain,
            ),
            //list of questions
            for (var question in questions) ...[
              Padding(
                padding: const EdgeInsets.all(AppDefaults.padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      (question_index++).toString() + ") " + question['q'],
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 8),
                    for (var option in question['o'].entries) ...[
                      Text(
                        option.key + ") " + option.value,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.black,
                            ),
                      ),
                    ],
                    //show the expand here
                    ExpandableAnswer(
                      answer: question['a'],
                      explanations: question['e'],
                    ),
                  ],
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
