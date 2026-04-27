/*
 * @ Author: Flutter Journey 🎯 <flutterjourney.org@gmail.com>
 * @ Created: 2024-12-09 13:15:47
 */

// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'dart:typed_data';

/// Real implementation for saving images on the web using dart:html.
void saveImageWeb(Uint8List bytes) {
  final blob = html.Blob([bytes]);
  final url = html.Url.createObjectUrlFromBlob(blob);
  html.AnchorElement(href: url)
    ..setAttribute("download", "screenshot.png")
    ..click();
  html.Url.revokeObjectUrl(url);
}
