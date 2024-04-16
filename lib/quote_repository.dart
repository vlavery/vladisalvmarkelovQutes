// quote_repository.dart
import 'dart:math';
import 'package:tsitatnik/quote.dart';

class QuoteRepository {
  List<Quote> _quotes = [
    Quote(
      text: "The only way to do great work is to love what you do.",
      author: "Steve Jobs",
      category: "Inspiration",
    ),
    Quote(
      text: "In the middle of difficulty lies opportunity.",
      author: "Albert Einstein",
      category: "Wisdom",
    ),
    Quote(
      text: "Success is not final, failure is not fatal: It is the courage to continue that counts.",
      author: "Winston Churchill",
      category: "Success",
    ),
    Quote(
      text: "The future belongs to those who believe in the beauty of their dreams.",
      author: "Eleanor Roosevelt",
      category: "Dreams",
    ),
    Quote(
      text: "It always seems impossible until it's done.",
      author: "Nelson Mandela",
      category: "Perseverance",
    ),
    Quote(
      text: "The only limit to our realization of tomorrow will be our doubts of today.",
      author: "Franklin D. Roosevelt",
      category: "Hope",
    ),
    Quote(
      text: "You miss 100% of the shots you don't take.",
      author: "Wayne Gretzky",
      category: "Motivation",
    ),
    Quote(
      text: "Life is 10% what happens to us and 90% how we react to it.",
      author: "Charles R. Swindoll",
      category: "Life",
    ),
    Quote(
      text: "Believe you can and you're halfway there.",
      author: "Theodore Roosevelt",
      category: "Believe",
    ),
    Quote(
      text: "The best way to predict the future is to create it.",
      author: "Peter Drucker",
      category: "Future",
    ),
    Quote(
      text: "The only impossible journey is the one you never begin.",
      author: "Tony Robbins",
      category: "Journey",
    ),
    Quote(
      text: "Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful.",
      author: "Albert Schweitzer",
      category: "Happiness",
    ),
    Quote(
      text: "You must be the change you wish to see in the world.",
      author: "Mahatma Gandhi",
      category: "Change",
    ),
    Quote(
      text: "The only thing standing between you and your goal is the story you keep telling yourself as to why you can't achieve it.",
      author: "Jordan Belfort",
      category: "Goal",
    ),
    Quote(
      text: "If you want to lift yourself up, lift up someone else.",
      author: "Booker T. Washington",
      category: "Kindness",
    ),
    Quote(
      text: "It's not whether you get knocked down, it's whether you get up.",
      author: "Vince Lombardi",
      category: "Resilience",
    ),
    Quote(
      text: "The way to get started is to quit talking and begin doing.",
      author: "Walt Disney",
      category: "Action",
    ),
    Quote(
      text: "Life is what happens when you're busy making other plans.",
      author: "John Lennon",
      category: "Life",
    ),
    Quote(
      text: "Believe in yourself and all that you are. Know that there is something inside you that is greater than any obstacle.",
      author: "Christian D. Larson",
      category: "Believe",
    ),
    Quote(
      text: "Success is walking from failure to failure with no loss of enthusiasm.",
      author: "Winston Churchill",
      category: "Success",
    ),
    Quote(
      text: "In the end, it's not the years in your life that count. It's the life in your years.",
      author: "Abraham Lincoln",
      category: "Life",
    ),
    Quote(
      text: "The only person you should try to be better than is the person you were yesterday.",
      author: "Anonymous",
      category: "Self-Improvement",
    ),
    Quote(
      text: "The best revenge is massive success.",
      author: "Frank Sinatra",
      category: "Success",
    ),
    Quote(
      text: "What you get by achieving your goals is not as important as what you become by achieving your goals.",
      author: "Zig Ziglar",
      category: "Goal",
    ),
    Quote(
      text: "Don't watch the clock; do what it does. Keep going.",
      author: "Sam Levenson",
      category: "Perseverance",
    ),
    Quote(
      text: "Your time is limited, don't waste it living someone else's life.",
      author: "Steve Jobs",
      category: "Life",
    ),
    Quote(
      text: "The greatest glory in living lies not in never falling, but in rising every time we fall.",
      author: "Nelson Mandela",
      category: "Resilience",
    ),
    Quote(
      text: "We may encounter many defeats but we must not be defeated.",
      author: "Maya Angelou",
      category: "Resilience",
    ),
    Quote(
      text: "The only way to achieve the impossible is to believe it is possible.",
      author: "Charles Kingsleigh",
      category: "Believe",
    ),
    Quote(
      text: "The only person you are destined to become is the person you decide to be.",
      author: "Ralph Waldo Emerson",
      category: "Destiny",
    ),
    Quote(
      text: "Don't be pushed around by the fears in your mind. Be led by the dreams in your heart.",
      author: "Roy T. Bennett",
      category: "Dreams",
    ),
    Quote(
      text: "If you don't like something, change it. If you can't change it, change your attitude.",
      author: "Maya Angelou",
      category: "Change",
    ),
    Quote(
      text: "Keep your face always toward the sunshine—and shadows will fall behind you.",
      author: "Walt Whitman",
      category: "Inspiration",
    ),
    Quote(
      text: "Everything you can imagine is real.",
      author: "Pablo Picasso",
      category: "Imagination",
    ),
    Quote(
      text: "Success is not how high you have climbed, but how you make a positive difference to the world.",
      author: "Roy T. Bennett",
      category: "Success",
    ),
    Quote(
      text: "The purpose of our lives is to be happy.",
      author: "Dalai Lama",
      category: "Happiness",
    ),
    Quote(
      text: "Life is a journey, and if you fall in love with the journey, you will be in love forever.",
      author: "Peter Hagerty",
      category: "Journey",
    ),
    Quote(
      text: "No one can make you feel inferior without your consent.",
      author: "Eleanor Roosevelt",
      category: "Self-Empowerment",
    ),
    Quote(
      text: "Don't wait. The time will never be just right.",
      author: "Napoleon Hill",
      category: "Action",
    ),
    Quote(
      text: "Do what you can, with what you have, where you are.",
      author: "Theodore Roosevelt",
      category: "Action",
    ),
    Quote(
      text: "Life is like riding a bicycle. To keep your balance, you must keep moving.",
      author: "Albert Einstein",
      category: "Life",
    ),
    Quote(
      text: "Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful.",
      author: "Albert Schweitzer",
      category: "Success",
    ),
    Quote(
      text: "You must be the change you wish to see in the world.",
      author: "Mahatma Gandhi",
      category: "Change",
    ),
    Quote(
      text: "The only thing standing between you and your goal is the story you keep telling yourself as to why you can't achieve it.",
      author: "Jordan Belfort",
      category: "Goal",
    ),
    Quote(
      text: "If you want to lift yourself up, lift up someone else.",
      author: "Booker T. Washington",
      category: "Kindness",
    ),
    Quote(
      text: "It's not whether you get knocked down, it's whether you get up.",
      author: "Vince Lombardi",
      category: "Resilience",
    ),
    Quote(
      text: "The way to get started is to quit talking and begin doing.",
      author: "Walt Disney",
      category: "Action",
    ),
    Quote(
      text: "Life is what happens when you're busy making other plans.",
      author: "John Lennon",
      category: "Life",
    ),
    Quote(
      text: "Believe in yourself and all that you are. Know that there is something inside you that is greater than any obstacle.",
      author: "Christian D. Larson",
      category: "Believe",
    ),
    Quote(
      text: "Success is walking from failure to failure with no loss of enthusiasm.",
      author: "Winston Churchill",
      category: "Success",
    ),
    Quote(
      text: "In the end, it's not the years in your life that count. It's the life in your years.",
      author: "Abraham Lincoln",
      category: "Life",
    ),
    Quote(
      text: "The only person you should try to be better than is the person you were yesterday.",
      author: "Anonymous",
      category: "Self-Improvement",
    ),
    Quote(
      text: "The best revenge is massive success.",
      author: "Frank Sinatra",
      category: "Success",
    ),
    Quote(
      text: "What you get by achieving your goals is not as important as what you become by achieving your goals.",
      author: "Zig Ziglar",
      category: "Goal",
    ),
    Quote(
      text: "Don't watch the clock; do what it does. Keep going.",
      author: "Sam Levenson",
      category: "Perseverance",
    ),
    Quote(
      text: "Your time is limited, don't waste it living someone else's life.",
      author: "Steve Jobs",
      category: "Life",
    ),
    Quote(
      text: "The greatest glory in living lies not in never falling, but in rising every time we fall.",
      author: "Nelson Mandela",
      category: "Resilience",
    ),
    Quote(
      text: "We may encounter many defeats but we must not be defeated.",
      author: "Maya Angelou",
      category: "Resilience",
    ),
    Quote(
      text: "The only way to achieve the impossible is to believe it is possible.",
      author: "Charles Kingsleigh",
      category: "Believe",
    ),
    Quote(
      text: "The only person you are destined to become is the person you decide to be.",
      author: "Ralph Waldo Emerson",
      category: "Destiny",
    ),
    Quote(
      text: "Don't be pushed around by the fears in your mind. Be led by the dreams in your heart.",
      author: "Roy T. Bennett",
      category: "Dreams",
    ),
    Quote(
      text: "If you don't like something, change it. If you can't change it, change your attitude.",
      author: "Maya Angelou",
      category: "Change",
    ),
    Quote(
      text: "Keep your face always toward the sunshine—and shadows will fall behind you.",
      author: "Walt Whitman",
      category: "Inspiration",
    ),
    Quote(
      text: "Everything you can imagine is real.",
      author: "Pablo Picasso",
      category: "Imagination",
    ),
    Quote(
      text: "Success is not how high you have climbed, but how you make a positive difference to the world.",
      author: "Roy T. Bennett",
      category: "Success",
    ),
    Quote(
      text: "The purpose of our lives is to be happy.",
      author: "Dalai Lama",
      category: "Happiness",
    ),
    Quote(
      text: "Life is a journey, and if you fall in love with the journey, you will be in love forever.",
      author: "Peter Hagerty",
      category: "Journey",
    ),
    Quote(
      text: "No one can make you feel inferior without your consent.",
      author: "Eleanor Roosevelt",
      category: "Self-Empowerment",
    ),
    Quote(
      text: "Don't wait. The time will never be just right.",
      author: "Napoleon Hill",
      category: "Action",
    ),
    Quote(
      text: "Do what you can, with what you have, where you are.",
      author: "Theodore Roosevelt",
      category: "Action",
    ),
    Quote(
      text: "Life is like riding a bicycle. To keep your balance, you must keep moving.",
      author: "Albert Einstein",
      category: "Life",
    ),
    Quote(
      text: "The only limit to our realization of tomorrow will be our doubts of today.",
      author: "Franklin D. Roosevelt",
      category: "Hope",
    ),
    Quote(
      text: "You miss 100% of the shots you don't take.",
      author: "Wayne Gretzky",
      category: "Motivation",
    ),
    Quote(
      text: "Life is 10% what happens to us and 90% how we react to it.",
      author: "Charles R. Swindoll",
      category: "Life",
    ),
    Quote(
      text: "Believe you can and you're halfway there.",
      author: "Theodore Roosevelt",
      category: "Believe",
    ),
    Quote(
      text: "The best way to predict the future is to create it.",
      author: "Peter Drucker",
      category: "Future",
    ),
    Quote(
      text: "The only impossible journey is the one you never begin.",
      author: "Tony Robbins",
      category: "Journey",
    ),
  ];


  Quote fetchDailyQuote() {
    Random random = Random();
    return _quotes[random.nextInt(_quotes.length)];
  }

  List<String> getAllCategories() {
    return _quotes.map((quote) => quote.category).toSet().toList();
  }

  List<Quote> fetchQuotesByCategory(String category) {
    return _quotes.where((quote) => quote.category == category).toList();
  }
}
