// import 'package:flutter/material.dart';
// import 'package:flutter_quill/flutter_quill.dart' as quill;


// class _MyQuillEditorState extends State<MyQuillEditor> {
//   quill.QuillController _controller = quill.QuillController.basic();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Quill Editor'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.all(8.0),
//               child: quill.QuillEditor(scrollController:TrackingScrollController()  , configurations: quill.QuillEditorConfigurations(controller: _controller), focusNode: FocusNode(),
              
//               ),
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               final content = _controller.document.toPlainText();
//               print('Editor Content: $content');
//             },
//             child: Text('Get Content'),
//           ),
//         ],
//       ),
//     );
//   }
// }
