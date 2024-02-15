
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';


class ToothPixConnection extends StatefulWidget {
  const ToothPixConnection({Key? key}) : super(key: key);

  @override
  State<ToothPixConnection> createState() => _ToothPixConnectionState();
}

class _ToothPixConnectionState extends State<ToothPixConnection> {
  late WebSocketChannel  webSocket;
  @override
  void initState() {
    // TODO: implement initState
    connectToWebSocket();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  connectToWebSocket();
                },
                child: Text("Connection"))
          ],
        ),
      ),
    );
  }

  void connectToWebSocket()async {
    try {
      webSocket =  WebSocketChannel.connect(Uri.parse('ws://192.168.1.100/'));
      webSocket.sink.add("Hello");
      // await webSocket.ready.whenComplete(() => print("ready")).catchError((data)async =>{ print('${data}')});
    } catch (e) {
      print(e);
    }
  }
}
