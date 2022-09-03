import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen2 extends StatefulWidget {
  const RegisterScreen2({Key? key}) : super(key: key);

  @override
  State<RegisterScreen2> createState() => _RegisterScreenState2();
}

class _RegisterScreenState2 extends State<RegisterScreen2> {
  final TextEditingController _personController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Register Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: InputBorder.none,
                  hintText: "Enter your username",
                  labelText: "Username",
                ),
                controller: _personController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  border: InputBorder.none,
                  hintText: "Enter your password",
                  labelText: "Password",
                ),
                controller: _passwordController,
              ),
            ),
            Center(
              child: ElevatedButton(
                
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  if (_personController.text != "" &&
                      _passwordController.text != "") {
                    await prefs.setString('person', _personController.text);
                    await prefs.setString('password', _passwordController.text);
                    Navigator.pushNamed(context, '/login');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: Colors.red,
                        content: Text("Enter username and password!"),
                      ),
                    );
                  }
                  setState(() {});
                },
                child: const Text('Register'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
