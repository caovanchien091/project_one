import 'dart:async';

import 'package:scripts/scripts.dart';

void main() async {
  await runPubGet();
}

FutureOr runPubGet([bool isModule = true]) async {
  var commands = [
    Command(
      name: 'flutter',
      arguments: ['clean'],
    ),
    Command(
      name: 'flutter',
      arguments: ['pub', 'get'],
    ),
  ];

  if (isModule) {
    DirectoryUtils.folderChildren(
      folder: DirectoryUtils.rootPath() + '/module',
      onDirection: (path) async {
        print('');
        print("On ==========> $path");
        print('');
        await RunCommand.runs(
          path: path,
          commands: commands,
        );
      },
    );
  }

  await RunCommand.runs(
    path: DirectoryUtils.rootPath(),
    commands: commands,
  );
}
