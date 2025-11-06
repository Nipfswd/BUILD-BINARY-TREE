cat <<"EOF" > broadcast-listeners.json
{"version":1,"listeners":{"remote-settings/monitor_changes":{"version":"\"0\"","sourceInfo":{"moduleURI":"resource://services-settings/remote-settings.sys.mjs","symbolName":"remoteSettingsBroadcastHandler"}}}}
EOF