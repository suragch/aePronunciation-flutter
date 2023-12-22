import 'package:aepronunciation/common/widgets/buttons.dart';
import 'package:flutter/material.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Learn')),
      body: Column(children: [
        Expanded(
          flex: 60,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'ae',
                          style: TextStyle(fontSize: 50),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          width: 100,
                          height: 50,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    const Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: const Text(
                              'adfaj flasjd fjaskdf jaksd fjksaj dfkjsa kdfjkaj fdjkasd'
                              'asdfdsafs sdfsd sdf sdf sdf sd fds f dsf sd fsdfsd  sdfsdf'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: SizedBox(
                  width: 100,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CustomButton(
                          title: 'ash',
                          subtitle: '/as/',
                          onPressed: () {},
                        ),
                        const SizedBox(height: 4),
                        CustomButton(
                          title: 'bad',
                          subtitle: '/bad/',
                          onPressed: () {},
                        ),
                        const SizedBox(height: 4),
                        CustomButton(
                          title: 'bat',
                          subtitle: '/bat/',
                          onPressed: () {},
                        ),
                        const SizedBox(height: 4),
                        CustomButton(
                          title: 'Double',
                          subtitle: 'Sounds',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        // Spacer(),
        Expanded(
          flex: 40,
          child: Container(
            // height: 200,
            color: Colors.grey,
          ),
        )
      ]),
    );
  }
}
