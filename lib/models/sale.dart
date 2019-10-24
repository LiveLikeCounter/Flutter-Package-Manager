import 'dart:ui';
import 'package:flutter/foundation.dart';

enum Type {
  Customers,
  Packages,
  Articles,
}

class Sale {
  final String content;
  final String description;
  final Color color;
  final Type type;

  const Sale({
    @required this.content,
    @required this.description,
    @required this.color,
    @required this.type,
  });
}
