import '../database.dart';

class CandidatosEmpleoTable extends SupabaseTable<CandidatosEmpleoRow> {
  @override
  String get tableName => 'candidatos_empleo';

  @override
  CandidatosEmpleoRow createRow(Map<String, dynamic> data) =>
      CandidatosEmpleoRow(data);
}

class CandidatosEmpleoRow extends SupabaseDataRow {
  CandidatosEmpleoRow(super.data);

  @override
  SupabaseTable get table => CandidatosEmpleoTable();

  int get idCandidato => getField<int>('id_candidato')!;
  set idCandidato(int value) => setField<int>('id_candidato', value);

  String get nombre => getField<String>('nombre')!;
  set nombre(String value) => setField<String>('nombre', value);

  String get apellido => getField<String>('apellido')!;
  set apellido(String value) => setField<String>('apellido', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String? get telefono => getField<String>('telefono');
  set telefono(String? value) => setField<String>('telefono', value);

  List<String> get urlCurriculum => getListField<String>('url_curriculum');
  set urlCurriculum(List<String>? value) =>
      setListField<String>('url_curriculum', value);
}
