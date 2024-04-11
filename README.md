# VSCodeでLaTeX＋Overleafを動かすまで
　LaTeXはWordに比べて「書式が綺麗」で「文献管理が簡単」「動作が軽い」点で使いやすい文書作成ツールと言われています．
　しかし，いざ自分で使用してみようと，LaTeX環境構築に関する色々なサイト・記事を見ましたが，何となく面倒な雰囲気が漂っていました(個人的な見解)．．．
　何か簡単にLaTeXを操作できる方法は無いものかと辿り着いたのが，「**Overleaf**」です！
 
## 1. Overleafとは
　Overleafについてざっくり説明しておきます．LaTeXで文書を書く時，ローカル環境にLaTeXをインストールし，何かしらの統合環境(TeX LiveやVSCodeなど)でコンパイルします．
　しかし，冒頭で述べたように，デバイス上にLaTeX環境を構築するまでが手間です．これに対して**OverleafはクラウドベースのLaTeX専用エディタ**として利用できるため，**面倒な環境構築を行う必要が一切なくなります**．
　※他にも「便利なモジュールもインストール不要で利用可能」「テンプレート機能」「補完機能」「GitHub連携」など便利なところはありますが，ここでは詳しく説明はしません．

## 2. VSCodeでOverleafを操作
　**Overleafは，基本的にブラウザでのみ操作可能**なエディタとなっています．そのため，編集中は常にブラウザを起動しておき，慣れないUIでLaTeXを編集する必要があります．調べてみると，**VSCode上でOverleafを操作できる**ことが分かってきました．
　つまり，「LaTeXの環境構築するのは面倒」→「環境構築不要なOverleafで解決」→「ブラウザ操作は嫌だ」→「VSCodeでOverleafを操作しよう」という流れになります．

## 3. VSCodeでOverleaf(+LaTeX)を動かす手順
　それでは，**VSCodeでOverleafを操作し，LaTeXで文書作成を行うまでの手順を説明**します．
　※以降の説明は，**VSCodeが既にインストールされていることを前提**として進んでいきます．インストールしていない人は，まずVSCodeをインストールしてください．
### 3.1 OverLeafサインアップ
　まず，**Overleafの公式ページ[https://ja.overleaf.com/register]からサインアップ**を行います．
 サインアップは，メールアドレスとパスワードを設定し，メールアドレスに届くコードで認証するだけなので簡単です．
　その後，有料プランへの加入を勧められますが，無料で使用したい人は「No, I don't need these」で丁重にお断りしましょう．
 
 ![スクリーンショット (30).png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/3477007/1277d8a9-c094-c41b-9d6c-2639372b80ac.png)

　次に，スタート画面が表示されます．「Create a new project」をクリックし「空のプロジェクト」をクリックします．その際，プロジェクト名の入力が求められますので，適当な名称で作成してもらって結構です．

 ![スクリーンショット (31).png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/3477007/e8ace673-dc49-82da-4c28-eeff037c6762.png)

![スクリーンショット (32).png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/3477007/e82205a8-2022-aee3-854c-1aa38e6e3f67.png)

　空のプロジェクトが作成されると，画面左にソースファイル，画面右にテキストファイルが表示されると思います．

![スクリーンショット (33).png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/3477007/a0b4e534-ed4d-5158-b04a-5090164a3086.png)

　以上で，Overleafのサインアップは完了となります．

### 3.2 VSCodeでOverleafログイン
　先ほど，サインアップしたOverleafのアカウントにVSCodeでログインします．まず，VSCode拡張機能の検索欄に「Overleaf Workshop」と入力し，インストールまで行います．インストールが完了すると，サイドバーにOverleaf Workshopというアイコンが追加されますので，クリックします．

![スクリーンショット (35).png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/3477007/7148179c-9c20-ab98-0e50-b0f05c960e7c.png)

![スクリーンショット (34).png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/3477007/44235bae-5342-c883-c7c8-dc5cce411cfa.png)

　すると「www.overleaf.com」というホストが表示されていると思いますので，カーソルを合わせて，ホスト名の右側にある「Login to Server」というボタンをクリックします．

![スクリーンショット (36).png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/3477007/53ffb228-1057-7e36-591b-1acaac3672b3.png)

　ログインするための手段の選択が求められますが，Cookiesを用いたログイン方法「**Login with Cookies**」を選択してください．すると，Cookies情報の入力が求められますので，自身のOverleafのCookies情報を入力します．

- **OverleafのCookies情報の取得**
OverleafのCookies情報取得方法を説明します．まず，**Overleafのホーム画面にアクセス**します．

![スクリーンショット (37).png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/3477007/d9b03bfb-6881-a3eb-dc96-f46183e507f6.png)

　そのページの**管理者画面を開きます(F12キーを押す，または右クリックで「検証」)**．管理者画面内の「Network」タブをクリックし，検索欄に「/project」と入力します．

![スクリーンショット (38).png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/3477007/036a1548-d2de-5c0c-15d2-c939e8dcabc2.png)

　この画面のまま，**ページを更新**すると，<project>という名称のRequestURLを含む通信が出てきます．その中の<projectドキュメント>をクリックし，<Response Headers>の中にある<Set-Cookie>に**記載されている文字列をコピー**してください．

![画像1.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/3477007/6f5a16b5-1dbf-0c14-77ea-cc1103c34b28.png)

　以上で，OverleafのCookies情報の取得が完了しました．最後に，このCookies情報をOverleaf Workshopで入力することでVSCodeでOverleafにログインすることができます，

## GitHubリポジトリ
https://github.com/haradakaito/LaTeX_OverLeaf_VSCode?tab=readme-ov-file









