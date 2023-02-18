import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  var _hidePassword = false;
  final _controllerName = TextEditingController();
  final _controllerPass = TextEditingController();
  void _changeReg() {
    Navigator.of(context).pushReplacementNamed('/reg');
    setState(() {});
  }

  void _auth() {
    Navigator.of(context).pushReplacementNamed('/main_screen');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final _inputBorderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(
        color: Color.fromRGBO(63, 66, 73, 1),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: const Color.fromRGBO(26, 29, 36, 1),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Войдите в аккаунт',
                  style: TextStyle(fontSize: 28, color: Colors.white),
                ),
                const SizedBox(
                  height: 80,
                ),
                TextField(
                  controller: _controllerName,
                  style: const TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromRGBO(37, 40, 47, 1),
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Color.fromRGBO(123, 123, 123, 1),
                    ),
                    hintText: 'Номер телефона',
                    hintStyle: const TextStyle(
                        color: Color.fromRGBO(123, 123, 123, 1)),
                    border: _inputBorderStyle,
                    enabledBorder: _inputBorderStyle,
                    disabledBorder: _inputBorderStyle,
                    focusedBorder: _inputBorderStyle,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _controllerPass,
                  style: const TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(37, 40, 47, 1),
                      prefixIcon: const Icon(
                        Icons.key,
                        color: Color.fromRGBO(123, 123, 123, 1),
                      ),
                      hintText: 'Пароль',
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(123, 123, 123, 1)),
                      border: _inputBorderStyle,
                      enabledBorder: _inputBorderStyle,
                      disabledBorder: _inputBorderStyle,
                      focusedBorder: _inputBorderStyle,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _hidePassword = !_hidePassword;
                          });
                        },
                        icon: const Icon(Icons.remove_red_eye),
                        color: const Color.fromRGBO(123, 123, 123, 1),
                      )),
                  obscureText: _hidePassword,
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(
                          Color.fromRGBO(26, 29, 36, 1)),
                    ),
                    child: const Text(
                      'Забыли пароль?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(176, 41, 75, 1),
                        blurRadius: 20,
                        blurStyle: BlurStyle.normal,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: _auth,
                    clipBehavior: Clip.hardEdge,
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(
                        Color.fromRGBO(176, 41, 75, 1),
                      ),
                      overlayColor: const MaterialStatePropertyAll(
                        Color.fromRGBO(176, 41, 75, 1),
                      ),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                    ),
                    child: const Text(
                      'Войти',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'У вас еще нет аккаунта?',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: _changeReg,
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(26, 29, 36, 1),
                        ),
                        overlayColor: MaterialStatePropertyAll(
                          Color.fromRGBO(26, 29, 36, 1),
                        ),
                      ),
                      child: const Text(
                        'Зарегистрироваться',
                        style: TextStyle(
                          color: Color.fromRGBO(176, 41, 75, 1),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
