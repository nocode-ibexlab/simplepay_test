class TemplateStatic {
  //템플릿 형식 정의

  //변경할 영역의 Start Tag
  static const String START_TAG = "<@@";

  //변경할 영역의 End Tag
  static const String END_TAG = "@@>";

  //템플릿 List 내부에서 변수와 고정영여역을 구분할 Prefix
  static const String BASE_TAG = "@@CHANGE_VAR@@";

  //단순 변수가 아닌 Cmd 형태의 변환 Prefix
  static const String CMD_TAG = "CMD_";

  //단순 변수가 아닌 다국어 형태의 변환 Prefix
  static const String I18N_TAG = "I18N.";

  static const String ELSE = "ELSE";
  static const String ENDIF = "ENDIF";

  // Tag 안에 Tag사용
  //변경할 영역의 Start Tag
  static const String INNER_START_TAG = "<##";

  //변경할 영역의 End Tag
  static const String INNER_END_TAG = "##>";
}
