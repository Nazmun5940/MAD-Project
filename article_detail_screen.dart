import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:fitme/models/fitness_article.dart';

class ArticleDetailScreen extends StatelessWidget {
  final FitnessArticle article;

  const ArticleDetailScreen({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(article.title)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey[300],
              child: Center(
                child: Icon(
                  _getCategoryIcon(article.category),
                  size: 80,
                  color: Colors.grey[700],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    article.title,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: _getCategoryColor(
                        article.category,
                      ).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      article.category,
                      style: TextStyle(
                        color: _getCategoryColor(article.category),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  MarkdownBody(
                    data: article.content,
                    styleSheet: MarkdownStyleSheet(
                      h1: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                      h2: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      h3: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      p: TextStyle(fontSize: 16, height: 1.5),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  IconData _getCategoryIcon(String category) {
    // Physical fitness categories
    if (category == 'Strength Training') return Icons.fitness_center;
    if (category == 'Cardio') return Icons.directions_run;
    if (category == 'Nutrition') return Icons.restaurant;

    // Mental wellness categories
    if (category == 'Meditation') return Icons.self_improvement;
    if (category == 'Stress Management') return Icons.spa;
    if (category == 'Positive Psychology')
      return Icons.sentiment_very_satisfied;

    return Icons.article;
  }

  Color _getCategoryColor(String category) {
    // Physical fitness categories
    if (category == 'Strength Training') return Colors.red;
    if (category == 'Cardio') return Colors.blue;
    if (category == 'Nutrition') return Colors.green;

    // Mental wellness categories
    if (category == 'Meditation') return Colors.purple;
    if (category == 'Stress Management') return Colors.teal;
    if (category == 'Positive Psychology') return Colors.amber;

    return Colors.indigo;
  }
}
