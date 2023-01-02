import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Stepper',style: TextStyle(fontSize: 15),),
      ),
      body: Center(
        child: Stepper(
          currentStep: _index,
          onStepCancel: () {
            if (_index > 0) {
              setState(() {
                _index -= 1;
              });
            }
          },
          onStepContinue: () {
            if (_index <= 0 || _index <= 1 || _index <= 2 || _index <= 3 || _index < 4) {
              setState(() {
                _index += 1;
              });
            }
          },
          onStepTapped: (int index) {
            setState(() {
              _index = index;
            });
          },
          steps: <Step>[
            Step(
              isActive: _index > 0 ? true : false,
              title: const Text('Step 1 title'),
              content: const Text('Content for Step 1'),
            ),
            Step(
              isActive: _index > 1 ? true : false,
              title: const Text('Step 2 title'),
              content: const Text('Content for Step 2'),
            ),
            Step(
              isActive: _index > 2 ? true : false,
              title: const Text('Step 3 title'),
              content: const Text('Content for Step 3'),
            ),
            Step(
              isActive: _index > 3 ? true : false,
              title: const Text('Step 4 title'),
              content: const Text('Content for Step 4'),
            ),
            Step(
              isActive: _index > 4 ? true : false,
              title: const Text('Step 5 title'),
              content: const Text('Content for Step 5'),
            ),
          ],
        )
      ),
    );
  }
}
