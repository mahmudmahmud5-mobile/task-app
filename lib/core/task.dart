
class Task {

  Task({required this.title,
    required this.description,
    required this.dueDate,
    required this.priority,
    required this.createdData,
    this.isCompleted = false,
  });

  final String title;
  final String description;
  final String dueDate;
  final String priority;
  final String createdData;
  bool isCompleted;


}

List<Task> x=[
  Task(title: 'Finish onboarding mockups',
      description: 'Final term',
      dueDate: 'nov 16',
      priority: 'High',
      createdData: 'nov 2',
      ),
  Task(title: '1st tuition TODAY',
    description: 'Very sharp student and also give my salary on time',
    dueDate: 'nov 16',
    priority: 'Medium',
    createdData: 'nov 2',
  ),
  Task(title: '2nd tuition TODAY',
    description: 'Less important but still important',
    dueDate: 'nov 16',
    priority: 'low',
    createdData: 'nov 2',
  ),
  Task(title: '3rd tuition TODAY',
    description: 'Less Less important but still important',
    dueDate: 'nov 16',
    priority: 'low',
    createdData: 'nov 2',
  ),
];