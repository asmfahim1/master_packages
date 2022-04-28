import 'package:flutter/material.dart';

class NurseCareScreen extends StatefulWidget {
  const NurseCareScreen({Key? key}) : super(key: key);

  @override
  State<NurseCareScreen> createState() => _NurseCareScreenState();
}

class _NurseCareScreenState extends State<NurseCareScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Nurse_care Screen"),
      ),
    );
  }
}
