import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_auth/ui/auth/signup_page.dart';
import 'package:riverpod_auth/ui/page/my_page.dart';

import '../main.dart';

/// GoRouterの画面遷移の設定
/// 変数は、_routerとすると、
/// privateになるからか、他のファイルで呼び出せなかった!
final GoRouter router = GoRouter(
  routes: <GoRoute>[
    /// 最初のページのページへ移動する設定
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const HomePage(),
      routes: <GoRoute>[
        /// パスワードをリセットするページへ画面遷移する設定
        GoRoute(
          path: 'auth',
          builder: (BuildContext context, GoRouterState state) =>
              const SignUpPage(),
        ),

        /// ログイン後のページへ画面遷移する設定
        GoRoute(
          path: 'mypage',
          builder: (BuildContext context, GoRouterState state) =>
              const MyPage(),
        ),
      ],
    ),
  ],
);
