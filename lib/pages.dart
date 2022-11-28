import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/app_router.dart';
import 'package:flutter_application_5/auth_service.dart';
import 'package:flutter_application_5/components.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: OutlinedButton(
          onPressed: AuthService.instance.signIn,
          child: const Text('sign in'),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('HOME'),
            const SizedBox(height: 20.0),
            OutlinedButton(
              onPressed: () => context.router.push(const AccountRoute()),
              child: const Text('Go to account'),
            ),
            const SizedBox(height: 20.0),
            OutlinedButton(
              onPressed: AuthService.instance.signOut,
              child: const Text('Sign out'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(canPop: true),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('PROFILE'),
            const SizedBox(height: 20.0),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(hintText: 'Enter your code'),
            ),
            const SizedBox(height: 20.0),
            OutlinedButton(
              onPressed: () => context.router.push(
                CodeRoute(code: _textController.text),
              ),
              child: const Text('Go to code'),
            ),
            const SizedBox(height: 20.0),
            OutlinedButton(
              onPressed: () => context.router.push(const SettingsRoute()),
              child: const Text('Go to settings'),
            ),
          ],
        ),
      ),
    );
  }
}

class CodePage extends StatelessWidget {
  final String? code;

  const CodePage({
    super.key,
    @queryParam this.code,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(canPop: true),
      body: Center(
        child: Text('CODE: $code'),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(canPop: true),
      body: Center(
        child: Text('SETTINGS'),
      ),
    );
  }
}
