import 'package:share/share.dart';
import 'package:tsitatnik/quote.dart';

class ShareService {
  static void shareQuote(Quote quote) {
    Share.share('${quote.text} - ${quote.author}'); // Поделиться цитатой и её автором
  }
}
