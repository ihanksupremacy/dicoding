import 'package:flutter/material.dart';
import 'package:test/dashboard_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final String NIMbenar = 'F1E121069';
  final String PasswordBenar = '12345678';

  bool _isLoginFailed = false;

  @override
  void dispose() {
    _nimController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    String nim = _nimController.text;
    String password = _passwordController.text;

    if (nim == NIMbenar && password == PasswordBenar) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => DashboardPage()),
      );
    } else {
      setState(() {
        _isLoginFailed = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SIAKAD UNJA'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('images/gambar.png'),
            SizedBox(height: 16.0),
            FractionallySizedBox(
              widthFactor: 1,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: TextFormField(
                  controller: _nimController,
                  decoration: InputDecoration(
                    labelText: 'NIM',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(16.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            FractionallySizedBox(
              widthFactor: 1,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(16.0),
                  ),
                ),
              ),
            ),
            if (_isLoginFailed)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'NIM atau password salah',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            SizedBox(height: 32.0),
            FractionallySizedBox(
              widthFactor:1,
              child: ElevatedButton(
                child: Text('Login'),
                onPressed: _login,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
