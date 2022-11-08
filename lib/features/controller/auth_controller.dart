import 'dart:ffi';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_tutorial/features/repository/auth_repository.dart';

final authControllerPrivider = Provider(
  (ref) => AuthController(
    authRepository: ref.read(authRepositoryProvider),
  ),
);

class AuthController {
  final AuthRepository _authRepository;

  AuthController({required AuthRepository authRepository})
      : _authRepository = authRepository;

  void signInWithGoogle() {
    _authRepository.singInWithGoogle();
  }
}
