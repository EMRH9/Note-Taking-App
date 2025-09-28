class Folder {
  final String id;
  final String name;
  final int fileCount;
  final double sizeInGB;
  final String iconPath;
  final bool isEmpty;

  const Folder({
    required this.id,
    required this.name,
    required this.fileCount,
    required this.sizeInGB,
    required this.iconPath,
    this.isEmpty = false,
  });

  String get formattedSize {
    return '${sizeInGB.toStringAsFixed(2)} GB';
  }

  String get formattedFileCount {
    return '$fileCount Files';
  }
}
