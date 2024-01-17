import "package:flutter/material.dart";

/// Ana uygulamayı başlatır.
void main() => runApp(const MyApp());

/// MyApp,main widget whole app
class MyApp extends StatelessWidget {
  /// Constructor for MyApp
  const MyApp({super.key});

  @override
  Widget build(final BuildContext context) => MaterialApp(
        title: "Material App",
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Material App Bar"),
          ),
          body: const Center(
            child: Text("Hello World"),
          ),
        ),
      );
}
