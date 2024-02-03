import 'package:flutter/material.dart';

import '../model/soccer.dart';
import 'goalstat.dart';
import 'matchtile.dart';
import 'teamstat.dart';

Widget pageBody(List<SoccerMatch> allmatches) {
  return Column(
    children: [
      Expanded(
        flex: 2,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (allmatches.isNotEmpty)
                  teamStat("Local Team", allmatches[0].home.logoUrl, allmatches[0].home.name),
                if (allmatches.isNotEmpty)
                  goalStat(
                    allmatches[0].fixture.status.elapsedTime,
                    allmatches[0].goal.home,
                    allmatches[0].goal.away,
                  ),
                if (allmatches.isNotEmpty)
                  teamStat("Visitor Team", allmatches[0].away.logoUrl, allmatches[0].away.name),
              ],
            ),
          ),
        ),
      ),
      Expanded(
        flex: 5,
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "MATCHES",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
                if (allmatches.isNotEmpty)
                  Expanded(
                    child: ListView.builder(
                      itemCount: allmatches.length,
                      itemBuilder: (context, index) {
                        return matchTile(allmatches[index]);
                      },
                    ),
                  ),
                if (allmatches.isEmpty)
                  const Text(
                    "No matches available",
                    // ignore: unnecessary_const
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
