import 'dart:io';

String get currentPath {
  return Directory.current.path;
}

String get moduleLayer {
  return '$currentPath/module/layer';
}

String get moduleShare {
  return '$currentPath/module/share';
}

void main() async {
  folderChild(
    path: moduleLayer,
    onPath: run,
  );

  folderChild(
    path: moduleShare,
    onPath: run,
  );

  run(currentPath);
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
}
