import 'dart:io';

import '../lib/ollama.dart';

 

void main() async {
  // Create an Ollama instance
  final ollama = Ollama(baseUrl: Uri.parse('http://127.0.0.1:11434')); 

  // Generate a response from a model
  final response = ollama.chat([
    ChatMessage(role: 'system', content: 'You are a helpful assistant.'),
    ChatMessage(role: 'user', content: 'How are you?'),
  ], model: 'qwq');

  // Print the response
  response.listen(stdout.write);
}
