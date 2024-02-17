import 'package:flutter/material.dart';

class MyChatBot extends StatefulWidget {
  const MyChatBot({super.key});

  @override
  State<MyChatBot> createState() => _MyChatBotState();
}

class _MyChatBotState extends State<MyChatBot> {
  final TextEditingController _controller = TextEditingController();
  List<String> messages = [];

  void _handleSubmitted(String text) {
    _controller.clear();
    String response;

    // simple chat logic based on keywords
    if (text.contains('weather')) {
      response = 'The weather is looking sunny for the next few days.';
    } else if (text.contains('pest')) {
      response = 'For pests, neem oil can be an effective natural remedy.';
    } else if (text.contains('crop price')) {
      response = 'Crop prices vary, please specify which crop.';
    } else if (text.contains('rice')) {
      response =
          'The current price for rice is approximately Rs. 2500 per quintal.';
    } else if (text.contains('sow')) {
      response = 'It is recommended to sow rice in the month of June.';
    } else if (text.contains('hii')) {
      response = 'Hello how can i help you';
    } else {
      response = 'Enter valid  Question or Query';
    }

    setState(() {
      messages.insert(0, text); // User's question
      messages.insert(0, "Kishan Mitra: $response"); //Chaybot's response
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Kishan Mitra',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green[200],
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              reverse: true, //isse jo msg baad me aayega wo niche aayega
              itemBuilder: (_, int index) => ListTile(
                title: Container(
                  padding: const EdgeInsets.only(left: 10, right: 2),
                  color: Colors.green[100],
                  alignment: Alignment.centerLeft,
                  height: 40,
                  child: Text(messages[index]),
                ),
              ),
              itemCount: messages.length,
            ),
          ),
          const Divider(height: 1.0),
          Container(
            decoration: BoxDecoration(color: Theme.of(context).cardColor),
            child: _buildTextComposer(),
          ),
        ],
      ),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).colorScheme.secondary),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _controller,
                onSubmitted: _handleSubmitted,
                decoration: InputDecoration(
                  hintText: "Send a message",
                  hintStyle: const TextStyle(fontSize: 18),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.send, color: Colors.green),
                    onPressed: () {
                      _handleSubmitted(_controller.text);
                    },
                  ),
                ),
              ),
            ),
            // Container(
            //   margin: const EdgeInsets.symmetric(horizontal: 4.0),
            //   child: IconButton(
            //     icon: const Icon(
            //       Icons.send,
            //       color: Colors.green,
            //     ),
            //     iconSize: 35.0,
            //     onPressed: () => _handleSubmitted(_controller.text),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
