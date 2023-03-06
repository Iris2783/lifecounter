import 'package:objectbox/objectbox.dart';

@Entity()//これをアノテーションといい、注釈のようなもの。objectBoxではアノテーションを使うことでそのクラスやフィールドをデータベースに保存するためのテーブルやカラムに紐づけることができる
class LifeEvent {
  //LifeEventクラスを作成
  String title; //人生のイベント名をタイトル
  int count; //イベントが何回起こったかをカウントとする

  int id = 0;//データベースに保存されるデータはそれぞれを識別するためにIDを持たないといけないので設定している　初期値は0としている

  LifeEvent({
    //このコンストラクタを使うことでLifeEventをコード内のどこでも作ることができる
    required this.title,
    required this.count,
  });
}
