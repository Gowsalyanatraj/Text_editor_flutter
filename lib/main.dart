import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:flutter_quill/flutter_quill.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _controller = quill.QuillController.basic();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
            appBar: AppBar(
              title: Text("Flutter Quill"),
              centerTitle: true,
            ),
            body: SafeArea(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_back)),
                              const Text(
                                "Create Report",
                                style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        //  row================
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              const Expanded(child: Text("Untitled Report")),
                              TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(Icons.upload),
                                  label: Text("Browse Template")), 
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.black12,
                          child: QuillToolbar.simple(
                              configurations: QuillSimpleToolbarConfigurations(
                            buttonOptions: QuillSimpleToolbarButtonOptions(),
                            controller: _controller,
                            toolbarIconAlignment: WrapAlignment.spaceBetween,
                            multiRowsDisplay: true,
                            showRedo: false,
                            showSubscript: false,
                            showAlignmentButtons: true,
                            showSuperscript: false,
                            showItalicButton: false,
                            showClearFormat: false,
                            showCodeBlock: false,
                            showDividers: false,
                            showIndent: false,
                            showInlineCode: false,
                            showStrikeThrough: false,
                            showQuote: false,
                            showSearchButton: false,
                            toolbarIconCrossAlignment: WrapCrossAlignment.start,
                          )),
                        ),
                        const SizedBox(height: 15),
                        Expanded(
                          flex: 25,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)),
                              child: QuillEditor.basic(
                                  configurations: QuillEditorConfigurations(
                                maxContentWidth: 600.0,
                                paintCursorAboveText: true,
                                controller: _controller,
                                placeholder: "Add your text here",
                                // builder: (context, rawEditor) => TextButton(
                                //     onPressed: () {},
                                //     child:
                                //         Text("Insert Signature")),
                                padding: EdgeInsets.all(10),
                                readOnly: false,
                              )),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            final content = _controller.document.toDelta();
                            print('Editor Content: $content');
                          },
                          child: Text('Get Content'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    color: Colors.black12,
                  )),
                ],
              ),
            )));
  }
}
