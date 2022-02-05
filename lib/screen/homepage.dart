import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo_flutter/widgets/textfield_with_button.dart';

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
            //Snack bar
            ElevatedButton(
                onPressed: () {
                  Get.snackbar(
                    "Snack Bar",
                    "This is a message",
                    snackPosition: SnackPosition.BOTTOM,
                    borderRadius: 10,
                    margin: EdgeInsets.all(10),
                    backgroundColor: Colors.cyan,
                    padding: const EdgeInsets.all(30),
                    icon: const Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                    mainButton: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        elevation: 10,
                        padding: const EdgeInsets.all(10.0),
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 15),
                      ),
                      onPressed: () {},
                      child: Text("Main Button"),
                    ),
                  );
                },
                child: const Text("Show Snack bar")),
            //Dialogue
            ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                    title: "Exit",
                    middleText: "Do you want to exit?",
                    content: Text("Sure to Exit?"),
                    textConfirm: "Yes",
                    onConfirm: () {
                      Get.back();
                    },
                    textCancel: "No",
                    onCancel: () {
                      Get.back();
                    },
                    confirmTextColor: Colors.white,
                    backgroundColor: Colors.white,
                    barrierDismissible: false,
                  );
                },
                child: const Text("Show Dialogue")),
            ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(
                    TextFieldWithButton(),
                  );
                },
                child: const Text("Show BottomSheet")),
          ],
        ),
      ),
    );
  }
}
