import 'package:flutter/material.dart';

class SampleStepperView extends StatefulWidget {
  _StepperState createState() => _StepperState();
}

class _StepperState extends State<SampleStepperView> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stepper View')),
      body: Stepper(
        type: StepperType.horizontal,
        currentStep: _currentStep,
        onStepTapped: (int step) => setState(() => _currentStep = step),
        onStepContinue:
            _currentStep < 2 ? () => setState(() => _currentStep += 1) : null,
        onStepCancel:
            _currentStep > 0 ? () => setState(() => _currentStep -= 1) : null,
        steps: [
          Step(
            title: const Text('ステップ1'),
            subtitle: const Text('subtitle'),
            content: const Text('最初のステップです'),
            isActive: _currentStep >= 0,
            state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
          ),
          Step(
            title: const Text('ステップ2'),
            content: const Text('2番目のステップです'),
            isActive: _currentStep >= 1,
            state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
          ),
          Step(
            title: const Text('ステップ3'),
            subtitle: const Text('subtitle'),
            content: const Text('3番目のステップです'),
            isActive: _currentStep >= 2,
            state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
          ),
        ],
      ),
    );
  }
}
