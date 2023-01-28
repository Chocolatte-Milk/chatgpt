import 'package:flutter/material.dart';

void main() {
  runApp(ChatGpt());
}

class ChatGpt extends StatefulWidget {
  const ChatGpt({super.key});

  @override
  ChatGptState createState() => ChatGptState();
}

class ChatGptState extends State<ChatGpt> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 10,
          backgroundColor: const Color.fromARGB(255, 32, 33, 35),
        ),
        body: Stack(
          alignment: AlignmentDirectional.topCenter,
          fit: StackFit.passthrough,
          children: [
            SizedBox.expand(
              child: Container(
                color: const Color.fromARGB(255, 52, 53, 65),
                child: const Align(
                  alignment: Alignment(0, -0.65),
                  child: Text(
                    'ChatGPT',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 40,
                      //   fontFamily:
                    ),
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment(0, -0.40),
              child: Text(
                'Examples',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20,
                  //   fontFamily:
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, -0.28),
              child: Container(
                width: 223,
                height: 54,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 62, 63, 75),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      14,
                    ),
                    bottomRight: Radius.circular(14),
                    bottomLeft: Radius.circular(14),
                    topRight: Radius.circular(14),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, -0.1),
              child: Container(
                width: 223,
                height: 54,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 62, 63, 75),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      14,
                    ),
                    bottomRight: Radius.circular(14),
                    bottomLeft: Radius.circular(14),
                    topRight: Radius.circular(14),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.08),
              child: Container(
                width: 223,
                height: 54,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 62, 63, 75),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      14,
                    ),
                    bottomRight: Radius.circular(14),
                    bottomLeft: Radius.circular(14),
                    topRight: Radius.circular(14),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.8),
              child: Container(
                width: 357,
                height: 47,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 64, 65, 79),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      14,
                    ),
                    bottomRight: Radius.circular(14),
                    bottomLeft: Radius.circular(14),
                    topRight: Radius.circular(14),
                  ),
                ),
                child:
                    TextField(//focusNode: FocusNode.of.(context).requestFocus,
                        ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
