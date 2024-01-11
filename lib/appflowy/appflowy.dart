import 'package:flutter/material.dart';
import 'package:appflowy_editor/appflowy_editor.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
late final EditorState _editorState;

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Editor Demo"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: AppFlowyEditor(
          editable: true, 
          editorState: _editorState ,
  //         actions: [
  //   BoldAction(), 
  //   ItalicAction(),
  //   StrikethroughAction(),
  //   LinkAction(),
  //   BlockquoteAction(),
  //   HeadingOneAction(),
  //   HeadingTwoAction(),
  // ],
          )
      ),
    );
  }
}
