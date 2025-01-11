class Item {
  /// Constructor
  Item({
    required String name,
    required double price,
    required String image,
    required String description,
  })  : _name = name,
        _price = price,
        _image = image,
        _description = description;

  /// Atributes
  final String _name;
  final double _price;
  final String _image;
  final String _description;

  /// Getters
  String get name => _name;
  double get price => _price;
  String get image => _image;
  String get description => _description;
}
