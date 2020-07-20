# dups_in_path

Find duplicate PATH entries

Written in pure dart.  
CLI (command line) only.

## Running

```
dart dups.dart
```

## Compiling

```
dart2native dups.dart -o bin/dups
```

## Usage

print a flat listing of your environment PATH one path per line, 
and tell you if there are duplicated

e.g.

```shell
Andys-iMac-3:dups_in_path andy$ dups
./bin
/Applications/VMware Fusion.app/Contents/Public
/Library/Frameworks/Mono.framework/Versions/Current/Commands
/Users/Andy/.nvm/versions/node/v12.6.0/bin
/Users/Andy/Devel/flutter/bin/cache/dart-sdk/bin
/Users/andy/.gem/ruby/2.7.0/bin
/Users/andy/.local/bin
/Users/andy/.local/bin
/Users/andy/.poetry/bin
/Users/andy/.pyenv/shims
/Users/andy/Devel/flutter/.pub-cache/bin
/Users/andy/Devel/flutter/bin
/bin
/sbin
/usr/bin
/usr/local/bin
/usr/local/mysql-5.7.11-osx10.9-x86_64/bin
/usr/local/opt/openssl@1.1/bin
/usr/local/opt/ruby/bin
/usr/local/share/dotnet
/usr/sbin
~/scripts

** duplicates are:
/Users/andy/.local/bin
--------------------
```
