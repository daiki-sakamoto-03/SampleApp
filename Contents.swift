// Extension
// クラスや型の拡張機能を持たせる構文
class User {
    var name = "Undefined"
}
extension User {
    func printUserName() {
        print(name)
    }
}

let user = User()

// extensionを活用する恩恵
// １、プログラムを書く際にswiftファイルを分割することができる
// →１ファイルあたりのコード量は多くし過ぎない方が良い
// ２、処理ブロックの関心ごとを分割する
protocol TimelineDelegate {
    func post(text: String)
}

extension User: TimelineDelegate {
    func post(text: String) {
        print("Timelineに\(text)が投稿されました。")
    }
}

extension String {
    var logText: String {
        return "この文字列は\(self)です。"
    }
}

let text = "テキスト"


extension Int {
    var increasedValue: Int {
        return self + 1
    }
}
let one = 1
print(one.increasedValue)
