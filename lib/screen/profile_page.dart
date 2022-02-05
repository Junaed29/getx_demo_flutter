import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo_flutter/screen/cart_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

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
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Back to Main Page"),
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
