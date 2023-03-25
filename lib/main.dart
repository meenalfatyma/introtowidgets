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
        home: Scaffold(
          backgroundColor: const Color.fromRGBO(234, 238, 239, 1),
          body: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  const [
                    Image(
                      width: 150,
                      height: 150,
                      image: AssetImage('assets/logo.png'),
                    )
                  ],
                ),
                const Center(
                    child: Text(
                  'Idea Hunt',
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 24,
                      color: Colors.blue),
                )),
                const SizedBox(
                  height: 14,
                ),
                const Center(
                    child: Text(
                  'Please enter your credentials to login ',
                  style: TextStyle(
                      fontFamily: 'Oswald', fontSize: 16, color: Colors.blue),
                  textAlign: TextAlign.center,
                )),
                const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: const Icon(Icons.email),
                      fillColor: const Color(0xfffaf9f8),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const  BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const  BorderSide(color: Color(0xffe4e7eb)),
                          borderRadius: BorderRadius.circular(10),
                        ),

                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
               child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: const Icon(Icons.lock),
                    fillColor: const Color(0xfffaf9f8),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const  BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),

                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide: const  BorderSide(color: Color(0xffe4e7eb)),
                      borderRadius: BorderRadius.circular(10),
                    ),

                  ),
                ),
                ),
                const SizedBox(height: 30,),
                Container(
                  height: 40,
                  width: 150,

                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child:Text(
                        'Login',
                  style: TextStyle(
                    fontSize: 16,

                    color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                          'Dont have an account?',
                          style: TextStyle(
                              fontFamily: 'Oswald', fontSize: 16, color: Colors.blue),
                          textAlign: TextAlign.center,
                        ),
              Text(
                          'Sign Up',
                          style: TextStyle(
                              fontFamily: 'Oswald',
                              fontSize: 16,
                              color: Color(0xff0d47a1),
                               ),
                          textAlign: TextAlign.center,
                        ),

                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
