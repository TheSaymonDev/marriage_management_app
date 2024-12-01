import 'package:flutter/material.dart';
import 'package:marriage_management_app/screens/upgrade_screen/widgets/three_month.dart';

class UpgradeScreen extends StatefulWidget {
  const UpgradeScreen({super.key});

  @override
  State<UpgradeScreen> createState() => _UpgradeScreenState();
}

class _UpgradeScreenState extends State<UpgradeScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          dividerColor: Colors.transparent,
          controller: _tabController,
          labelStyle: Theme.of(context).textTheme.titleSmall,
          tabs: <Widget>[
            Tab(
              text: '3 Months',
            ),
            Tab(
              text: '6 Months',
            ),
            Tab(
              text: 'Lifetime',
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              ThreeMonth(),
              ThreeMonth(),
              ThreeMonth(),
            ],
          ),
        )
      ],
    );
  }
}
