#include "include/tau_plugin/tau_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "tau_plugin.h"

void TauPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  tau_plugin::TauPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
