import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';
export 'storage/storage.dart';

String _kSupabaseUrl = 'https://klyqpuyrbhtltcfejdqq.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImtseXFwdXlyYmh0bHRjZmVqZHFxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjkzMDA1MjEsImV4cCI6MjA0NDg3NjUyMX0.UXEH8FPhh8Q2ln-VFyV_x4cJjobTeCnhEaqYmOFIQZo';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
        authOptions:
            const FlutterAuthClientOptions(authFlowType: AuthFlowType.implicit),
      );
}
