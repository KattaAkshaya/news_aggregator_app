import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/article.dart';

class NewsService {
  static const String _baseUrl = 'https://newsapi.org/v2/top-headlines';
  static const String _apiKey = 'YOUR_NEWSAPI_KEY'; // Replace with your API key

  static Future<List<Article>> fetchNews({String category = '', String query = ''}) async {
    try {
      final Map<String, String> queryParams = {
        'country': 'us',
        'apiKey': _apiKey,
      };

      if (category.isNotEmpty) {
        queryParams['category'] = category;
      }

      if (query.isNotEmpty) {
        queryParams['q'] = query;
      }

      final uri = Uri.parse(_baseUrl).replace(queryParameters: queryParams);
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final List articlesJson = data['articles'];
        return articlesJson.map((json) => Article.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load news');
      }
    } catch (e) {
      print('Error fetching news: $e');
      return [];
    }
  }
}
