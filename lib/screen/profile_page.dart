import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo_flutter/screen/cart_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  Widget getArguments() => Get.arguments != null
      ? Text("${Get.arguments}")
      : Text("${Get.arguments}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Get.arguments != null
                ? Text("${Get.arguments}")
                : const Text("No Data"),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Back to Main Page"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back(result: "From Profile");
              },
              child: const Text("Back to Main Page with results"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.off(CartPage());
              },
              child: const Text("Go to cart and Remove profile"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAll(CartPage());
              },
              child: const Text("Go to cart and Remove All page"),
            ),
          ],
        ),
      ),
    );
  }
}
