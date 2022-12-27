import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authStateChangesProvider = StreamProvider.autoDispose<User?>((ref) {
  // 以下のプロバイダからFirebaseAuthを取得します。
  final firebaseAuth = ref.watch(firebaseAuthProvider);
  // Stream<User?> を返すメソッドを呼び出す。
  return firebaseAuth.authStateChanges();
});

// プロバイダを使用して、FirebaseAuth インスタンスにアクセスします。
final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});
// メールアドレスのテキストを保存するProvider
final emailProvider = StateProvider.autoDispose((ref) {
  return TextEditingController(text: '');
});

final passwordProvider = StateProvider.autoDispose((ref) {
  // パスワードのテキストを保存するProvider
  return TextEditingController(text: '');
});
