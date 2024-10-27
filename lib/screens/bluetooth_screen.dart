import 'package:all_bluetooth/all_bluetooth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:obd/screens/drawer.dart';
import 'drawer.dart';


class BluetoothScreen extends StatefulWidget {
  const BluetoothScreen({super.key});
  final bool lookingForBluetoothConnection = false;

  @override
  State<BluetoothScreen> createState() => _BluetoothScreenState();
}

class _BluetoothScreenState extends State<BluetoothScreen> {

  @override
  void initState() {
    void initState() {
      super.initState();
      const MethodChannel("method_channel").invokeMethod("permit");
    }

  }

  @override
  Widget build(BuildContext context) {
    final allBluetooth = AllBluetooth();

    return Scaffold(
      drawer: CustomDrawer(context: context),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children : [
          Center(
            child: ElevatedButton(onPressed: (){

              print("Scan ka button pressed hoa ha");

            }, child: Text("Scan all the available devices")),
          )
        ]
      ),
    );
  }
}


void scanForBluetoothDevices(){

  AllBluetooth allBluetooth = AllBluetooth();
  Stream<bool> bluettothState = allBluetooth.streamBluetoothState;

  bluettothState.listen((state) {
    print("Bluettoth ki state yai ha :" + state.toString());
  });

}
