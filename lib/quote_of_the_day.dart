import 'package:flutter/material.dart';
import 'package:tsitatnik/quote.dart';
import 'package:tsitatnik/favorite_quotes.dart';
import 'package:tsitatnik/share_service.dart';

class QuoteOfTheDay extends StatefulWidget {
  final Quote quote; // Цитата дня
  final FavoriteQuotes favoriteQuotes; // Избранные цитаты
  final Function onFavoritePressed; // Обратный вызов для обновления виджета при нажатии на кнопку "избранное"

  QuoteOfTheDay({required this.quote, required this.favoriteQuotes, required this.onFavoritePressed});

  @override
  _QuoteOfTheDayState createState() => _QuoteOfTheDayState();
}

class _QuoteOfTheDayState extends State<QuoteOfTheDay> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.quote.text, // Отображение текста цитаты
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText1?.color, // Используем цвет текста из текущей темы
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'SF Pro Display',
            ),
          ),
          SizedBox(height: 10),
          Text(
            widget.quote.author, // Отображение автора цитаты
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18.0,
              fontFamily: 'SF Pro Display',
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  ShareService.shareQuote(widget.quote); // Обработчик нажатия для кнопки "Поделиться"
                },
                child: Text(
                  'Share', // Текст кнопки "Поделиться"
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SF Pro Display',
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue), // Цвет кнопки "Поделиться"
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0)), // Отступы внутри кнопки
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0), // Закругление углов кнопки
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10), // Отступ между кнопками
              IconButton(
                icon: Icon(
                  widget.favoriteQuotes.isFavorite(widget.quote) ? Icons.star : Icons.star_border, // Иконка "избранное" или "не избранное" в зависимости от состояния
                  color: Colors.yellow, // Цвет иконки "избранное"
                ),
                onPressed: () {
                  setState(() {
                    widget.favoriteQuotes.isFavorite(widget.quote)
                        ? widget.favoriteQuotes.removeFromFavorites(widget.quote) // Удаление из избранного
                        : widget.favoriteQuotes.addToFavorites(widget.quote); // Добавление в избранное
                  });
                  widget.onFavoritePressed(); // Вызов обратного вызова для обновления виджета
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
