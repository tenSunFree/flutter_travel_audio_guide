class AudioGuide {
  const AudioGuide({
    required this.id,
    required this.title,
    required this.summary,
    required this.url,
    required this.fileExt,
    required this.modified,
    required this.isDownloaded,
    required this.localFilePath,
  });

  final int id;
  final String title;
  final String? summary;
  final String url;
  final String? fileExt;
  final String modified;
  final bool isDownloaded;
  final String? localFilePath;

  AudioGuide copyWith({
    int? id,
    String? title,
    String? summary,
    String? url,
    String? fileExt,
    String? modified,
    bool? isDownloaded,
    String? localFilePath,
  }) {
    return AudioGuide(
      id: id ?? this.id,
      title: title ?? this.title,
      summary: summary ?? this.summary,
      url: url ?? this.url,
      fileExt: fileExt ?? this.fileExt,
      modified: modified ?? this.modified,
      isDownloaded: isDownloaded ?? this.isDownloaded,
      localFilePath: localFilePath ?? this.localFilePath,
    );
  }
}
