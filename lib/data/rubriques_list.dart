final List<Rubrique> rubriquesList = [
  // "A1",
  // "A2",
  // "B1",
  // "B2",
  // // "C1",
  // // "C2",
  // "Dundin\nLandeskunde",
  // "Baat yi\nWörterbuch",
  // "Leebu\nSprichwörter",
  Rubrique(name: "A1", route: 'chapitresA1'),
  // Rubrique(name: "B1", route: 'chapitresA2'),
  // Rubrique(name: "B2", route: 'chapitresA2'),
  Rubrique(name: "Baat yi\nWörterbuch", route: 'baat_yi'),
];

class Rubrique {
  final String name;
  final String route;

  Rubrique({
    required this.name,
    required this.route,
  });
}
