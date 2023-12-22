import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.subtitle,
    this.onPressed,
  });

  final String title;
  final String? subtitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final color = (onPressed == null)
        ? Theme.of(context).disabledColor
        : Theme.of(context).colorScheme.primary;

    return Container(
      width: double.infinity,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 4.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(color: color),
              ),
              if (subtitle != null)
                Text(
                  subtitle!,
                  style: TextStyle(color: color),
                ),
            ],
          ),
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: color),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

class DoubleLineButton extends StatelessWidget {
  const DoubleLineButton({
    super.key,
    required this.title,
    this.subtitle,
    this.onPressed,
  });

  final String title;
  final String? subtitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Stack(
        children: [
          OutlinedButton(
            onPressed: onPressed,
            child: const SizedBox(
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          Center(
            child: IgnorePointer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: DefaultTextStyle.of(context)
                        .style
                        .copyWith(color: Theme.of(context).colorScheme.primary),
                  ),
                  if (subtitle != null)
                    Text(
                      subtitle!,
                      style: DefaultTextStyle.of(context).style.copyWith(
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
