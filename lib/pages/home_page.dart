import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Text(
                    "${controller.counter.value}",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: CupertinoButton(
                    color: Colors.yellow,
                    onPressed: controller.increment,
                    child: Text("Increment"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
