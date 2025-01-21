import 'package:flutter_dotenv/flutter_dotenv.dart'; // Importa flutter_dotenv
import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';
export 'storage/storage.dart';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() async {
    // Carga las variables de entorno desde el archivo .env
    await dotenv.load(fileName: ".env");

    // Obtén las credenciales de Supabase desde las variables de entorno
    final supabaseUrl = dotenv.env['SUPABASE_URL']!;
    final supabaseAnonKey = dotenv.env['SUPABASE_ANON_KEY']!;

    // Inicializa Supabase con las credenciales
    await Supabase.initialize(
      url: supabaseUrl,
      anonKey: supabaseAnonKey,
      debug: false,
      authOptions: const FlutterAuthClientOptions(authFlowType: AuthFlowType.implicit),
    );
  }
}