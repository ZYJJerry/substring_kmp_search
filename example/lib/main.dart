
import 'package:substring_kmp_search/substring_kmp_search.dart';

void main() {
  print("object");
  String txt = "你好弄好委屈哦吼我申请文件上来你好看我就是冷空气我就说了可千万你好你好数据熬时间都爱喝打死你打可接受的你好";
  print(KmpUtil.kmpSearchTextIndex(txt, "你好"));
}