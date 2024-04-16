import 'package:tsitatnik/quote.dart';

// Класс, отвечающий за управление избранными цитатами
class FavoriteQuotes {
  List<Quote> favorites = []; // Список избранных цитат

  // Метод для добавления цитаты в список избранных
  void addToFavorites(Quote quote) {
    favorites.add(quote);
  }

  // Метод для удаления цитаты из списка избранных
  void removeFromFavorites(Quote quote) {
    favorites.remove(quote);
  }

  // Метод для проверки, является ли цитата избранной
  bool isFavorite(Quote quote) {
    return favorites.contains(quote);
  }
}
