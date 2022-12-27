# Riverpodでログイン状態を維持する
## 概要
最近流行りの技術構成で認証関係のDemoアプリを作成
- 技術構成
    - package
        - Riverpod2.0
        - FirebaseAuthtication
        - go_router
    
[参考にしたサイト](https://codewithandrea.com/articles/flutter-state-management-riverpod/)

## CODE WITH ANDREAのコード
Use StreamProvider to watch a Stream of results from a realtime API and reactively rebuild the UI.
For example, here is how to create a StreamProvider for the authStateChanges method of the FirebaseAuth class:

例えば、FirebaseAuthクラスのauthStateChangesメソッド用のStreamProviderを作成する方法は以下の通りです。
StreamProvider を使用して、リアルタイム API からの結果の Stream を監視し、UI をリアクティブに再構築します。

```dart
final authStateChangesProvider = StreamProvider.autoDispose<User?>((ref) {
  // get FirebaseAuth from the provider below
  final firebaseAuth = ref.watch(firebaseAuthProvider);
  // call a method that returns a Stream<User?>
  return firebaseAuth.authStateChanges();
});

// provider to access the FirebaseAuth instance
final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});
```

And here's how to use it inside a widget:
そして、ウィジェット内での使い方は以下の通りです。

```dart
Widget build(BuildContext context, WidgetRef ref) {
  // watch the StreamProvider and get an AsyncValue<User?>
  final authStateAsync = ref.watch(authStateChangesProvider);
  // use pattern matching to map the state to the UI
  return authStateAsync.when(
    data: (user) => user != null ? HomePage() : SignInPage(),
    loading: () => const CircularProgressIndicator(),
    error: (err, stack) => Text('Error: $err'),
  );
}
```

今回使用した技術

| 使用する技術 |  Version |
|--------------|----------|
|Flutter       |3.3.1     |
|Dart          |2.18.0    |
|firebase_core |^2.4.0    |
|firebase_auth |^4.2.1    |
|flutter_riverpod|^2.1.1  |
|go_router     |^5.2.4    |

-----

## アプリを作ることにした背景
RiverpodのStreamProviderを使って、FirebaseのLogin後の状態を維持する方法を
最近知ったので、記事を書いてみたいと思った。
最近流行りのgo_routerも組み合わせてみた。

--------
## 感想
メールアドレス、パスワードが正しく入力されていないと、ログインできていないので以前悩まされていた
ログインできていないのに、画面遷移するエラーには遭遇しなかったので、良いコードをかけたと思う。