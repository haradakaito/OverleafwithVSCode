# OverLeafをVSCodeで操作するまで
クラウド型のLaTeXエディタとして有名なOverLeafをVSCodeで動かせれば良いと思った方の助けになれば幸いです．  
以下では，OverLeafをVSCodeでリモートワークスペースとして起動し，編集が可能になるまでの手順を説明していきます．  

## OverLeaf側の設定
### OverLeafサインアップ
まず，[OverLeafのサインアップページ](https://ja.overleaf.com/sso-login)でサインアップを済ませておきます．  
サインアップが完了したら画面左上の「新規プロジェクト」>「空のプロジェクト」を選択し，任意のプロジェクト名を入力してプロジェクトを作成します．  
VSCodeでは，ここのプロジェクトに対してリモートワークスペースを開きます(後述)．  

### プロジェクトのCookieを取得
OverLeafで作成したプロジェクトをVSCodeで参照する際に，プロジェクトのCookieを求められます．  
先ほど作成したプロジェクトの画面で「F12キー」，または「右クリック」>「検証」で開発者ツールを開きます．  
画面右上の「Network」タブをクリックし，フィルター欄に「/project」と入力します．  
以下の画像の手順で，プロジェクトのCookie情報を確認します．  

![説明画像](https://github.com/haradakaito/LaTeX_OverLeaf_VSCode/assets/75819611/c8435ccb-4c78-46c3-a3b0-c0d36bbf5a58)

## VSCode側の設定

