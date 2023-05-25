import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guia Acesso API'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed:() => Get.toNamed('/http') ,
            child: const Text('HTTP', style: TextStyle(fontSize: 20),)
        ),
        TextButton(onPressed:() {} ,
            child: const Text('DIO', style: TextStyle(fontSize: 20),)
        ),
        TextButton(onPressed:() {} ,
            child: const Text('GeTConnect', style: TextStyle(fontSize: 20),)
        )],
        ),
      ),
    );
  }
}
