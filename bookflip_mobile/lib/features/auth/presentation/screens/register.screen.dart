import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
// import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                      'Create Account',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Color(0xFF1C1C1C),
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'Fill the form to continue',
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
                      key: const InputKey(#usernameReg),
                      child: TextField(
                        placeholder: const Text('Enter username'),
                        controller: _usernameController,
                      ),
                    ),
                    const SizedBox(height: 20),
      
                    // Email
                    FormField(
                      label: const Text('Email'),
                      key: const InputKey(#email),
                      child: TextField(
                        placeholder: const Text('Enter your email'),
                        controller: _emailController,
                      ),
                    ),
                    const SizedBox(height: 20),
      
                    // Password
                    FormField(
                      label: const Text('Password'),
                      key: const InputKey(#passwordReg),
                      child: TextField(
                        placeholder: const Text('Create password'),
                        controller: _passwordController,
                        obscureText: true,
                      ),
                    ),
                    const SizedBox(height: 20),
      
                    // Confirm Password
                    FormField(
                      label: const Text('Confirm Password'),
                      key: const InputKey(#confirmPassword),
                      child: TextField(
                        placeholder: const Text('Confirm password'),
                        controller: _confirmPasswordController,
                        obscureText: true,
                      ),
                    ),
      
                    const SizedBox(height: 32),
      
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: PrimaryButton(
                        onPressed: () {},
                        child: const Text('Sign Up'),
                      ),
                    ),
                    const SizedBox(height: 10),

                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: SecondaryButton(
                        onPressed: () {},
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
                    const SizedBox(height: 24),
      
                    GestureDetector(
                      onTap: () {
                        context.go('/login');
                      },
                      child: const Text(
                        "Already have an account? Login",
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
