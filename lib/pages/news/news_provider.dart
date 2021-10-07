import 'package:nikat_flutter/api/api_request.dart';
import 'package:nikat_flutter/model/news_response.dart';

class Newsprovider {
  void getArticle({
    Function()? beforeSend,
    Function(List<Articles>? articles)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    ApiRequest(
            url:
                'https://newsapi.org//v1/articles?source=cnn&sortBy=top&apikey=3309b7e1283f41c7b1d4b5e63c915c33')
        .get(
            beforeSend: () => {beforeSend!()},
            onSuccess: (data) {
              final article = NewsResponse.fromJson(data).articles;
              onSuccess!(article);
            },
            onError: (error) => {onError!(error)});
  }
}
