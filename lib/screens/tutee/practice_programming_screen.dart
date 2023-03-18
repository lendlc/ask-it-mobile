import 'package:ask_it/core/basic_error.dart';
import 'package:ask_it/core/jdoodle/jdoodle_controller.dart';
import 'package:ask_it/core/jdoodle/jdoodle_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_highlight/themes/atom-one-light.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart' show Either;
import 'package:highlight/languages/java.dart';
import 'package:ndialog/ndialog.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../constants.dart';

part 'practice_programming_screen.g.dart';

@riverpod
class CurrentCodeResult extends _$CurrentCodeResult {
  @override
  ExecuteCodeResponse? build() {
    return null;
  }
}

class PracticeProgrammingScreen extends ConsumerStatefulWidget {
  static const routeName = '/practice-programming';

  const PracticeProgrammingScreen({super.key});

  @override
  ConsumerState<PracticeProgrammingScreen> createState() => _PracticeProgrammingScreenState();
}

class _PracticeProgrammingScreenState extends ConsumerState<PracticeProgrammingScreen> {
  late final CodeController _codeController;

  @override
  void initState() {
    _codeController = CodeController(
      language: java,
      text: '''
// [START r1]
public class MyClass {
  public static void main(String[] args) { // [END r1]
    // [START body]
    System.out.println("Hello, world");
    // [END body]
// [START r2]
  }
} // [END r2]''',
      namedSectionParser: const BracketsStartEndNamedSectionParser(),
      readOnlySectionNames: {'r1', 'r2'},
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(currentCodeResultProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Practice Programming',
          style: mediumTextBold,
        ),
      ),
      floatingActionButton: Consumer(
        builder: (context, ref, _) {
          return FloatingActionButton(
            child: Icon(Icons.play_arrow),
            onPressed: () {
              ProgressDialog.future<Either<BasicError, ExecuteCodeResponse>>(
                context,
                future: ref.read(executeCodeProvider).call(_codeController.fullText),
                title: Text('Executing code...'),
                message: Text('Please wait...'),
                dismissable: false,
              ).then((value) {
                if (value == null) return;

                value.fold(
                  (l) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(l.message),
                        backgroundColor: Colors.red,
                      ),
                    );
                  },
                  (r) {
                    ref.read(currentCodeResultProvider.notifier).state = r;
                    Navigator.pushNamed(context, PracticeProgrammingCodeResultScreen.routeName);
                  },
                );
              });
            },
          );
        },
      ),
      body: CodeTheme(
        data: CodeThemeData(styles: atomOneLightTheme),
        child: SingleChildScrollView(
          primary: true,
          child: CodeField(
            controller: _codeController,
          ),
        ),
      ),
    );
  }
}

class PracticeProgrammingCodeResultScreen extends ConsumerWidget {
  static const routeName = '/practice-programming/result';

  const PracticeProgrammingCodeResultScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final response = ref.watch(currentCodeResultProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Code Result',
          style: mediumTextBold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(response?.output ?? 'No output'),
      ),
    );
  }
}
