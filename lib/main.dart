import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nameProvider = Provider<String>((ref) => "Hello Pandu");

void main() {
  //it will stores  all the state of the providers which will create in your application.

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

// //read the value from the provide by extending consumer provider class - if the widget is stateless widget
// class MyHomePage extends ConsumerWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     //get the value from the created provider
//     final name = ref.watch(nameProvider);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("RiverPod Provider"),
//       ),
//       body: Center(
//         child: Text(name),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("RiverPod Provider"),
//       ),
//       body: Center(
//         child: Consumer(
//           builder: (context, ref, child) {
//             final name = ref.watch(nameProvider);
//             return Text(name);
//           },
//         ),
//       ),
//     );
//   }
// }

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key});

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final name = ref.watch(nameProvider);
    return Scaffold(
      body: Center(
        child: Text(name),
      ),
    );
  }
}


