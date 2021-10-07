import 'package:flutter/material.dart';
import 'package:nikat_flutter/model/news_response.dart';
import 'package:nikat_flutter/pages/news/component/news_widget.dart';
import 'package:nikat_flutter/pages/news/news_controller.dart';
import 'package:get/get.dart';

class Newspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GetBuilder<NewsController>(
      builder: (controller) {
        return controller.isLoading == true
            ? Center(
                child: CircularProgressIndicator(),
              )
            : controller.articles == null
                ? Center(
                    child: Text("Network failure"),
                  )
                : ListView.builder(
                    itemCount: controller.articles!.length,
                    itemBuilder: (context, index) => NewsWidget(
                      title: controller.articles![index].title!,
                      imageUrl: controller.articles![index].urlToImage!,
                      desc: controller.articles![index].description!,
                    ),
                  );
      },
    ));
  }
}
