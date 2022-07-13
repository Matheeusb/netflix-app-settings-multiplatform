import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:netflix_adaptive/video_quality.page.dart';

class AppSettingsPage extends StatefulWidget {
  const AppSettingsPage({Key? key}) : super(key: key);

  @override
  State<AppSettingsPage> createState() => _AppSettingsPageState();
}

class _AppSettingsPageState extends State<AppSettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.adaptive.arrow_back),
        title: const Text('App Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
                ),
                child: Text(
                  'Video Playback',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                tileColor: Colors.grey.shade900,
                leading: const Icon(Icons.signal_cellular_alt_sharp),
                iconColor: Colors.white,
                title: const Text(
                  'Cellular Data Usage',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  'Automatic',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
                ),
                child: Text(
                  'Downloads',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                tileColor: Colors.grey.shade900,
                leading: defaultTargetPlatform == TargetPlatform.android
                    ? const Icon(Icons.wifi)
                    : const Icon(CupertinoIcons.wifi),
                iconColor: Colors.white,
                title: const Text(
                  'Wifi Only',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Switch.adaptive(
                  activeColor: Colors.blue,
                  value: true,
                  onChanged: (bool value) {},
                ),
              ),
              ListTile(
                tileColor: Colors.grey.shade900,
                leading: defaultTargetPlatform == TargetPlatform.android
                    ? const Icon(Icons.download)
                    : const Icon(CupertinoIcons.cloud_download),
                iconColor: Colors.white,
                title: const Text(
                  'Smart Downloads',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  'Download Next Episode',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                  ),
                ),
                trailing: defaultTargetPlatform == TargetPlatform.android
                    ? null
                    : const Icon(CupertinoIcons.forward),
              ),
              ListTile(
                onTap: defaultTargetPlatform == TargetPlatform.android
                    ? () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (final _) => const VideoQualityPage()),
                        )
                    : () => Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (final _) => const VideoQualityPage()),
                        ),
                tileColor: Colors.grey.shade900,
                leading: defaultTargetPlatform == TargetPlatform.android
                    ? const Icon(Icons.tv)
                    : const Icon(CupertinoIcons.tv),
                iconColor: Colors.white,
                title: const Text(
                  'Video Quality',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  'Standart',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                  ),
                ),
                trailing: defaultTargetPlatform == TargetPlatform.android
                    ? null
                    : const Icon(CupertinoIcons.forward),
              ),
              ListTile(
                tileColor: Colors.grey.shade900,
                leading: const Icon(Icons.storage),
                iconColor: Colors.white,
                title: const Text(
                  'Download Location',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  'Internal Storage',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                  ),
                ),
                trailing: defaultTargetPlatform == TargetPlatform.android
                    ? null
                    : const Icon(CupertinoIcons.forward),
              ),
              ListTile(
                tileColor: Colors.grey.shade900,
                leading: defaultTargetPlatform == TargetPlatform.android
                    ? const Icon(Icons.delete)
                    : const Icon(CupertinoIcons.trash),
                iconColor: Colors.white,
                title: const Text(
                  'Delete All Downloads',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
                ),
                child: Text(
                  'About',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}