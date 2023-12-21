import 'package:flutter/material.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Learn')),
      body: Column(children: [
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        'ae',
                        style: TextStyle(fontSize: 50),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const Text(
                      'adfaj flasjd fjaskdf jaksd fjksaj dfkjsa kdfjkaj fdjkasd'
                      'asdfdsafs sdfsd sdf sdf sdf sd fds f dsf sd fsdfsd  sdfsdf'),
                ],
              ),
            ),
            Column(
              children: [
                OutlinedButton(onPressed: () {}, child: Text('examle')),
                OutlinedButton(onPressed: () {}, child: Text('examle')),
                OutlinedButton(onPressed: () {}, child: Text('examle')),
                OutlinedButton(onPressed: () {}, child: Text('Double sounds')),
              ],
            )
          ],
        ),
        Spacer(),
        Container(
          height: 300,
          color: Colors.grey,
        )
      ]),
    );
  }
}
