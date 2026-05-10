import 'package:flutter/material.dart';
import '../../../../core/constants/app_strings.dart';
import '../controller/home_controller.dart';
import '../widgets/action_button.dart';
import '../widgets/display_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController _controller = HomeController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.appTitle)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListenableBuilder(
                listenable: _controller,
                builder: (context, _) {
                  return DisplayText(text: _controller.currentMessage);
                },
              ),
              const SizedBox(height: 48),
              ActionButton(
                label: AppStrings.changeMessageButton,
                onPressed: _controller.updateMessage,
              ),
              const SizedBox(height: 16),
              ActionButton(
                label: AppStrings.resetMessageButton,
                onPressed: _controller.resetMessage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
