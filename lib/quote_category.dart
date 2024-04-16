// quote_category.dart - содержит экраны для отображения списка категорий цитат и цитат определенной категории

import 'package:flutter/material.dart';
import 'package:tsitatnik/quote.dart';
import 'package:tsitatnik/quote_repository.dart';

// Экран для отображения списка категорий цитат
class QuoteCategoryScreen extends StatelessWidget {
  final QuoteRepository _quoteRepository = QuoteRepository(); // Репозиторий цитат

  @override
  Widget build(BuildContext context) {
    final List<String> categories = _quoteRepository.getAllCategories(); // Получаем список всех категорий цитат

    // Возвращаем список категорий цитат в виде списка ListTile
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        return ListTile(
          title: Text(
            category,
            style: TextStyle(
              fontSize: 16.0,
              fontFamily: 'SF Pro Display',
            ),
          ),
          onTap: () {
            // Переходим на экран деталей категории при нажатии на категорию
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuoteCategoryDetailScreen(category: category),
              ),
            );
          },
        );
      },
    );
  }
}

// Экран для отображения цитат определенной категории
class QuoteCategoryDetailScreen extends StatelessWidget {
  final String category; // Выбранная категория
  final QuoteRepository _quoteRepository = QuoteRepository(); // Репозиторий цитат

  QuoteCategoryDetailScreen({required this.category}); // Конструктор с обязательным параметром - категорией

  @override
  Widget build(BuildContext context) {
    final List<Quote> quotes = _quoteRepository.fetchQuotesByCategory(category); // Получаем цитаты для выбранной категории

    // Возвращаем экран с заголовком категории и списком цитат
    return Scaffold(
      appBar: AppBar(
        title: Text(category), // Заголовок - название категории
      ),
      body: ListView.builder(
        itemCount: quotes.length,
        itemBuilder: (context, index) {
          final quote = quotes[index];
          return ListTile(
            title: Text(
              quote.text,
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'SF Pro Display',
              ),
            ),
            subtitle: Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                fontFamily: 'SF Pro Display',
              ),
            ),
          );
        },
      ),
    );
  }
}
