import 'package:get/get.dart';
import '../models/article.dart';
import '../services/news_service.dart';

class NewsController extends GetxController {
  var articles = <Article>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchNews();
    super.onInit();
  }

  void fetchNews({String category = '', String query = ''}) async {
    try {
      isLoading(true);
      var newsList = await NewsService.fetchNews(category: category, query: query);
      if (newsList != null) {
        articles.assignAll(newsList);
      }
    } finally {
      isLoading(false);
    }
  }
}
