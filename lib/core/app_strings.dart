class AppStrings {
  AppStrings._();

  // Onboarding Screen
  static const String appName = "Taskly";
  static const String onboardingSubtitle = "Plan your day, simply.";

  // Home Screen / Dashboard
  static const String goodMorning = "GOOD MORNING";
  static const String userName = "Sakif";
  static const String totalLabel = "Total";
  static const String pendingLabel = "Pending";
  static const String completedLabel = "Completed";

  // Filter Tabs
  static const String filterAll = "All";
  static const String filterPending = "Pending";
  static const String filterCompleted = "Completed";

  // Section Headers
  static const String tasksHeader = "TASKS";
  static const String tasksCountSuffix = "5 tasks"; // Dynamic based on count

  // Empty State
  static const String noTasksTitle = "No tasks yet";
  static const String noTasksSubtitle = "Create your first task to start planning your day.";
  static const String addFirstTaskButton = "Add your first task";

  // Task Cards (Items)
  static const String task1Title = "Wrap up the new user onboarding\nFinish onboarding flow mockups";
  static const String task1Date = "Nov 4 • High";

  static const String task2Title = "Milk, eggs, bread, and vegetables\nGrocery shopping";
  static const String task2Date = "Nov 3 • Low";

  static const String task3Title = "Compile Q3 metrics and send to the\nSubmit quarterly report";
  static const String task3Date = "Oct 30 • High";

  static const String task4Title = "Call the clinic and schedule a\nBook dentist appointment";
  static const String task4Date = "Nov 10 • Medium";

  static const String task5Title = "Continue the habit-stacking chapter\nRead &quot;Atomic Habits&quot;—ch. 4";
  static const String task5Date = "Nov 2 • Low";

  // Add Task Screen
  static const String addScreenTitle = "Add Task";
  static const String fieldTaskTitle = "Task title";
  static const String taskTitleHint = "e.g. Finish onboarding mockups";

  static const String fieldDescription = "Description (optional)";
  static const String descriptionPlaceholder = "[object Object]"; // Note: This looks like a UI bug in your prototype to fix!

  static const String fieldDueDate = "Due date";
  static const String dueDatePlaceholder = "dd/mm/yyyy";

  static const String fieldPriority = "Priority";
  static const String priorityLow = "Low";
  static const String priorityMedium = "Medium";
  static const String priorityHigh = "High";

  static const String fieldStatus = "Status";
  static const String statusPending = "Pending";
  static const String statusCompleted = "Completed";

  static const String saveTaskButton = "Save Task";
  static const String cancelButton = "Cancel";

  // Task Details Screen
  static const String detailsScreenTitle = "Task Details";
  static const String badgeHighPriority = "High priority";
  static const String badgePending = "Pending";
  static const String detailTaskTitle = "Submit quarterly report";
  static const String taskDetails = "Task Details";

  static const String labelDueDate = "Due date";
  static const String detailDueDate = "Oct 30, 2026";
  static const String labelCreated = "Created";
  static const String detailCreatedDate = "Oct 12, 2026";

  static const String descriptionHeader = "DESCRIPTION";
  static const String detailDescriptionBody = "Compile Q3 metrics across acquisition, retention, and revenue, then send the summary deck to the finance team ahead of Friday's leadership review.";

  static const String markAsCompletedButton = "Mark as Completed";
  static const String deleteTaskButton = "Delete Task";

  // Status Badges on items
  static const String statusBadgePending = "Pending";
  static const String statusBadgeDone = "Done";
}