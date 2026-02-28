import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExpandableAnswer extends StatefulWidget {
  final String answer;
  final Map<String, dynamic> explanations;

  const ExpandableAnswer({
    super.key,
    required this.answer,
    required this.explanations,
  });

  @override
  State<ExpandableAnswer> createState() => _ExpandableAnswerState();
}

class _ExpandableAnswerState extends State<ExpandableAnswer> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),

        GestureDetector(
          onTap: () {
            setState(() {
              _expanded = !_expanded;
            });
          },
          child: Text(
            _expanded ? 'Hide answer' : 'View answer',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),

        if (_expanded) ...[
          const SizedBox(height: 8),
          Text(
            widget.answer,
            textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
          ),
          const SizedBox(height: 8),
          for (var explanation in widget.explanations.entries) ...[
            Text(
              explanation.key + ": " + explanation.value,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.grey,
                  ),
            ),
          ],
        ],
      ],
    );
  }
}