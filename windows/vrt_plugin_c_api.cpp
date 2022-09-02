#include "include/vrt/vrt_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "vrt_plugin.h"

void VrtPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  vrt::VrtPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
