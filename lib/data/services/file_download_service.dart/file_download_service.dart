import 'dart:typed_data';
import 'package:http/http.dart' as http;

class FileDownloadService {
  Future<Uint8List?> downloadFile({required String url}) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return response.bodyBytes;
    } else {
      return null;
    }
  }
}
