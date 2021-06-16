import 'package:flutter/material.dart';
import 'package:lista_contatos/shared/widgets/contact_card_widget.dart';
import 'package:lista_contatos/src/home/home_controller.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lista de contatos",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.blue,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              color: Colors.blue,
            ),
          ),
        ],
        centerTitle: false,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: controller.lastChats.length,
        itemBuilder: (context, index) => ContactCard(
          chatData: controller.lastChats[index],
        ),
      ),
    );
  }
}
