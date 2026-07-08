
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
List<Week> weeks = [Week(
  title: 'Week 1',
  description: 'Dart + Flutter Basics',
  goal: 'Understand syntax + UI structures + build simple screens',
),
  Week(
    title: 'Week 2',
    description: 'Real UI + State + Navigation',
    goal: 'Build Interactive apps',
  ),
  Week(
    title: 'Week 3',
    description: 'API + JSON + Async',
    goal: 'Work with real data',
  ),
  Week(
    title: 'Week 4',
    description: 'State Management + Architecture',
    goal: 'Stop writing messy code',
  ),
  Week(
    title: 'Week 5',
    description: 'Firebase + Auth',
    goal: 'Real app backend',
  ),
  Week(
    title: 'Week 6',
    description: 'Portfolio Project + Polish',
    goal: 'Build something job-ready',
  ),


];