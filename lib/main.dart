import "package:flutter/material.dart";

/// Ana uygulamayı başlatır.
void main() => runApp(const MyApp());

/// MyApp, uygulamanın ana widget'ıdır.
class MyApp extends StatelessWidget {
  /// MyApp'ın bir örneğini oluşturur.
  const MyApp({super.key});

  /// Uygulamanın ana widget'ını oluşturur.
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
