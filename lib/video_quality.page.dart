import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class VideoQualityPage extends StatelessWidget {
  const VideoQualityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Quality'),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            tileColor: Colors.grey.shade900,
            title: const Text(
              'Standart',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              'Downloads faster and uses less storage',
              style: TextStyle(
                color: Colors.grey.shade500,
              ),
            ),
            trailing: defaultTargetPlatform == TargetPlatform.android
                ? const Icon(
                    Icons.check,
                    color: Colors.blue,
                  )
                : const Icon(
                    CupertinoIcons.check_mark,
                    color: Colors.blue,
                  ),
          ),
          ListTile(
            tileColor: Colors.grey.shade900,
            title: const Text(
              'Higher',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              'Uses more storage',
              style: TextStyle(
                color: Colors.grey.shade500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
