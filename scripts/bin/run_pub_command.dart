import 'dart:io';

void main() async {
  folderChild(
    path: modulePath,
    onPath: run,
  );

  run(currentPath);
}

String get currentPath {
  return Directory.current.path.replaceAll('/scripts', '');
}

String get modulePath {
  return '$currentPath/module';
}

void folderChild({
  required String path,
  required Function(String path) onPath,
}) async {
  var dirs = Directory(path).listSync();
  for (var child in dirs) {
    await onPath(child.path);
  }
}

Future run(String path) async {
  await Process.start(
    'flutter',
    ['clean'],
    runInShell: true,
    workingDirectory: path,
  );
  await Process.start(
    'rm',
    ['-rf', '$path/pubspec.lock'],
    runInShell: true,
    workingDirectory: path,
  );
  await Process.start(
    'flutter',
    ['pub', 'get'],
    runInShell: true,
    workingDirectory: path,
  );
}
