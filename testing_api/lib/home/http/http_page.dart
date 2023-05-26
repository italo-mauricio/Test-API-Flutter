import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing_api/home/http/http_controller.dart';

class HttpPage extends GetView<HttpController> {
  const HttpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HTTPs'),),
      body: Container(),
    );
  }
}
