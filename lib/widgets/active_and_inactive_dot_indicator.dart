import 'package:flutter/material.dart';

class ActiveAndInActiveDotIndicator extends StatelessWidget {
  const ActiveAndInActiveDotIndicator({super.key, this.isActive = false});
  final bool? isActive;
  @override
  Widget build(BuildContext context) {
    return isActive == true
        ? const ActiveDotIndicator()
        : const InActiveDotIndicator();
  }
}

class InActiveDotIndicator extends StatelessWidget {
  const InActiveDotIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      decoration: const ShapeDecoration(
        color: Color(0xffE8E8E8),
        shape: OvalBorder(),
      ),
    );
  }
}

class ActiveDotIndicator extends StatelessWidget {
  const ActiveDotIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 900),
      curve: Curves.easeIn,
      width: 32,
      height: 8,
      decoration: ShapeDecoration(
        color: const Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
