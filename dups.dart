import 'dart:io' show Platform;

/// Find duplicate PATH entries
void main() {
  // test1();
  // test2();

  Map<String, String> envVars = Platform.environment;
  report(envVars['PATH']);
}

/// test data
test1() {
  var s = "a:b:b:c";
  report(s);
}

/// test 2 - why does this have so many duplicates? 
/// I got the string from $PATH in bash
/// Looks like running the script from terminal is different to running this script from within vscode
/// and that this is the true situation - lots of duplicates!
test2() {
  var s =
      "/usr/local/mysql-5.7.11-osx10.9-x86_64/bin:/Users/andy/.gem/ruby/2.7.0/bin:/usr/local/opt/ruby/bin:/usr/local/opt/openssl@1.1/bin:/Users/andy/.poetry/bin:/Users/andy/.pyenv/shims:./bin:~/scripts:/Users/Andy/.nvm/versions/node/v12.6.0/bin:/usr/local/mysql-5.7.11-osx10.9-x86_64/bin:/Users/andy/.gem/ruby/2.7.0/bin:/usr/local/opt/ruby/bin:/usr/local/opt/openssl@1.1/bin:/Users/andy/.poetry/bin:/Users/andy/.pyenv/shims:./bin:~/scripts:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/VMware Fusion.app/Contents/Public:/usr/local/share/dotnet:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/usr/local/mysql-5.7.11-osx10.9-x86_64/bin:/Users/andy/.gem/ruby/2.7.0/bin:/usr/local/opt/ruby/bin:/usr/local/opt/openssl@1.1/bin:/Users/andy/.poetry/bin:/Users/andy/.pyenv/shims:./bin:~/scripts:/Users/andy/.local/bin:/Users/andy/Devel/flutter/bin:/Users/Andy/Devel/flutter/bin/cache/dart-sdk/bin:/Users/andy/Devel/flutter/.pub-cache/bin:/Users/andy/.local/bin:/Users/andy/.local/bin:/Users/andy/Devel/flutter/bin:/Users/Andy/Devel/flutter/bin/cache/dart-sdk/bin:/Users/andy/Devel/flutter/.pub-cache/bin:/Users/andy/.local/bin:/Users/andy/.local/bin:/Users/andy/Devel/flutter/bin:/Users/Andy/Devel/flutter/bin/cache/dart-sdk/bin:/Users/andy/Devel/flutter/.pub-cache/bin";
  report(s);
}

/// pass in a PATH string and it will print a flat
/// listing one path per line, and tell you if there are duplicated
void report(String s) {
  var lz = s.split(':');
  lz.sort();
  lz.forEach((el) => print(el));
  print('');
  List duplicates = find_duplicates(lz);
  if (duplicates.length > 0) {
    print('** duplicates are:');
    duplicates.forEach((el) => print(el));
  } else
    print('** no dups');
  print('${"-" * 20}');
}

List find_duplicates(list) {
  // Inspired by https://stackoverflow.com/questions/59909947/finding-the-duplicated-values-in-list-of-string-dart
  List _list = [...list]; // clone before manipulating
  _list.toSet().forEach((item) => {_list.remove(item)});
  return _list.toSet().toList();
}
