class Habit {
  const Habit(
      {required this.name,
      required this.habitId,
      required this.id,
      required this.status,
      required this.date});

  final String name;
  final String habitId;
  final String? id;
  final bool status;
  final DateTime date;

  static fromObject(object) => Habit(
      name: object['name'],
      habitId: object['habit_id'],
      id: object['id'],
      status: object['status'],
      date: DateTime.parse(object['date'] as String));
}
