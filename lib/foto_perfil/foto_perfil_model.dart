import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'foto_perfil_widget.dart' show FotoPerfilWidget;
import 'package:flutter/material.dart';

class FotoPerfilModel extends FlutterFlowModel<FotoPerfilWidget> {
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
