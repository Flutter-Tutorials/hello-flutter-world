class Animal {
  String label;
  String imageUrl;

  Animal(this.label, this.imageUrl);

  static List<Animal> samples = [
    Animal(
      'Cat',
      'assets/cat.png',
    ),
    Animal(
      'Bear',
      'assets/bear.png',
    ),
    Animal(
      'Turtle',
      'assets/turtle.png',
    ),
    Animal(
      'Lion',
      'assets/lion.png',
    ),
    Animal(
      'Butterfly',
      'assets/butterfly.png',
    )
  ];
}
