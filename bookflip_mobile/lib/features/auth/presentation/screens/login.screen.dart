// import 'package:flutter/material.dart';
import 'package:bookflip_mobile/features/auth/presentation/controllers/auth.controller.dart';
import 'package:bookflip_mobile/features/auth/presentation/widgets/async_value_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  void _showRequiredFieldsToast() {
    showToast(
      context: context,
      builder: (BuildContext context, ToastOverlay overlay) {
        return SurfaceCard(
          child: Basic(
            title: const Text('Missing Fields'),
            subtitle: const Text('Please enter both username and password.'),
            trailing: PrimaryButton(
              size: ButtonSize.small,
              onPressed: () {
                // Close the toast programmatically when clicking Undo.
                overlay.close();
              },
              child: const Text('Undo'),
            ),
            trailingAlignment: Alignment.center,
          ),
        );
      },
      location: ToastLocation.bottomCenter,
    );
  }

  Future<void> _submit() async {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    if (email.isEmpty || password.isEmpty) {
      _showRequiredFieldsToast();
      return;
    }
    try {
      await ref
          .read(authControllerProvider.notifier)
          .signInWithEmailAndPassword(email: email, password: password);
          print("logged in");
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }
  Future<void> _logInWithGoogle() async {
    try {
      await ref
      .read(authControllerProvider.notifier)
      .signInWithGoogle();
      print("logged in");
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(authControllerProvider);
     ref.listen<AsyncValue>(authControllerProvider, (_, state) {
      state.showAlertDialog(context);
    });// --> implement authcontroller listener
    return SafeArea(
      child: Scaffold(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(32),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Welcome Back',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Color(0xFF1C1C1C),
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'Sign in to continue',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        color: Color(0xFF555555),
                      ),
                    ),

                    const SizedBox(height: 36),

                    // Username
                    FormField(
                      label: const Text('Username'),
                      key: const InputKey(#username),
                      child: TextField(
                        placeholder: const Text('Enter your username'),
                        controller: _emailController,
                        obscureText: false,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Password
                    FormField(
                      label: const Text('Password'),
                      key: const InputKey(#password),

                      child: TextField(
                        controller: _passwordController,
                        placeholder: const Text('Enter your password'),
                        obscureText: true,
                      ),
                    ),

                    const SizedBox(height: 32),

                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: PrimaryButton(
                        onPressed: state.isLoading ? null :  _submit,

                        // if (!valid) {
                        //   showToast(
                        //     context: context,
                        //     builder: (BuildContext context, ToastOverlay overlay) {
                        //       return SurfaceCard(
                        //         child: Basic(
                        //           title: const Text('Error'),
                        //           subtitle: const Text(
                        //             'An error has occured while requesting',
                        //           ),
                        //           trailing: PrimaryButton(
                        //             size: ButtonSize.small,
                        //             onPressed: () {
                        //               // Close the toast programmatically when clicking Undo.
                        //               overlay.close();
                        //             },
                        //             child: const Text('Undo'),
                        //           ),
                        //           trailingAlignment: Alignment.center,
                        //         ),
                        //       );
                        //     },
                        //     location: ToastLocation.bottomLeft,
                        // );
                        child: state.isLoading
                            ? CircularProgressIndicator(color: Colors.white)
                            : const Text('Submit'),
                      ),
                    ),
                    const SizedBox(height: 10),

                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: SecondaryButton(
                        onPressed:  state.isLoading ? null :  _logInWithGoogle,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(BootstrapIcons.google),
                            const SizedBox(width: 8),
                            const Text('Sign in with google'),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 26),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Color(0xFF87879D),
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    GestureDetector(
                      onTap: () {
                        context.go('/register');
                      },
                      child: const Text(
                        "Don't have an account? Sign up",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Color(0xFF87879D),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildInvalidToast(BuildContext context, ToastOverlay overlay) {
  return SurfaceCard(
    child: Basic(
      title: const Text('Error'),
      subtitle: const Text('Your credentials aren\'t valid'),
      trailing: PrimaryButton(
        size: ButtonSize.small,
        onPressed: () {
          // Close the toast programmatically when clicking Undo.
          overlay.close();
        },
        child: const Text('Undo'),
      ),
      trailingAlignment: Alignment.center,
    ),
  );
}

Widget buildErrorRequestingToast(BuildContext context, ToastOverlay overlay) {
  return SurfaceCard(
    child: Basic(
      title: const Text('Error'),
      subtitle: const Text('An error has occured while requesting'),
      trailing: PrimaryButton(
        size: ButtonSize.small,
        onPressed: () {
          // Close the toast programmatically when clicking Undo.
          overlay.close();
        },
        child: const Text('Undo'),
      ),
      trailingAlignment: Alignment.center,
    ),
  );
}
