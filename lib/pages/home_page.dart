import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notificaciones_push/api/firebase_api.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeStatePage();
}

class _HomeStatePage extends State<HomePage> {

  void _copyAPNS () async {
      await Clipboard.setData(ClipboardData(text: FirebaseApi.Token));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notificaciones Medife"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              maxLines: 5,
              autofocus: true,
              readOnly: true,
              controller: TextEditingController(text: FirebaseApi.Token),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Permita las notificaciones',
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // background
                  foregroundColor: Colors.white, // foreground
                ),
                onPressed: _copyAPNS, child: const Text('Copiar token en portapapeles'))
          ],
        ),
      ),
    );
  }
}
