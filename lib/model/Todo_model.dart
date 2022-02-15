class Todo {
  late int userId;
  late int id;
  late String title;
  late bool comleted;


  Todo(
      {required this.id, required this.userId, required this.title, required this.comleted});

  Todo.fromJson(Map<String, dynamic>json){
    userId=json['userId'];
    id=json['id'];
    title=json['title'];
    comleted=json['comleted'];
  }




}