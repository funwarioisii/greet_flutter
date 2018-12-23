import 'package:test/test.dart';
import 'package:greet/greet.dart';


void main() {
  /// 本当は失敗すべきテスト　通ってしまう
  test("Hello Worldをプロパティのように引き出す", ()  {
    Greet.hello.then((value){
      expect("Hell World", equals(value));
    });
  });


  /// 通ってほしいテスト　通らない
  test("Hello Worldを関数のように呼び出す", ()  {
    var stack = new Greet();
    var task = stack.hello2();
    task
        .then(expectAsync1((e) =>
        expect(e, equals("Hello World"))));
  });
}