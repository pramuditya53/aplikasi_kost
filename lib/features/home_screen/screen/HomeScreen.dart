import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/constants/color.dart';
import '../../../core/global_component/Typography.dart';
import '../controller/HomeController.dart';
import '../widgets/HomeWidget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeController(),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'BapakKost',
            style:
                AppTypography.headline1.copyWith(color: AppColors.primaryColor),
          ),
          // actions: [
          //   Icon(Icons.search, color: Colors.grey),
          //   SizedBox(width: 16),
          //   Icon(Icons.account_circle, color: Colors.grey),
          //   SizedBox(width: 16),
          // ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: HomeWidget(),
        ),
      ),
    );
  }
}
