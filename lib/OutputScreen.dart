import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  const OutputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    
    final String? username = args['username'];
    final String? password = args['password'];
    final String? email = args['email'];
    final bool? rememberMe = args['rememberMe'];
    final String? gender = args['gender'];
    final String? country = args['country'];
    final double? age = args['age'];
    final DateTime? selectedDate = args['selectedDate'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Output'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Username: $username'),
            Text('Password: $password'),
            Text('Email: $email'),
            Text('Remember Me: $rememberMe'),
            Text('Gender: $gender'),
            Text('Country: $country'),
            Text('Age: ${age?.round()}'),
            Text('Selected Date: ${selectedDate?.toLocal().toString().split(' ')[0] ?? 'Not selected'}'),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}