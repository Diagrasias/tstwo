import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
          children: [

            const Padding(
              padding: EdgeInsets.all(150.0),
              child: const Text(
                  "Авторизация",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: const TextField(decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Логин",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                filled: true,
              ),),
            ),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: const TextField(decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Пароль",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                filled: true,
              ),),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(value: false, onChanged: (bool? value) {}),
                const Text(
                  'Запомнить меня',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Войти',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.blue)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Регистрация',
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {},
                child: const Text(
                  'Восстановить Пароль',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
