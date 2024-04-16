import 'package:flutter/material.dart';
import 'package:tsitatnik/quote.dart';
import 'package:tsitatnik/favorite_quotes.dart';

// Экран, отображающий список избранных цитат
class FavoriteScreen extends StatefulWidget {
  final FavoriteQuotes favoriteQuotes; // Список избранных цитат

  FavoriteScreen({required this.favoriteQuotes}); // Конструктор класса

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // Построение списка избранных цитат
      itemCount: widget.favoriteQuotes.favorites.length,
      itemBuilder: (context, index) {
        Quote quote = widget.favoriteQuotes.favorites[index];
        return ListTile(
          // Элемент списка, отображающий информацию о цитате
          title: Text(quote.text), // Заголовок цитаты
          subtitle: Text(quote.author), // Автор цитаты
          trailing: IconButton(
            // Кнопка удаления цитаты из избранных
            icon: Icon(Icons.delete), // Иконка кнопки
            onPressed: () {
              // Обработчик нажатия кнопки
              setState(() {
                widget.favoriteQuotes.removeFromFavorites(quote); // Удаление цитаты из списка избранных
              });
            },
          ),
        );
      },
    );
  }
}
