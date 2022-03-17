import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'home.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((context) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        _videoPlayerController.play();
        _videoPlayerController.setLooping(true);
        _videoPlayerController.setVolume(0.03);

        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          const SizedBox.expand(
              /*  child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                height: _videoPlayerController.value.size.height,
                width: _videoPlayerController.value.size.width,
                child: VideoPlayer(_videoPlayerController),
              ),
            ), */
              ),
          Center(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 200,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 300,
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: Column(children: <Widget>[
                          TextFormField(
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              labelStyle: TextStyle(
                                  color: Colors
                                      .white), // border: OutlineInputBorder(), // borda externa
                              labelText: 'Login:',
                              icon: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                              hintText: 'Digite seu e-mail',
                            ),
                          ),
                          TextFormField(
                            cursorColor: Colors.white,
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              labelStyle: TextStyle(color: Colors.white),
                              // border: OutlineInputBorder(), // borda externa
                              labelText: 'Senha:',
                              icon: Icon(
                                Icons.lock_outline,
                                color: Colors.white,
                              ),
                              hintText: 'Digite sua senha',
                            ),
                          ),
                        ]),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(25),
                        ),
                        border: Border.all(
                            color: Colors.white,
                            width: 4.0,
                            style: BorderStyle.solid),
                        // color: Color(0xFFBFBFBF),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          );
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Futura',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      child: const Text(
                        'Recuperar senha',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Futura',
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
