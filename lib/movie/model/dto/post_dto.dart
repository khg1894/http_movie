// post_dto.dart

// 테이블 용
class PostDTOTable {
  String rank; // 유저 번호
  String auiCnt; // 글 번호
  String movieNm; // 제목
  String openDt;

  // 생성자
  PostDTOTable({
    required this.rank,
    required this.auiCnt,
    required this.movieNm,
    required this.openDt,
  });

  // 생성자를 이용한 팩토리 함수
  factory PostDTOTable.fromJson(dynamic json) => PostDTOTable(
        rank: json["rank"],
        auiCnt: json["audiCnt"],
        movieNm: json["movieNm"],
        openDt: json["openDt"],
      );

  // 팩토리를 이용한 함수
  static List<PostDTOTable> fromJsonList(List jsonList) {
    return jsonList.map((json) => PostDTOTable.fromJson(json)).toList();
  }
}
