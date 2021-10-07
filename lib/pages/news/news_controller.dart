import 'dart:developer';

import 'package:get/get.dart';
import 'package:nikat_flutter/model/news_response.dart';
import 'package:nikat_flutter/pages/news/news_provider.dart';

class NewsController extends GetxController {
  List<Articles>? articles;
  bool isLoading = true;
  @override
  void onInit() {
    Newsprovider().getArticle(onSuccess: (article) {
      log(article![0].title!);
      log("hkhkjhkjh");
      articles = article;

      isLoading = false;
      update();
    }, onError: (error) {
      isLoading = false;
      update();
      print("Error");
      log(error);
    });
    super.onInit();
  }
}
