# はじめに
本記事では，レガシーな組版処理システムであるLaTeXを扱うために，統合開発環境「VSCode」で「Overleaf」を操作できるようにする手順を説明します．

※LaTeXに関する詳細な説明は省略します．あらかじめご了承ください．

# Overleafとは
まずは，Overleafに関する簡単な説明を行います．

Overleafは，オンラインでLaTeX文書を作成・編集・共有するためのクラウドベースのプラットフォームです．
クラウドベースであるため，ローカルにLaTeX環境を構築する必要がなく，誰でも簡単にLaTeXを使える便利なツールです．

※ローカルに環境を構築することには多くのメリットがあります（ネットワーク環境やアクセス過多による負荷に依存しないなど）．
※あくまで，LaTeXの環境構築を省略して，クイックスタートしたい方やLaTeX初心者の方に推奨です．

# VSCodeでOverleafを動作させるメリット
Overleafはブラウザでのみ動作可能なプラットフォームですが，本記事で紹介する手法を使うと，VSCodeで操作することが可能になります．

この手法のメリットとしては，以下が考えられます（筆者の見解）．
- 見慣れたインターフェースで編集が可能
- 誤ってタブやウィンドウを閉じてしまう心配が少ない
- VSCodeの様々な拡張機能が使用できる

筆者が特に気に入っている点は，「**GitHub Copilotが動作する**」ことです！

※GitHub Copilot：AIを用いてリアルタイムで補完・提案・生成を行うことでコーディング効率を向上させる，VSCodeなどの統合開発環境で利用できるプログラミングツールです．

VSCodeにGitHub Copilotを導入しておくと，コーディング時と同様にLaTeXの編集時にも助けてくれます．
例えば，文章を書いているときには「後に続く文章候補を自動で生成」してくれたり，LaTeXでコンパイルエラーが発生したときには「自動で適切な構文に修正」してくれたりと，非常に便利なアシストを提供してくれます．

※まだVSCodeにGitHub Copilotを導入していない方は，以下のサイトなどが参考になると思いますので，導入をおすすめします．

https://code.visualstudio.com/docs/copilot/overview

https://qiita.com/RyoWakabayashi/items/1207128e88669c76bf5f

# VSCodeでOverleafを操作する手順
VSCodeでOverleafを操作できるようになるまでの手順を，以下のステップに沿って説明していきます．

- Overleafのアカウントを作成
- VSCodeでOverleafにログイン

## OverLeafのアカウントを作成
まず，以下のページから**Overleafアカウントの作成**を行います．
 
 https://ja.overleaf.com/register
 
サインアップは，メールアドレスとパスワードを入力し，コード認証を行うだけで完了します．

※この際，有料プランへの加入を勧められますが，無料で使用したい方は「**No, I don't need these**」を選択して，丁重にお断りしましょう．
 
 ![スクリーンショット (30).png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/3477007/1277d8a9-c094-c41b-9d6c-2639372b80ac.png)

以上で，Overleafアカウントの作成は完了となります．

## 補足：プロジェクトの作成
アカウントの作成が完了すると，スタート画面が表示されます．
「**Create a new project**」をクリックし，「空のプロジェクト」を選択します．
その後，プロジェクト名の入力を求められますので，適当な名称（Testなど）で作成してください．

※プロジェクトは複数作成可能で，いつでも名称の変更や削除ができます．

 ![スクリーンショット (31).png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/3477007/e8ace673-dc49-82da-4c28-eeff037c6762.png)

![スクリーンショット (32).png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/3477007/e82205a8-2022-aee3-854c-1aa38e6e3f67.png)

プロジェクトを作成すると，画面左にソースファイル一覧，画面右にテキストファイルが表示されると思います．（以下の画像は，空のプロジェクト（プロジェクト名：Test）を作成した場合の例です）

![スクリーンショット (33).png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/3477007/a0b4e534-ed4d-5158-b04a-5090164a3086.png)

## VSCodeでOverleafログイン
先ほどサインアップしたOverleafのアカウントにVSCodeでログインします．
まず，VSCodeの拡張機能の検索欄に「**Overleaf Workshop**」と入力し，拡張機能をインストールします．

![スクリーンショット (35).png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/3477007/7148179c-9c20-ab98-0e50-b0f05c960e7c.png)

インストールが完了すると，サイドバーに「Overleaf Workshop」という名前のアイコンが追加されます．これをクリックしてください．

![スクリーンショット (34).png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/3477007/44235bae-5342-c883-c7c8-dc5cce411cfa.png)

すると「www.overleaf.com」というホストが表示されるので，そこにカーソルを合わせ，ホスト名の右側にある「**Login to Server**」をクリックします．

![スクリーンショット (36).png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/3477007/53ffb228-1057-7e36-591b-1acaac3672b3.png)

ログイン手段の選択画面が表示されますが，Cookiesを用いたログイン方法「**Login with Cookies**」を選択してください．すると，Cookies情報の入力が求められますので，自身のOverleafのCookies情報を入力します．

### **OverleafのCookies情報の取得**
OverleafのCookies情報の取得方法を説明します．まず，以下のページからOverleafに自身のアカウントでログインしてください．

https://ja.overleaf.com/project

ログイン後に次の手順に進みます．
ログインすると，以下の画像のようなページが表示されます．

![スクリーンショット (37).png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/3477007/d9b03bfb-6881-a3eb-dc96-f46183e507f6.png)

このページのCookie情報を取得し，Overleaf Workshopのログイン時にその情報を入力することで，VSCodeからOverleafにログインすることができます．

### 補足：ページのCookie情報を取得する方法（Chrome）
まず，管理者画面を開きます（F12キーを押す，または右クリックで「検証」）．
管理者画面内の「**Network**」タブをクリックし，検索欄に「**/project**」と入力します．（以下は入力後の画面例です）．

![スクリーンショット (38).png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/3477007/036a1548-d2de-5c0c-15d2-c939e8dcabc2.png)

この画面のままページを更新すると，**project**という名称のRequestURLを含む通信が表示されます．
その中の**projectドキュメント**をクリックし，**Response Headers**にある**Set-Cookie**に記載されている文字列（以下の画面の黒塗り部分）をコピーしてください．

![画像1.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/3477007/6f5a16b5-1dbf-0c14-77ea-cc1103c34b28.png)

以上で，OverleafのCookies情報の取得が完了しました．

# まとめ
本記事では，オンラインで使用できるLaTeXエディタ「Overleaf」を，VSCodeで操作する方法について説明しました．
特に，LaTeX未経験の方や，環境構築が面倒だと感じて敬遠している方にとって，LaTeXを触るきっかけになれば幸いです．

※本記事で説明した内容は，Overleaf Workshopの公式Gitリポジトリで詳細に記述されています（全て英語ですが）．気になる部分や説明で分かりにくかった部分については，公式ドキュメントを確認することを強く推奨します．

https://github.com/iamhyc/Overleaf-Workshop
