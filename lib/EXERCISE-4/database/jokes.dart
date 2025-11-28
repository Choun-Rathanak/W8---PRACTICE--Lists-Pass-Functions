class Joke {
  final int id;
  final String title;
  final String description;

  Joke({
    required this.id,
    required this.title,
    required this.description,
  });
}

List<Joke> jokes = List.generate(
  20,
  (i) => Joke(
    id: i,
    title: "Joke #${i + 1}",
    description: "I love Joke from ${i + 1}.",
  ),
);
