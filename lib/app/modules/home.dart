import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scanner/app/modules/direcciones_page.dart';
import 'package:scanner/app/modules/mapas_page.dart';
import 'package:scanner/app/providers/ui_provider.dart';
import 'package:scanner/app/widgets/custom_navigationbar.dart';
import 'package:scanner/app/widgets/scan_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Reader'),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_forever),
            onPressed: () {},
          ),
        ],
      ),
      body: _BodyPage(),
      floatingActionButton: const ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}

class _BodyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    final uiProvider = Provider.of<UiProvider>(context);
    
    final currentIndex = uiProvider.selectMenuOpt;

    switch ( currentIndex) {

      case 0:
        return const MapsPage();

      case 1: 
        return const DirectionsPage();
        
      default: 
        return const MapsPage();
    }
  }
}