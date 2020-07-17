import 'dart:io' show Platform;

void main() {
  // var s =
  //     "/usr/local/mysql-5.7.11-osx10.9-x86_64/bin:/Users/andy/.gem/ruby/2.7.0/bin:/usr/local/opt/ruby/bin:/usr/local/opt/openssl@1.1/bin:/Users/andy/.poetry/bin:/Users/andy/.pyenv/shims:./bin:~/scripts:/Users/Andy/.nvm/versions/node/v12.6.0/bin:/usr/local/mysql-5.7.11-osx10.9-x86_64/bin:/Users/andy/.gem/ruby/2.7.0/bin:/usr/local/opt/ruby/bin:/usr/local/opt/openssl@1.1/bin:/Users/andy/.poetry/bin:/Users/andy/.pyenv/shims:./bin:~/scripts:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/VMware Fusion.app/Contents/Public:/usr/local/share/dotnet:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/usr/local/mysql-5.7.11-osx10.9-x86_64/bin:/Users/andy/.gem/ruby/2.7.0/bin:/usr/local/opt/ruby/bin:/usr/local/opt/openssl@1.1/bin:/Users/andy/.poetry/bin:/Users/andy/.pyenv/shims:./bin:~/scripts:/Users/andy/.local/bin:/Users/andy/Devel/flutter/bin:/Users/Andy/Devel/flutter/bin/cache/dart-sdk/bin:/Users/andy/Devel/flutter/.pub-cache/bin:/Users/andy/.local/bin:/Users/andy/.local/bin:/Users/andy/Devel/flutter/bin:/Users/Andy/Devel/flutter/bin/cache/dart-sdk/bin:/Users/andy/Devel/flutter/.pub-cache/bin:/Users/andy/.local/bin:/Users/andy/.local/bin:/Users/andy/Devel/flutter/bin:/Users/Andy/Devel/flutter/bin/cache/dart-sdk/bin:/Users/andy/Devel/flutter/.pub-cache/bin";

  Map<String, String> envVars = Platform.environment;
  // print(envVars['PATH']);
  var s = envVars['PATH'];
  // s = "a:b:b:c";

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

  //   print('duplicates are: ${list.toSet().toList()}');

  // var lz_nodups = lz.toSet().toList();
  // if (lz.length == lz_nodups.length)
  //   print('no dups');
  // else {
  //   print(
  //       'there are dups! lz.length=${lz.length} lz_nodups.length=${lz_nodups.length}');
  //   // print('lz.toSet()=${lz.toSet()}');
  //   // print('lz_nodups.toSet()=${lz_nodups.toSet()}');
  //   // List<String> difference = lz.toSet().difference(lz_nodups.toSet()).toList();
  //   // print(difference.toString());

  //   // print(listDiff(lz, lz_nodups));

  //   // List<String> output = [];
  //   // lz.forEach((element) {
  //   //   if (!lz_nodups.contains(element)) {
  //   //     output.add(element);
  //   //   }
  //   // });
  //   // print(output);

  //   print(find_duplicates([...lz]); // send copy of lz list as param
  //   // find_duplicates([...lz]);
  //   // find_duplicates([...lz]);
  // }

//   print(lz);
}

// List<T> listDiff<T>(List<T> l1, List<T> l2) => (l1.toSet()..addAll(l2))
//     .where((i) => !l1.contains(i) || !l2.contains(i))
//     .toList();

List find_duplicates(list) {
  // Inspired by https://stackoverflow.com/questions/59909947/finding-the-duplicated-values-in-list-of-string-dart
  List _list = [...list]; // clone before manipulating
  _list.toSet().forEach((item) => {_list.remove(item)});
  return _list.toSet().toList();
}
