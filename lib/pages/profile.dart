import 'package:flutter/material.dart';

void main() =>  runApp( const Profile());

class Profile extends StatelessWidget {
  // Constructor with optional key parameter
  const Profile({super.key}); // Passing key to the superclass

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey),
      appBar: AppBar(title: const Text('Profile')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            

            







          ],
        ),
        
      ),






    );
  }
}
