import 'package:flutter/material.dart';
import 'package:tsitatnik/favorite_screen.dart';
import 'package:tsitatnik/quote_category_screen.dart';
import 'package:tsitatnik/quote_of_the_day.dart';
import 'package:tsitatnik/favorite_quotes.dart';
import 'package:tsitatnik/quote_repository.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late FavoriteQuotes _favoriteQuotes;
  late TabController _tabController;
  late QuoteRepository _quoteRepository;
  bool _isDarkModeEnabled = false; // Переменная для отслеживания темы приложения

  @override
  void initState() {
    super.initState();
    _favoriteQuotes = FavoriteQuotes(); // Инициализация списка избранных цитат
    _quoteRepository = QuoteRepository(); // Инициализация репозитория цитат
    _tabController = TabController(length: 3, vsync: this); // Инициализация контроллера вкладок
  }

  @override
  void dispose() {
    _tabController.dispose(); // Высвобождение ресурсов контроллера вкладок
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Создание темы приложения с учетом выбранной пользователем темы
    final themeData = _isDarkModeEnabled
        ? ThemeData.dark().copyWith(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.bold,
        ),
      ),
    )
        : ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    return MaterialApp(
      theme: themeData, // Установка темы приложения
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quote Bliss (QB)'),
          backgroundColor: themeData.appBarTheme.backgroundColor,
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(_isDarkModeEnabled ? Icons.light_mode : Icons.dark_mode),
              onPressed: () {
                setState(() {
                  _isDarkModeEnabled = !_isDarkModeEnabled;
                });
              },
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(icon: Icon(Icons.today), text: 'Day quote'),
              Tab(icon: Icon(Icons.star), text: 'Favorites'),
              Tab(icon: Icon(Icons.category), text: 'Category'),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            QuoteOfTheDay(
              quote: _quoteRepository.fetchDailyQuote(),
              favoriteQuotes: _favoriteQuotes,
              onFavoritePressed: () {
                _tabController.animateTo(1);
              },
            ),
            FavoriteScreen(favoriteQuotes: _favoriteQuotes),
            QuoteCategoryScreen(),
          ],
        ),
      ),
    );
  }
}
