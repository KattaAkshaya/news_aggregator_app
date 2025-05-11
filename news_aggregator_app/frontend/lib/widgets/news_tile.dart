import 'package:flutter/material.dart';
import '../models/article.dart';

class NewsTile extends StatelessWidget {
  final Article article;

  const NewsTile({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(8.0),
      title: Text(article.title),
      subtitle: Text(article.description),
      leading: article.urlToImage.isNotEmpty
          ? Image.network(article.urlToImage)
          : SizedBox.shrink(),
      onTap: () {
        // Open article in webview or detailed page
      },
    );
  }
}
