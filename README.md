Environment
============
Ruby 2.1.3

Rails 4.1.4

Installation Ruby and Rails
==============

We will use rbenv to install ruby. Here are following steps

3-B-1. 安裝命令行工具（如果已經有安裝 Xocde 則跳過）

打開終端機輸入下面命令：

`$ xcode-select --install`

3-B-2. 安裝 Homebrew：

`$  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"`

3-B-3. 安裝 rbenv：
```
$ brew update
$ brew install rbenv ruby-build
$ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
$ echo 'export PATH="$HOME/.rbenv/shims:$PATH"' >> ~/.bash_profile
$ source ~/.bash_profile
```

3-B-4. 用 rbenv 安裝 Ruby：

`$ rbenv install 2.1.3`

如果遇到 `OpenSSL::SSL::SSLError: ... : certificate verify failed` 錯誤，試試：
```
$ brew install curl-ca-bundle`
$ cp /usr/local/opt/curl-ca-bundle/share/ca-bundle.crt `ruby -ropenssl -e 'puts OpenSSL::X509::DEFAULT_CERT_FILE'`
```

3-B-5. 設定預設使用的 Ruby:

`$ rbenv global 2.1.3`

3-B-6. 安裝 rails:

`$ gem install rails --no-ri --no-rdoc`



Set Up Project
============
First clone this project from this repo 

then follow these steps

1.

`$ bundle`


2.

this two command only use for first tiem

`$ rake db:create`

`$ rake db:seed`

and then do this

`$ rake db:migrate`

3.

`$ rails s` to open server

(use `cirl c` to stop)

4.

then you can go to 

[http://localhost:3000](http://localhost:3000)

on your browser







<!--This README would normally document whatever steps are necessary to get the-->
<!--application up and running.-->

<!--Things you may want to cover:-->

<!--* Ruby version-->

<!--* System dependencies-->

<!--* Configuration-->

<!--* Database creation-->

<!--* Database initialization-->

<!--* How to run the test suite-->

<!--* Services (job queues, cache servers, search engines, etc.)-->

<!--* Deployment instructions-->

<!--* ...-->


<!--Please feel free to use a different markup language if you do not plan to run-->
<!--<tt>rake doc:app</tt>.-->
