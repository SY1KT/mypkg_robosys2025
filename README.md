# mypkg_robosys2025
ロボットシステム学課題2  ROS2を用いたトピック通信の基礎を学習するためのパッケージ  
他のノードが出す数値を受け取り、自分のカウント値と組み合わせて新しい情報をトピックに流します。

---

## ノード構成

### smart_talker ノード

| 項目 | 内容 |
|---|---|
| ノード名 | `smart_talker` |
| executable | `talker` |
| 実装 | Python（rclpy） |

---

## トピック一覧

### Publish

| トピック名 | 型 | 説明 |
|---|---|---|
| `/countup` | `std_msgs/msg/Int16` | カウントアップ値 |
| `/diff` | `std_msgs/msg/Int16` | count と入力値との差 |
| `/status` | `std_msgs/msg/String` | ノード状態 |

### Subscribe

| トピック名 | 型 | 説明 |
|---|---|---|
| `/sensor_value` | `std_msgs/msg/Int16` | 他ノードからの入力 |

---

## トピック入出力例
```bash
 
```
## ソフトウェア
- Python
 - テスト済みバージョン: 3.7~3.12

## テスト環境
Ubuntu22.04

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージのコードは，下記のスライド(CC-BY-SA 4.0 by Ryuichi Ueda)のものを，本人の許可を得て自身の著作としたものです.
    - [ryuichiueda/slides_marp robosys_2025](https://github.com/ryuichiueda/slides_marp/tree/master/prob_robotics_2025)
- © 2025 Tatsunori Kanno
