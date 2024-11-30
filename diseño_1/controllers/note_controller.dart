import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class NoteController {
  final instance = Supabase.instance.client;

  getNotes() async {
    final response = await instance.from('notes').select('*');

    if (kDebugMode) {
      print(response);
    }
  }

  addNote() async {
    final response = await instance.from('notes').insert({
      'category': 1,
      'title': 'Mi ola',
      'content': 'Este es el contenido de la nota',
      'status': 0,
    });

    if (kDebugMode) {
      print(response);
    }
  }
}
