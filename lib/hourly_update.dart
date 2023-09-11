import 'package:flutter/material.dart';

class HourlyForcast extends StatelessWidget {
  final String nowtime;
  final IconData hourly_icon;
  final String temp;

  const HourlyForcast({
    super.key,
    required this.nowtime,
    required this.hourly_icon,
    required this.temp,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Card(
        elevation: 6,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  nowtime,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 8,
                ),
                Icon(
                  hourly_icon,
                  size: 32,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(temp),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

