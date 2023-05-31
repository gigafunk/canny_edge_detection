import 'package:canny_edge_detection/canny_edge_detection.dart';
import 'dart:io';
import 'package:image/image.dart';


void main() {
  Image? tempImage = decodeImage(File("input.png").readAsBytesSync());
  if (tempImage == null) {
    print("Failed to decode image.");
    return;
  }

  Image image = tempImage;
  canny(image);
  File("output.png").writeAsBytesSync(encodePng(image));
}
