# OverleafをVSCodeで操作するまで
以下では，クラウド型のLaTeXエディタとして有名なOverLeafをVSCodeでリモートワークスペースとして起動し，編集が可能になるまでの手順を説明していきます．  

## Overleaf側の設定
### Overleafサインアップ
まず，[Overleafのサインアップページ](https://ja.overleaf.com/sso-login)でサインアップを済ませておきます．  
サインアップが完了したら画面左上の「新規プロジェクト」>「空のプロジェクト」を選択し，任意のプロジェクト名を入力してプロジェクトを作成します．  
VSCodeでは，ここのプロジェクトに対してリモートワークスペースを開きます(後述)．  

### プロジェクトのCookieを取得
Overleafで作成したプロジェクトをVSCodeで参照する際に，プロジェクトのCookieを求められます．  
先ほど作成したプロジェクトの画面で「F12キー」，または「右クリック」>「検証」で開発者ツールを開きます．  
画面右上の「Network」タブをクリックし，フィルター欄に「/project」と入力します．  
以下の画像の手順で，プロジェクトのCookie情報を確認します．  

![説明画像](https://github.com/haradakaito/LaTeX_OverLeaf_VSCode/assets/75819611/c8435ccb-4c78-46c3-a3b0-c0d36bbf5a58)

## VSCode側の設定
### 拡張機能Overleaf Workshopインストール
VSCodeの拡張機能の検索欄に「Overleaf WorkShop」と入力し，Overleaf Workshopのインストールをします．  
インストールが完了すると，サイドバーにOverleaf Workshopが追加されるので，クリックして起動します．  
起動すると，OverleafのCookieでのログインが求められるので，先ほど確認したCookie情報を入力するとサーバーに接続できます．  
以下の画像の赤枠をクリックすると，リモートワークスペースが別ウィンドウとして開かれます．  

![OverleafWorkshop](https://github.com/haradakaito/LaTeX_OverLeaf_VSCode/assets/75819611/95e465a8-98d9-468a-b043-75b376ad9421)

以上で，すべての環境構築が完了となります．
あとは，自作のソースコードやテンプレートファイルなどをダウンロードし，コンパイラ設定などを適宜変更して編集を行います．
OverLeafをVSCodeで動かせれば良いと思った方の助けになれば幸いです．  
