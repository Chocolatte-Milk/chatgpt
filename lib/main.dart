import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(ChatGpt());
}

class ChatGpt extends StatefulWidget {
  const ChatGpt({super.key});

  @override
  ChatGptState createState() => ChatGptState();
}

Future<void> sendMessage(String message) async {
  final apiUrl =
      Uri.parse("https://api.openai.com/v1/engines/chat-davinci/messages");
  var response = await http.post(
    apiUrl,
    headers: {
      "Content-Type": "application/json",
      "Authorization": "Bearer API_KEY"
    },
    body: json.encode({"text": message, "model": "text-davinci-002"}),
  );

  if (response.statusCode != 200) {
    throw Exception("Failed to send message");
  }
}

class ChatGptState extends State<ChatGpt> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 10.0,
          backgroundColor: const Color.fromARGB(255, 32, 33, 35),
          flexibleSpace: SafeArea(
            child: SvgPicture.asset(
              'assets/OpenAI_Logo.svg',
              color: const Color.fromARGB(255, 164, 165, 176),
              height: 37,
              width: 148,
            ),
          ),
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
                      fontFamily: 'RobotoSerif',
                      fontWeight: FontWeight.w500,
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
                  fontFamily: 'RobotoSerif',
                  fontWeight: FontWeight.w500,
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
              alignment: const Alignment(0, -0.08),
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
              alignment: const Alignment(0, 0.12),
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
                child: TextField(
                  cursorColor: const Color.fromARGB(255, 186, 186, 186),
                  style: const TextStyle(
                    color: Color.fromARGB(255, 200, 200, 200),
                  ),
                  controller: TextEditingController(),
                  onSubmitted: (value) {
                    sendMessage(value);
                  },
                  //delete const after realisation of input
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
