import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Controller untuk form input username dan password
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Variabel untuk menentukan apakah password sedang ditampilkan atau tidak
  bool _obscureText = true;

  // Fungsi untuk memperlihatkan atau menyembunyikan password
  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  // Fungsi untuk memeriksa apakah username dan password valid
  bool _isLoginValid() {
    // Implementasi validasi sesuai kebutuhan Anda
    String validUsername = "afriyandariyan@gmail.com";
    String validPassword = "Singkut2";
    return _usernameController.text == validUsername &&
        _passwordController.text == validPassword;
  }

  // Fungsi untuk menavigasi ke halaman menu utama setelah login berhasil
  void _navigateToMainMenu() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => MyHomePage(
          title: 'Tempat Wisata di Yogyakarta',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LOGIN',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 30,
                  ),
                ),
                Container(
                  height: 350,
                  width: 400,
                  transformAlignment: Alignment.center,
                  child: LottieBuilder.asset("assets/login.json"),
                ),
                SizedBox(height: 30),
                Column(
                  children: [
                    TextField(
                      controller: _usernameController,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 30, vertical: 20),
                        prefixIcon: const Icon(Icons.email),
                        labelText: "Email",
                        hintText: "username@email.com",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: _passwordController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 30, vertical: 20),
                        prefixIcon: const Icon(Icons.lock),
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: _toggleObscureText,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Color.fromARGB(255, 16, 0, 235),
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      transformAlignment: Alignment.center,
                      height: 40,
                      width: 120,
                      child: ElevatedButton(
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          //jika login berhasil valid maka akan lanjut ke menu home
                          if (_isLoginValid()) {
                            _navigateToMainMenu();
                            //jika gagal maka akan beri tahu dengan showdialog
                          } else {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                title: Text('Login Failed'),
                                content: Text('Invalid username or password'),
                                actions: <Widget>[
                                  TextButton(
                                    child: Text('OK'),
                                    onPressed: () =>
                                        Navigator.of(context).pop(),
                                  ),
                                ],
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17))),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "New User? ",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "Create Account",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue[300],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
