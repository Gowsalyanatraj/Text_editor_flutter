import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;






class _MyQuillEditorState extends State<MyQuillEditorS> {
  quill.QuillController _controller = quill.QuillController.basic();

  void _insertTable() {
    final quill.TableStyle tableStyle = quill.TableStyle(
      border: const quill.TableBorder(
        color: Color(0xff000000),
        width: 1.0,
      ),
    );

    final quill.TableCellStyle cellStyle = quill.TableCellStyle(
      format: quill.ResolvedStyle(
        textDecoration: quill.TextDecoration.none,
        alignment: quill.Alignment.topLeft,
        color: quill.TextColor(0xff000000),
        background: quill.Background.color(quill.Color(0xffffffff)),
        fontStyle: quill.FontStyle.normal,
        fontWeight: quill.FontWeight.normal,
        fontSize: 16.0,
      ),
    );

    _controller
      ..insertEmbed(quill.Embed.table(
        rows: 3,
        cols: 3,
        style: tableStyle,
        cellStyle: cellStyle,
      ))
      ..focus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quill Editor'),
      ),
      body: Column(
        children: [
          quill.QuillToolbar.simple(configurations: null
           
          ),
          ElevatedButton(
            onPressed: _insertTable,
            child: Text('Add Table'),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: quill.QuillEditor(
            
                 configurations:quill.QuillEditorConfigurations(controller: _controller), focusNode: FocusNode(), scrollController: ScrollController(),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              final content = _controller.document.toPlainText();
              print('Editor Content: $content');
            },
            child: Text('Get Content'),
          ),
        ],
      ),
    );
  }
}
