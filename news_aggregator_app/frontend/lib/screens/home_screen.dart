import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/news_controller.dart';
import '../widgets/news_tile.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final NewsController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text('News Aggregator'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: NewsSearchDelegate());
            },
          )
        ],
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: controller.articles.length,
          itemBuilder: (context, index) {
            return NewsTile(article: controller.articles[index]);
          },
        );
      }),
    );
  }
}

class NewsSearchDelegate extends SearchDelegate {
  @override
  String get searchFieldLabel => 'Search news...';

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildResults(BuildContext context) {
    final NewsController controller = Get.find();
    controller.fetchNews(query: query);
    return Obx(() {
      if (controller.isLoading.value) {
        return Center(child: CircularProgressIndicator());
      }
      return ListView.builder(
        itemCount: controller.articles.length,
        itemBuilder: (context, index) {
          return NewsTile(article: controller.articles[index]);
        },
      );
    });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final NewsController controller = Get.find();
    controller.fetchNews(query: query);
    return Obx(() {
      if (controller.isLoading.value) {
        return Center(child: CircularProgressIndicator());
      }
      return ListView.builder(
        itemCount: controller.articles.length,
        itemBuilder: (context, index) {
          return NewsTile(article: controller.articles[index]);
        },
      );
    });
  }
}
