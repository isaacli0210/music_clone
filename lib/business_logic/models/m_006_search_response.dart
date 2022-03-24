class M006SearchResponse {
  M006SearchResponse({
    required this.resultCount,
    required this.result
  });

  final int resultCount;
  final List<Result> result;

  factory M006SearchResponse.fromJson(Map<String, dynamic> data) {
    final resultCount = data['resultCount'] as int;
    final resultData = data['results'] as List<dynamic>?;
    final result = resultData != null
      ? resultData.map((resultData) => Result.fromJson(resultData)).toList()
      : <Result>[];

    return M006SearchResponse(
      resultCount: resultCount,
      result: result
    );
  }

}


class Result {
  Result({
    required this.kind,
    required this.artistName,
    required this.trackName,
    required this.artworkURL100,
  });

  final String kind;
  final String artistName;
  final String trackName;
  final String artworkURL100;

  factory Result.fromJson(Map<String, dynamic> data) {
    final kind = data['kind'] as String;
    final artistName = data['artistName'] as String;
    final trackName = data['trackName'] as String;
    final artworkURL100 = data['artworkUrl100'] as String;
  
    return Result(kind: kind, artistName: artistName, trackName: trackName, artworkURL100: artworkURL100);
  }

  Map<String, dynamic> toJson() {
    return {
      'kind': kind,
      'artistName': artistName,
      'trackName': trackName,
      'artworkUrl100': artworkURL100
    };
  }
}