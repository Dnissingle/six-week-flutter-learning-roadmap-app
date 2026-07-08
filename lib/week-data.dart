
class Week {
  String title;
  String description;
  String goal;

  Week(
      {
        required this.title,
        required this.description,
        required this.goal,
      });

}

class Day {
  String title;
  String description;
  String goal;

  Day({
    required this.title,
    required this.description,
    required this.goal,
  });
}

List<Week> weeks = [Week(
  title: 'First Week',
  description: 'Dart + Flutter Basics',
  goal: 'Understand syntax + UI structures + build simple screens',
),
  Week(
    title: 'Second Week',
    description: 'Real UI + State + Navigation',
    goal: 'Build Interactive apps',
  ),
  Week(
    title: 'Third Week',
    description: 'API + JSON + Async',
    goal: 'Work with real data',
  ),
  Week(
    title: 'Fourth Week',
    description: 'State Management + Architecture',
    goal: 'Stop writing messy code',
  ),
  Week(
    title: 'Fifth Week',
    description: 'Firebase + Auth',
    goal: 'Real app backend',
  ),
  Week(
    title: 'Sixth Week',
    description: 'Portfolio Project + Polish',
    goal: 'Build something job-ready',
  ),
];