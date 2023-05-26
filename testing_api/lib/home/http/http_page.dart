import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing_api/home/http/http_controller.dart';

import '../../model/user_model.dart';

class HttpPage extends GetView<HttpController> {
  const HttpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HTTPs'),
      ),
      body: controller.obx(
        (state) {
          return ListView.builder(
            itemCount: state.length,
            itemBuilder: (_, index) {
              final UserModel item = state[index];
              return ListTile(
                title: Text(item.name),
              );
            },
          );
        },
        onError: (error) {
          return Center(child: Text(error!));
        },
      ),
    );
  }
}
