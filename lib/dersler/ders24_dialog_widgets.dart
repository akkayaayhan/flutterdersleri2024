import 'package:flutter/material.dart';

void main() {
  runApp(Ders24DialogWidgets());
}

class Ders24DialogWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirmation Dialog'),
          content: Text('Are you sure you want to proceed?'),
          actions: [
            TextButton(
              
              onPressed: () {
                final snackbar=SnackBar(content: Text("Mesaj Silindi"));
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                // Here, you can add the code to execute when the user confirms.
              },
              child: Text('Confirm'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showConfirmationDialog(context);
          },
          child: Text('Show Confirmation Dialog'),
        ),
      ),
    );
  }
}
