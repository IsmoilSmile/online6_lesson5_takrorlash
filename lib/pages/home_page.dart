import 'package:flutter/material.dart';

import '../model/Todo_model.dart';
import '../service/http_service.dart';
class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {

  String data="no data";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _edetPost() ;

  }
  void getResponse(String response){
    setState(() {
      data=response;

    });
  }
  void _apigetTodo() async{
    HttpService.GET(HttpService.API_TODO_LIST,HttpService.paramEmpty()).then((value){
      if(value !=null){
        getResponse(value);
      }
    });
  }
  void _updateTodo() async{
    HttpService.PUT(HttpService.API_TODO_UPDATE+8.toString(),HttpService.updatePost(Todo(userId: 3,title: "hello wolrd",id: 0,comleted: true))).then((value){
      if(value !=null){
        print("==========================");
        print(value);
        getResponse(value);
      }
    });
  }
  void _createPost() {

    HttpService.POST(HttpService.API_TODO_CREATE,HttpService.createPost(Todo(userId: 3,title: "hello nvcb ",id: -8,comleted: true))).then((value){
      if(value !=null){
        getResponse(value);
      }
    });
  }
  void _edetPost() {

    HttpService.PATCH(HttpService.API_TODO_EDIT+8.toString(),HttpService.edetingPost("title","Ravshanbek")).then((value){
      if(value !=null){
        getResponse(value);
      }
    });
  }
  @override

  Widget build(BuildContext context) {
    print(data);
    return Scaffold(
      appBar: AppBar(
        title: Text("Conttect to Network",style: TextStyle(color: Colors.white,fontSize: 25),),
      centerTitle: true,
      ),
      body: GestureDetector(
        onTap: _edetPost,
          child: Container(color: Colors.blue,
              child: Text(data))),

    );
  }
}
