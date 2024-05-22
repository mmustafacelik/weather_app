import "package:permission_handler/permission_handler.dart";

/// Class responsible for handling permissions.
class Permissions {
  /// Check if the user has permission to access the gallery.
  Future<bool> checkGalleryPermission() async {
    await Permission.photos.request();

    final PermissionStatus status = await Permission.photos.status;
    if (status.isGranted) {
      return true;
    } else if (status.isDenied) {
      return false;
    } else if (status.isPermanentlyDenied) {
      await openAppSettings();
      return false;
    } else {
      final PermissionStatus requestStatus = await Permission.photos.request();
      return requestStatus.isGranted;
    }
  }

  /// Check if the user has permission to access the camera.
  Future<bool> checkCameraPermission() async {
    await Permission.camera.request();

    final PermissionStatus status = await Permission.camera.status;

    if (status.isGranted) {
      return true;
    } else if (status.isDenied) {
      return false;
    } else if (status.isPermanentlyDenied) {
      await openAppSettings();
      return false;
    } else {
      final PermissionStatus requestStatus = await Permission.camera.request();
      return requestStatus.isGranted;
    }
  }

  /// Check if the user has permission to access the microphone.
  Future<bool> checkReadFilePermission() async {
    await Permission.manageExternalStorage.request();

    final PermissionStatus status =
        await Permission.manageExternalStorage.status;

    if (status.isGranted) {
      return true;
    } else if (status.isDenied) {
      return false;
    } else if (status.isPermanentlyDenied) {
      await openAppSettings();
      return false;
    } else {
      final PermissionStatus requestStatus =
          await Permission.manageExternalStorage.request();
      return requestStatus.isGranted;
    }
  }
}
