import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _base64lmage =
          await secureStorage.getString('ff_base64lmage') ?? _base64lmage;
    });
    await _safeInitAsync(() async {
      _imagemLista =
          await secureStorage.getStringList('ff_imagemLista') ?? _imagemLista;
    });
    await _safeInitAsync(() async {
      _nome = await secureStorage.getString('ff_nome') ?? _nome;
    });
    await _safeInitAsync(() async {
      _curso = await secureStorage.getString('ff_curso') ?? _curso;
    });
    await _safeInitAsync(() async {
      _imagemteste =
          await secureStorage.getString('ff_imagemteste') ?? _imagemteste;
    });
    await _safeInitAsync(() async {
      _Materia1 = await secureStorage.getString('ff_Materia1') ?? _Materia1;
    });
    await _safeInitAsync(() async {
      _imagemqrcode =
          await secureStorage.getString('ff_imagemqrcode') ?? _imagemqrcode;
    });
    await _safeInitAsync(() async {
      _Materia2 = await secureStorage.getString('ff_Materia2') ?? _Materia2;
    });
    await _safeInitAsync(() async {
      _RA = await secureStorage.getString('ff_RA') ?? _RA;
    });
    await _safeInitAsync(() async {
      _Semestre = await secureStorage.getString('ff_Semestre') ?? _Semestre;
    });
    await _safeInitAsync(() async {
      _Materia3 = await secureStorage.getString('ff_Materia3') ?? _Materia3;
    });
    await _safeInitAsync(() async {
      _Materia4 = await secureStorage.getString('ff_Materia4') ?? _Materia4;
    });
    await _safeInitAsync(() async {
      _Materia5 = await secureStorage.getString('ff_Materia5') ?? _Materia5;
    });
    await _safeInitAsync(() async {
      _Materia6 = await secureStorage.getString('ff_Materia6') ?? _Materia6;
    });
    await _safeInitAsync(() async {
      _Materia7 = await secureStorage.getString('ff_Materia7') ?? _Materia7;
    });
    await _safeInitAsync(() async {
      _Materia8 = await secureStorage.getString('ff_Materia8') ?? _Materia8;
    });
    await _safeInitAsync(() async {
      _Materia10 = await secureStorage.getString('ff_Materia10') ?? _Materia10;
    });
    await _safeInitAsync(() async {
      _Materia9 = await secureStorage.getString('ff_Materia9') ?? _Materia9;
    });
    await _safeInitAsync(() async {
      _Materia11 = await secureStorage.getString('ff_Materia11') ?? _Materia11;
    });
    await _safeInitAsync(() async {
      _Materia12 = await secureStorage.getString('ff_Materia12') ?? _Materia12;
    });
    await _safeInitAsync(() async {
      _Materia13 = await secureStorage.getString('ff_Materia13') ?? _Materia13;
    });
    await _safeInitAsync(() async {
      _Materia14 = await secureStorage.getString('ff_Materia14') ?? _Materia14;
    });
    await _safeInitAsync(() async {
      _Nota1 = await secureStorage.getString('ff_Nota1') ?? _Nota1;
    });
    await _safeInitAsync(() async {
      _Nota2 = await secureStorage.getString('ff_Nota2') ?? _Nota2;
    });
    await _safeInitAsync(() async {
      _Nota5 = await secureStorage.getString('ff_Nota5') ?? _Nota5;
    });
    await _safeInitAsync(() async {
      _Nota6 = await secureStorage.getString('ff_Nota6') ?? _Nota6;
    });
    await _safeInitAsync(() async {
      _Nota7 = await secureStorage.getString('ff_Nota7') ?? _Nota7;
    });
    await _safeInitAsync(() async {
      _Nota8 = await secureStorage.getString('ff_Nota8') ?? _Nota8;
    });
    await _safeInitAsync(() async {
      _Nota9 = await secureStorage.getString('ff_Nota9') ?? _Nota9;
    });
    await _safeInitAsync(() async {
      _Nota10 = await secureStorage.getString('ff_Nota10') ?? _Nota10;
    });
    await _safeInitAsync(() async {
      _Nota11 = await secureStorage.getString('ff_Nota11') ?? _Nota11;
    });
    await _safeInitAsync(() async {
      _Nota12 = await secureStorage.getString('ff_Nota12') ?? _Nota12;
    });
    await _safeInitAsync(() async {
      _Nota13 = await secureStorage.getString('ff_Nota13') ?? _Nota13;
    });
    await _safeInitAsync(() async {
      _Nota14 = await secureStorage.getString('ff_Nota14') ?? _Nota14;
    });
    await _safeInitAsync(() async {
      _Falta1 = await secureStorage.getString('ff_Falta1') ?? _Falta1;
    });
    await _safeInitAsync(() async {
      _Falta2 = await secureStorage.getString('ff_Falta2') ?? _Falta2;
    });
    await _safeInitAsync(() async {
      _Falta3 = await secureStorage.getString('ff_Falta3') ?? _Falta3;
    });
    await _safeInitAsync(() async {
      _Falta4 = await secureStorage.getString('ff_Falta4') ?? _Falta4;
    });
    await _safeInitAsync(() async {
      _Falta5 = await secureStorage.getString('ff_Falta5') ?? _Falta5;
    });
    await _safeInitAsync(() async {
      _Falta6 = await secureStorage.getString('ff_Falta6') ?? _Falta6;
    });
    await _safeInitAsync(() async {
      _Falta7 = await secureStorage.getString('ff_Falta7') ?? _Falta7;
    });
    await _safeInitAsync(() async {
      _Falta9 = await secureStorage.getString('ff_Falta9') ?? _Falta9;
    });
    await _safeInitAsync(() async {
      _Falta10 = await secureStorage.getString('ff_Falta10') ?? _Falta10;
    });
    await _safeInitAsync(() async {
      _Falta11 = await secureStorage.getString('ff_Falta11') ?? _Falta11;
    });
    await _safeInitAsync(() async {
      _Falta13 = await secureStorage.getString('ff_Falta13') ?? _Falta13;
    });
    await _safeInitAsync(() async {
      _Falta14 = await secureStorage.getString('ff_Falta14') ?? _Falta14;
    });
    await _safeInitAsync(() async {
      _NomeFacul = await secureStorage.getString('ff_NomeFacul') ?? _NomeFacul;
    });
    await _safeInitAsync(() async {
      _Falta12 = await secureStorage.getString('ff_Falta12') ?? _Falta12;
    });
    await _safeInitAsync(() async {
      _Falta8 = await secureStorage.getString('ff_Falta8') ?? _Falta8;
    });
    await _safeInitAsync(() async {
      _Professor1 =
          await secureStorage.getString('ff_Professor1') ?? _Professor1;
    });
    await _safeInitAsync(() async {
      _Professor2 =
          await secureStorage.getString('ff_Professor2') ?? _Professor2;
    });
    await _safeInitAsync(() async {
      _Professor3 =
          await secureStorage.getString('ff_Professor3') ?? _Professor3;
    });
    await _safeInitAsync(() async {
      _Professor4 =
          await secureStorage.getString('ff_Professor4') ?? _Professor4;
    });
    await _safeInitAsync(() async {
      _Professor5 =
          await secureStorage.getString('ff_Professor5') ?? _Professor5;
    });
    await _safeInitAsync(() async {
      _Professor6 =
          await secureStorage.getString('ff_Professor6') ?? _Professor6;
    });
    await _safeInitAsync(() async {
      _Professor7 =
          await secureStorage.getString('ff_Professor7') ?? _Professor7;
    });
    await _safeInitAsync(() async {
      _ano = await secureStorage.getString('ff_ano') ?? _ano;
    });
    await _safeInitAsync(() async {
      _Atividade1 =
          await secureStorage.getString('ff_Atividade1') ?? _Atividade1;
    });
    await _safeInitAsync(() async {
      _Atividade2 =
          await secureStorage.getString('ff_Atividade2') ?? _Atividade2;
    });
    await _safeInitAsync(() async {
      _Prazo1 = await secureStorage.getString('ff_Prazo1') ?? _Prazo1;
    });
    await _safeInitAsync(() async {
      _Prazo2 = await secureStorage.getString('ff_Prazo2') ?? _Prazo2;
    });
    await _safeInitAsync(() async {
      _email = await secureStorage.getString('ff_email') ?? _email;
    });
    await _safeInitAsync(() async {
      _numerodetelefone =
          await secureStorage.getString('ff_numerodetelefone') ??
              _numerodetelefone;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _base64lmage = '';
  String get base64lmage => _base64lmage;
  set base64lmage(String value) {
    _base64lmage = value;
    secureStorage.setString('ff_base64lmage', value);
  }

  void deleteBase64lmage() {
    secureStorage.delete(key: 'ff_base64lmage');
  }

  List<String> _imagemLista = [];
  List<String> get imagemLista => _imagemLista;
  set imagemLista(List<String> value) {
    _imagemLista = value;
    secureStorage.setStringList('ff_imagemLista', value);
  }

  void deleteImagemLista() {
    secureStorage.delete(key: 'ff_imagemLista');
  }

  void addToImagemLista(String value) {
    imagemLista.add(value);
    secureStorage.setStringList('ff_imagemLista', _imagemLista);
  }

  void removeFromImagemLista(String value) {
    imagemLista.remove(value);
    secureStorage.setStringList('ff_imagemLista', _imagemLista);
  }

  void removeAtIndexFromImagemLista(int index) {
    imagemLista.removeAt(index);
    secureStorage.setStringList('ff_imagemLista', _imagemLista);
  }

  void updateImagemListaAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    imagemLista[index] = updateFn(_imagemLista[index]);
    secureStorage.setStringList('ff_imagemLista', _imagemLista);
  }

  void insertAtIndexInImagemLista(int index, String value) {
    imagemLista.insert(index, value);
    secureStorage.setStringList('ff_imagemLista', _imagemLista);
  }

  String _nome = 'Renan Gemerson Sacca';
  String get nome => _nome;
  set nome(String value) {
    _nome = value;
    secureStorage.setString('ff_nome', value);
  }

  void deleteNome() {
    secureStorage.delete(key: 'ff_nome');
  }

  String _curso = 'Engenharia de Software - 5º Semestre';
  String get curso => _curso;
  set curso(String value) {
    _curso = value;
    secureStorage.setString('ff_curso', value);
  }

  void deleteCurso() {
    secureStorage.delete(key: 'ff_curso');
  }

  String _imagemteste = '';
  String get imagemteste => _imagemteste;
  set imagemteste(String value) {
    _imagemteste = value;
    secureStorage.setString('ff_imagemteste', value);
  }

  void deleteImagemteste() {
    secureStorage.delete(key: 'ff_imagemteste');
  }

  String _Materia1 = 'Cálculo II';
  String get Materia1 => _Materia1;
  set Materia1(String value) {
    _Materia1 = value;
    secureStorage.setString('ff_Materia1', value);
  }

  void deleteMateria1() {
    secureStorage.delete(key: 'ff_Materia1');
  }

  String _imagemqrcode =
      'https://firebasestorage.googleapis.com/v0/b/unimar-ead-foto.firebasestorage.app/o/users%2Fuploads%2F1743993935339114.jpg?alt=media&token=b45da8a5-1196-4c91-aecd-4379c157c523';
  String get imagemqrcode => _imagemqrcode;
  set imagemqrcode(String value) {
    _imagemqrcode = value;
    secureStorage.setString('ff_imagemqrcode', value);
  }

  void deleteImagemqrcode() {
    secureStorage.delete(key: 'ff_imagemqrcode');
  }

  String _Materia2 = 'Física I';
  String get Materia2 => _Materia2;
  set Materia2(String value) {
    _Materia2 = value;
    secureStorage.setString('ff_Materia2', value);
  }

  void deleteMateria2() {
    secureStorage.delete(key: 'ff_Materia2');
  }

  String _RA = '590452';
  String get RA => _RA;
  set RA(String value) {
    _RA = value;
    secureStorage.setString('ff_RA', value);
  }

  void deleteRA() {
    secureStorage.delete(key: 'ff_RA');
  }

  String _Semestre = '5°';
  String get Semestre => _Semestre;
  set Semestre(String value) {
    _Semestre = value;
    secureStorage.setString('ff_Semestre', value);
  }

  void deleteSemestre() {
    secureStorage.delete(key: 'ff_Semestre');
  }

  String _Materia3 = 'Programação I';
  String get Materia3 => _Materia3;
  set Materia3(String value) {
    _Materia3 = value;
    secureStorage.setString('ff_Materia3', value);
  }

  void deleteMateria3() {
    secureStorage.delete(key: 'ff_Materia3');
  }

  String _Materia4 = 'Álgebra Linear I';
  String get Materia4 => _Materia4;
  set Materia4(String value) {
    _Materia4 = value;
    secureStorage.setString('ff_Materia4', value);
  }

  void deleteMateria4() {
    secureStorage.delete(key: 'ff_Materia4');
  }

  String _Materia5 = 'Meodologia Científica';
  String get Materia5 => _Materia5;
  set Materia5(String value) {
    _Materia5 = value;
    secureStorage.setString('ff_Materia5', value);
  }

  void deleteMateria5() {
    secureStorage.delete(key: 'ff_Materia5');
  }

  String _Materia6 = 'Banco de dados I';
  String get Materia6 => _Materia6;
  set Materia6(String value) {
    _Materia6 = value;
    secureStorage.setString('ff_Materia6', value);
  }

  void deleteMateria6() {
    secureStorage.delete(key: 'ff_Materia6');
  }

  String _Materia7 = 'Logica de Programação';
  String get Materia7 => _Materia7;
  set Materia7(String value) {
    _Materia7 = value;
    secureStorage.setString('ff_Materia7', value);
  }

  void deleteMateria7() {
    secureStorage.delete(key: 'ff_Materia7');
  }

  String _Materia8 = 'Programação II';
  String get Materia8 => _Materia8;
  set Materia8(String value) {
    _Materia8 = value;
    secureStorage.setString('ff_Materia8', value);
  }

  void deleteMateria8() {
    secureStorage.delete(key: 'ff_Materia8');
  }

  String _Materia10 = 'Álgebra Linear II';
  String get Materia10 => _Materia10;
  set Materia10(String value) {
    _Materia10 = value;
    secureStorage.setString('ff_Materia10', value);
  }

  void deleteMateria10() {
    secureStorage.delete(key: 'ff_Materia10');
  }

  String _Materia9 = 'Banco de dados II';
  String get Materia9 => _Materia9;
  set Materia9(String value) {
    _Materia9 = value;
    secureStorage.setString('ff_Materia9', value);
  }

  void deleteMateria9() {
    secureStorage.delete(key: 'ff_Materia9');
  }

  String _Materia11 = 'Estatísticas';
  String get Materia11 => _Materia11;
  set Materia11(String value) {
    _Materia11 = value;
    secureStorage.setString('ff_Materia11', value);
  }

  void deleteMateria11() {
    secureStorage.delete(key: 'ff_Materia11');
  }

  String _Materia12 = 'Logica Digital';
  String get Materia12 => _Materia12;
  set Materia12(String value) {
    _Materia12 = value;
    secureStorage.setString('ff_Materia12', value);
  }

  void deleteMateria12() {
    secureStorage.delete(key: 'ff_Materia12');
  }

  String _Materia13 = 'Estrutura de dados';
  String get Materia13 => _Materia13;
  set Materia13(String value) {
    _Materia13 = value;
    secureStorage.setString('ff_Materia13', value);
  }

  void deleteMateria13() {
    secureStorage.delete(key: 'ff_Materia13');
  }

  String _Materia14 = 'Metodologia Científica';
  String get Materia14 => _Materia14;
  set Materia14(String value) {
    _Materia14 = value;
    secureStorage.setString('ff_Materia14', value);
  }

  void deleteMateria14() {
    secureStorage.delete(key: 'ff_Materia14');
  }

  String _Nota1 = '9';
  String get Nota1 => _Nota1;
  set Nota1(String value) {
    _Nota1 = value;
    secureStorage.setString('ff_Nota1', value);
  }

  void deleteNota1() {
    secureStorage.delete(key: 'ff_Nota1');
  }

  String _Nota2 = '8';
  String get Nota2 => _Nota2;
  set Nota2(String value) {
    _Nota2 = value;
    secureStorage.setString('ff_Nota2', value);
  }

  void deleteNota2() {
    secureStorage.delete(key: 'ff_Nota2');
  }

  String _Nota3 = '10';
  String get Nota3 => _Nota3;
  set Nota3(String value) {
    _Nota3 = value;
  }

  String _Nota4 = '7';
  String get Nota4 => _Nota4;
  set Nota4(String value) {
    _Nota4 = value;
  }

  String _Nota5 = '8';
  String get Nota5 => _Nota5;
  set Nota5(String value) {
    _Nota5 = value;
    secureStorage.setString('ff_Nota5', value);
  }

  void deleteNota5() {
    secureStorage.delete(key: 'ff_Nota5');
  }

  String _Nota6 = '10';
  String get Nota6 => _Nota6;
  set Nota6(String value) {
    _Nota6 = value;
    secureStorage.setString('ff_Nota6', value);
  }

  void deleteNota6() {
    secureStorage.delete(key: 'ff_Nota6');
  }

  String _Nota7 = '7';
  String get Nota7 => _Nota7;
  set Nota7(String value) {
    _Nota7 = value;
    secureStorage.setString('ff_Nota7', value);
  }

  void deleteNota7() {
    secureStorage.delete(key: 'ff_Nota7');
  }

  String _Nota8 = '-';
  String get Nota8 => _Nota8;
  set Nota8(String value) {
    _Nota8 = value;
    secureStorage.setString('ff_Nota8', value);
  }

  void deleteNota8() {
    secureStorage.delete(key: 'ff_Nota8');
  }

  String _Nota9 = '-';
  String get Nota9 => _Nota9;
  set Nota9(String value) {
    _Nota9 = value;
    secureStorage.setString('ff_Nota9', value);
  }

  void deleteNota9() {
    secureStorage.delete(key: 'ff_Nota9');
  }

  String _Nota10 = '-';
  String get Nota10 => _Nota10;
  set Nota10(String value) {
    _Nota10 = value;
    secureStorage.setString('ff_Nota10', value);
  }

  void deleteNota10() {
    secureStorage.delete(key: 'ff_Nota10');
  }

  String _Nota11 = '-';
  String get Nota11 => _Nota11;
  set Nota11(String value) {
    _Nota11 = value;
    secureStorage.setString('ff_Nota11', value);
  }

  void deleteNota11() {
    secureStorage.delete(key: 'ff_Nota11');
  }

  String _Nota12 = '-';
  String get Nota12 => _Nota12;
  set Nota12(String value) {
    _Nota12 = value;
    secureStorage.setString('ff_Nota12', value);
  }

  void deleteNota12() {
    secureStorage.delete(key: 'ff_Nota12');
  }

  String _Nota13 = '-';
  String get Nota13 => _Nota13;
  set Nota13(String value) {
    _Nota13 = value;
    secureStorage.setString('ff_Nota13', value);
  }

  void deleteNota13() {
    secureStorage.delete(key: 'ff_Nota13');
  }

  String _Nota14 = '-';
  String get Nota14 => _Nota14;
  set Nota14(String value) {
    _Nota14 = value;
    secureStorage.setString('ff_Nota14', value);
  }

  void deleteNota14() {
    secureStorage.delete(key: 'ff_Nota14');
  }

  String _Falta1 = '2';
  String get Falta1 => _Falta1;
  set Falta1(String value) {
    _Falta1 = value;
    secureStorage.setString('ff_Falta1', value);
  }

  void deleteFalta1() {
    secureStorage.delete(key: 'ff_Falta1');
  }

  String _Falta2 = '4';
  String get Falta2 => _Falta2;
  set Falta2(String value) {
    _Falta2 = value;
    secureStorage.setString('ff_Falta2', value);
  }

  void deleteFalta2() {
    secureStorage.delete(key: 'ff_Falta2');
  }

  String _Falta3 = '0';
  String get Falta3 => _Falta3;
  set Falta3(String value) {
    _Falta3 = value;
    secureStorage.setString('ff_Falta3', value);
  }

  void deleteFalta3() {
    secureStorage.delete(key: 'ff_Falta3');
  }

  String _Falta4 = '4';
  String get Falta4 => _Falta4;
  set Falta4(String value) {
    _Falta4 = value;
    secureStorage.setString('ff_Falta4', value);
  }

  void deleteFalta4() {
    secureStorage.delete(key: 'ff_Falta4');
  }

  String _Falta5 = '2';
  String get Falta5 => _Falta5;
  set Falta5(String value) {
    _Falta5 = value;
    secureStorage.setString('ff_Falta5', value);
  }

  void deleteFalta5() {
    secureStorage.delete(key: 'ff_Falta5');
  }

  String _Falta6 = '0';
  String get Falta6 => _Falta6;
  set Falta6(String value) {
    _Falta6 = value;
    secureStorage.setString('ff_Falta6', value);
  }

  void deleteFalta6() {
    secureStorage.delete(key: 'ff_Falta6');
  }

  String _Falta7 = '0';
  String get Falta7 => _Falta7;
  set Falta7(String value) {
    _Falta7 = value;
    secureStorage.setString('ff_Falta7', value);
  }

  void deleteFalta7() {
    secureStorage.delete(key: 'ff_Falta7');
  }

  String _Falta9 = '0';
  String get Falta9 => _Falta9;
  set Falta9(String value) {
    _Falta9 = value;
    secureStorage.setString('ff_Falta9', value);
  }

  void deleteFalta9() {
    secureStorage.delete(key: 'ff_Falta9');
  }

  String _Falta10 = '0';
  String get Falta10 => _Falta10;
  set Falta10(String value) {
    _Falta10 = value;
    secureStorage.setString('ff_Falta10', value);
  }

  void deleteFalta10() {
    secureStorage.delete(key: 'ff_Falta10');
  }

  String _Falta11 = '0';
  String get Falta11 => _Falta11;
  set Falta11(String value) {
    _Falta11 = value;
    secureStorage.setString('ff_Falta11', value);
  }

  void deleteFalta11() {
    secureStorage.delete(key: 'ff_Falta11');
  }

  String _Falta13 = '0';
  String get Falta13 => _Falta13;
  set Falta13(String value) {
    _Falta13 = value;
    secureStorage.setString('ff_Falta13', value);
  }

  void deleteFalta13() {
    secureStorage.delete(key: 'ff_Falta13');
  }

  String _Falta14 = '0';
  String get Falta14 => _Falta14;
  set Falta14(String value) {
    _Falta14 = value;
    secureStorage.setString('ff_Falta14', value);
  }

  void deleteFalta14() {
    secureStorage.delete(key: 'ff_Falta14');
  }

  String _NomeFacul = 'Unimar EAD';
  String get NomeFacul => _NomeFacul;
  set NomeFacul(String value) {
    _NomeFacul = value;
    secureStorage.setString('ff_NomeFacul', value);
  }

  void deleteNomeFacul() {
    secureStorage.delete(key: 'ff_NomeFacul');
  }

  String _Falta12 = '0';
  String get Falta12 => _Falta12;
  set Falta12(String value) {
    _Falta12 = value;
    secureStorage.setString('ff_Falta12', value);
  }

  void deleteFalta12() {
    secureStorage.delete(key: 'ff_Falta12');
  }

  String _Falta8 = '0';
  String get Falta8 => _Falta8;
  set Falta8(String value) {
    _Falta8 = value;
    secureStorage.setString('ff_Falta8', value);
  }

  void deleteFalta8() {
    secureStorage.delete(key: 'ff_Falta8');
  }

  String _Professor1 = 'Prof. Carlos Silva';
  String get Professor1 => _Professor1;
  set Professor1(String value) {
    _Professor1 = value;
    secureStorage.setString('ff_Professor1', value);
  }

  void deleteProfessor1() {
    secureStorage.delete(key: 'ff_Professor1');
  }

  String _Professor2 = 'Prof. Ana Oliveira';
  String get Professor2 => _Professor2;
  set Professor2(String value) {
    _Professor2 = value;
    secureStorage.setString('ff_Professor2', value);
  }

  void deleteProfessor2() {
    secureStorage.delete(key: 'ff_Professor2');
  }

  String _Professor3 = 'Prof. Marcos Pereira';
  String get Professor3 => _Professor3;
  set Professor3(String value) {
    _Professor3 = value;
    secureStorage.setString('ff_Professor3', value);
  }

  void deleteProfessor3() {
    secureStorage.delete(key: 'ff_Professor3');
  }

  String _Professor4 = 'Prof. Juliana Costa';
  String get Professor4 => _Professor4;
  set Professor4(String value) {
    _Professor4 = value;
    secureStorage.setString('ff_Professor4', value);
  }

  void deleteProfessor4() {
    secureStorage.delete(key: 'ff_Professor4');
  }

  String _Professor5 = 'Prof. Roberto Almeida';
  String get Professor5 => _Professor5;
  set Professor5(String value) {
    _Professor5 = value;
    secureStorage.setString('ff_Professor5', value);
  }

  void deleteProfessor5() {
    secureStorage.delete(key: 'ff_Professor5');
  }

  String _Professor6 = 'Prof. Jose Figuerino';
  String get Professor6 => _Professor6;
  set Professor6(String value) {
    _Professor6 = value;
    secureStorage.setString('ff_Professor6', value);
  }

  void deleteProfessor6() {
    secureStorage.delete(key: 'ff_Professor6');
  }

  String _Professor7 = 'Prof. João Marcelo';
  String get Professor7 => _Professor7;
  set Professor7(String value) {
    _Professor7 = value;
    secureStorage.setString('ff_Professor7', value);
  }

  void deleteProfessor7() {
    secureStorage.delete(key: 'ff_Professor7');
  }

  String _ano = '2025.1';
  String get ano => _ano;
  set ano(String value) {
    _ano = value;
    secureStorage.setString('ff_ano', value);
  }

  void deleteAno() {
    secureStorage.delete(key: 'ff_ano');
  }

  String _Atividade1 = 'Projeto Mongo';
  String get Atividade1 => _Atividade1;
  set Atividade1(String value) {
    _Atividade1 = value;
    secureStorage.setString('ff_Atividade1', value);
  }

  void deleteAtividade1() {
    secureStorage.delete(key: 'ff_Atividade1');
  }

  String _Atividade2 = 'Atividade 3';
  String get Atividade2 => _Atividade2;
  set Atividade2(String value) {
    _Atividade2 = value;
    secureStorage.setString('ff_Atividade2', value);
  }

  void deleteAtividade2() {
    secureStorage.delete(key: 'ff_Atividade2');
  }

  String _Prazo1 = '3 Dias';
  String get Prazo1 => _Prazo1;
  set Prazo1(String value) {
    _Prazo1 = value;
    secureStorage.setString('ff_Prazo1', value);
  }

  void deletePrazo1() {
    secureStorage.delete(key: 'ff_Prazo1');
  }

  String _Prazo2 = '10 Dias';
  String get Prazo2 => _Prazo2;
  set Prazo2(String value) {
    _Prazo2 = value;
    secureStorage.setString('ff_Prazo2', value);
  }

  void deletePrazo2() {
    secureStorage.delete(key: 'ff_Prazo2');
  }

  String _email = 'renangs2222@gmail.com';
  String get email => _email;
  set email(String value) {
    _email = value;
    secureStorage.setString('ff_email', value);
  }

  void deleteEmail() {
    secureStorage.delete(key: 'ff_email');
  }

  String _numerodetelefone = '(14) 998030404';
  String get numerodetelefone => _numerodetelefone;
  set numerodetelefone(String value) {
    _numerodetelefone = value;
    secureStorage.setString('ff_numerodetelefone', value);
  }

  void deleteNumerodetelefone() {
    secureStorage.delete(key: 'ff_numerodetelefone');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
