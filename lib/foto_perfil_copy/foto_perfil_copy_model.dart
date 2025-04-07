import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'foto_perfil_copy_widget.dart' show FotoPerfilCopyWidget;
import 'package:flutter/material.dart';

class FotoPerfilCopyModel extends FlutterFlowModel<FotoPerfilCopyWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
