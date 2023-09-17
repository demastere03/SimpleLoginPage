import 'package:flutter/material.dart';
void main() => runApp(LoginPage());

class LoginPage  extends StatelessWidget {
  const LoginPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
          actions: <Widget>[
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.blueAccent),
              ),
              child: const Text('Guest Mode'),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 20),
                  Icon(
                    Icons.business_center,
                    color: Colors.blueAccent,
                    size: 90,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Welcome, Dear Human",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Silakan melakukan login untuk mengakes aplikasi",
                    style: TextStyle(fontFamily: 'Poppins', color: Colors.grey),
                  ),
                  SizedBox(height:50),
                  TextFormField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "john@example.com",
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                      decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                    .spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(Colors.blueAccent),
                    ),
                    child: const Text('Login'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
