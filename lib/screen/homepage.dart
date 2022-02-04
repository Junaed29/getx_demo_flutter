import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter getX"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.snackbar(
                    "Snack Bar",
                    "This is a message",
                    snackPosition: SnackPosition.BOTTOM,
                    borderRadius: 0,
                    margin: EdgeInsets.all(0),
                    backgroundColor: Colors.cyan,
                    padding: const EdgeInsets.all(30),
                    icon: const Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                    mainButton: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding: const EdgeInsets.all(10.0),
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 15),
                      ),
                      onPressed: () {},
                      child: Text("Main Button"),
                    ),
                  );
                },
                child: const Text("Show Snack bar"))
          ],
        ),
      ),
    );
  }
}
