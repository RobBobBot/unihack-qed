import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:qed/contest.dart';
import 'package:qed/contest_screens/active_contest_screen.dart';
import 'package:qed/theme_data.dart';

class ContestListTile extends StatelessWidget {
  final Contest contest;
  const ContestListTile({super.key, required this.contest});

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      data: presentationContent,
      child: ListTile(
        title: Text(contest.name),
        leading: Image.asset(
          'assets/images/symbols.png',
          width: 40,
        ),
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ActiveContestScreen(contest: contest))),
      ),
    );
  }
}
