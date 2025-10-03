import 'package:flutter/material.dart';

class NotesLableCard extends StatelessWidget {
  const NotesLableCard(
      {super.key, required this.headingTxt, required this.bodyTxt});

  final String headingTxt;
  final String bodyTxt;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Text(
            headingTxt,
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            bodyTxt,
            style: Theme.of(context).textTheme.bodyLarge,
          )
        ],
      ),
    );
  }
}
