import 'package:flutter/material.dart';

class MaterialWidgetTest extends StatefulWidget {
  const MaterialWidgetTest({super.key});

  @override
  State<MaterialWidgetTest> createState() => _MaterialWidgetTestState();
}

class _MaterialWidgetTestState extends State<MaterialWidgetTest> {
  String text = "Contoh Untuk Widget Test";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Materi Widget Test",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///Text
            Text(text),

            ///Icon
            const Icon(Icons.home),

            ///button
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    text = "Tombol ditekan";
                  });
                },
                child: const Text("Tombol"))
          ],
        ),
      ),
    );
  }
}
