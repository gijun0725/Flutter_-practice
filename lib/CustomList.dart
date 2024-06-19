import 'package:flutter/material.dart';

class User {
String name;
String phone;
String email;
User(this.name,this.phone,this.email);

}

class Customlist extends StatelessWidget {

  const Customlist({super.key});

  @override
  Widget build(BuildContext context) {
    List<User> users=[
      User('홍길동', '010-0000-0000', 'dlrlwns@naver.com'),
      User('홍길동', '010-0000-0000', 'dlrlwns@naver.com'),
      User('홍길동', '010-0000-0000', 'dlrlwns@naver.com'),
      User('홍길동', '010-0000-0000', 'dlrlwns@naver.com'),
    ];
    return ListView.builder(itemBuilder: (c,i){
      return ListTile(
        title: Text(users[i].name),
        subtitle: Text(users[i].phone),
        trailing: Text(users[i].email),

      );
    },itemCount: users.length);
  }
}
