class Coffee_choices {
  String imgUrl;
  String id;
  String name;
  double rating;
  String addition;
  String descripition;
  int price;

  Coffee_choices({
    required this.imgUrl,
    required this.id,
    required this.name,
    required this.rating,
    required this.addition,
    required this.descripition,
    required this.price,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Coffee_choices &&
          runtimeType == other.runtimeType &&
          name == other.name;

  @override
  int get hashCode => name.hashCode;
}
