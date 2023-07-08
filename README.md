# VSCode

vscode の設定とキーバインド,拡張機能  
linux 用設定

## 初期化設定

```
cd dotfile
./init.sh
```

## 新しく拡張機能を追加して別の環境にも適用したい時

```
code --list-extensions > extensions
./install_extension.sh
```

# Vimrc

```
cd dotfile
ln -s .vimrc ~/.vimrc
```

# bash 設定

```
cd dotfile
ln -s .bashrc ~/.bashrc
```

# gitconfig 設定

- userの名前、メールアドレスを使い分けるように
- 使い分けのための ~/.gitconfig_personal などはそれぞれのPCで用意する
```
cd git
ln -s $(pwd)/.gitconfig_settings ~/.gitconfig.settings
ln -s $(pwd)/.gitconfig  ~/.gitconfig
```
