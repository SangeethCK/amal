import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:githunfapp/controller.dart/apicontroller.dart';

class Home extends GetView<APiController> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.isloading.value
            ? const CircularProgressIndicator()
            : Column(
                children: [Text(controller.getdata.value.company ?? "")],
              ),
      ),
    );
  }
}
