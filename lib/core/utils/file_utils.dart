part of 'utils.dart';

class FileUtils {
  FileUtils._();

  static final _picker = ImagePicker();

  static Future<File?> pickImage(ImageSource source) async {
    try {
      XFile? xFile = await _picker.pickImage(source: source);
      if (xFile != null) {
        return File(xFile.path);
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  static Future<File?> pickVideo(ImageSource source) async {
    try {
      XFile? xFile = await _picker.pickVideo(source: source);

      if (xFile != null) {
        return File(xFile.path);
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}
