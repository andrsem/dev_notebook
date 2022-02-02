import 'dart:math';

String formatBytes(int bytes, {int decimals = 2}) {
  if (bytes <= 0) {
    return '0 MB';
  }

  const suffixes = ['B', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'];
  final i = (log(bytes) / log(1000)).floor();
  final number = (bytes / pow(1000, i)).toStringAsFixed(decimals);
  final unit = suffixes[i];

  return '$number $unit';
}
