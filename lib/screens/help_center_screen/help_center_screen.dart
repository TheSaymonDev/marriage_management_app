import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marriage_management_app/screens/help_center_screen/widgets/contact_us_widget.dart';
import 'package:marriage_management_app/screens/help_center_screen/widgets/faq_widget.dart';
import 'package:marriage_management_app/widgets/custom_app_bar/custom_app_bar_with_title.dart';

class HelpCenterScreen extends StatefulWidget {
  const HelpCenterScreen({super.key});

  @override
  State<HelpCenterScreen> createState() => _HelpCenterScreenState();
}

class _HelpCenterScreenState extends State<HelpCenterScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithTitle(
        onPressed: () {
          Get.back();
        },
        title: 'Help Center',
      ),
      body: Column(
        children: [
          TabBar(
            dividerColor: Colors.transparent,
            controller: _tabController,
            labelStyle: Theme.of(context).textTheme.titleSmall,
            tabs: <Widget>[
              Tab(
                text: 'FAQ',
              ),
              Tab(
                text: 'CONTACT',
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[FaqWidget(), ContactUsWidget()],
            ),
          )
        ],
      ),
    );
  }
}
