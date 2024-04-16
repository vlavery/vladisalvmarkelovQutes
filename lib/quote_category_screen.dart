// quote_category_screen.dart - содержит экран для отображения списка цитат по выбранной категории

import 'package:flutter/material.dart';
import 'package:tsitatnik/quote.dart';
import 'package:tsitatnik/quote_repository.dart';

class QuoteCategoryScreen extends StatefulWidget {
  @override
  _QuoteCategoryScreenState createState() => _QuoteCategoryScreenState();
}

class _QuoteCategoryScreenState extends State<QuoteCategoryScreen> {
  late List<String> _categories; // Список категорий цитат
  late String _selectedCategory; // Выбранная категория
  late QuoteRepository _quoteRepository; // Репозиторий цитат
  late List<Quote> _quotes; // Список цитат для выбранной категории

  @override
  void initState() {
    super.initState();
    _quoteRepository = QuoteRepository(); // Инициализация репозитория цитат
    _categories = _quoteRepository.getAllCategories(); // Получение списка всех категорий
    _selectedCategory = _categories.first; // Установка первой категории по умолчанию
    _quotes = _quoteRepository.fetchQuotesByCategory(_selectedCategory); // Получение цитат для выбранной категории
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Основной виджет экрана
      body: Column(
        children: [
          // Выпадающий список для выбора категории
          DropdownButton(
            value: _selectedCategory,
            items: _categories.map((category) {
              return DropdownMenuItem(
                value: category,
                child: Text(category),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                _selectedCategory = value.toString(); // Обновление выбранной категории
                _quotes = _quoteRepository.fetchQuotesByCategory(_selectedCategory); // Получение цитат для выбранной категории
              });
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _quotes.length,
              itemBuilder: (context, index) {
                Quote quote = _quotes[index];
                return ListTile(
                  title: Text(quote.text),
                  subtitle: Text(quote.author),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
