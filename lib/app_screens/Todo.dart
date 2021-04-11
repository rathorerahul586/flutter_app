
class Todo {
  final int id;

  final String todoTitle;

  Todo(this.id, this.todoTitle);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Todo &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              todoTitle == other.todoTitle;

  @override
  int get hashCode => id.hashCode ^ todoTitle.hashCode;

  @override
  String toString() {
    return 'Todo{id: $id, title: $todoTitle}';
  }
}