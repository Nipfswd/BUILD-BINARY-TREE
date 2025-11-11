#!/usr/bin/env bash
## shebang is always good
## 20:20 when i begin the project
## Avoid damn path errors so we'll set vars first
RT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
## Proj
mkdir -p "Gym Manager" # Make the damn project foledr
cd "Gym Manager" ## Enter it 
echo "You're inside folder: $(pwd)" #Debug sanity save
## VBARIABLES
## short

## root folders
mkdir -p _Redist
mkdir -p GymManager_Data
## files
truncate -s 396k baselib.dll
truncate -s 55100k GameAssembly.dll
truncate -s 639k GymManager.exe
truncate -s 89k unins000.dat
truncate -s 1481k unins000.exe
truncate -s 1098k nityCrashHandler64.exe
truncate -s 28388k UnityPlayer.dll
## _Redist
cd _Redist
echo "You're inside folder: $(pwd)" 
truncate -s 293k dxwebsetup.exe
truncate -s 11k lol.md5
truncate -s 101k QuickSFV.EXE
truncate -s 25035k vc_redist.x64.exe
truncate -s 13627k vc_redist.x86.exe
cd ..
echo "You're inside folder: $(pwd)" 
cd GymManager_Data
echo "You're inside folder: $(pwd)" 
## GymManager_Data
## folders
mkdir -p il2cpp_data Plugins Resources StreamingAssets
## Creates files with specified sizes in bytes
truncate -s 19 app.info
truncate -s 120 boot.config
truncate -s 555744 globalgamemanagers
truncate -s 1669236 globalgamemanagers.assets
truncate -s 2899456 globalgamemanagers.assets.resS
truncate -s 313088 level0
truncate -s 131232 level0.resS
truncate -s 9636 level1
truncate -s 131232 level1.resS
truncate -s 73840884 level2
truncate -s 9484208 level2.resS
truncate -s 44442200 resources.assets
truncate -s 391125760 resources.assets.resS
truncate -s 3740320 resources.resource
truncate -s 18904 RuntimeInitializeOnLoads.json
truncate -s 5638 ScriptingAssemblies.json
truncate -s 79465676 sharedassets0.assets
truncate -s 121314336 sharedassets0.assets.resS
truncate -s 2016 sharedassets0.resource
truncate -s 11128 sharedassets1.assets
truncate -s 16479792 sharedassets1.assets.resS
truncate -s 170536872 sharedassets2.assets
truncate -s 4081506208 sharedassets2.assets.resS
truncate -s 15876448 sharedassets2.resource

cd il2cpp_data
echo "You're inside folder: $(pwd)" 
## FOLDERS
mkdir -p Metadata Resources
cd Metadata
echo "You're inside folder: $(pwd)" 
truncate -s 17761k global-metadata.dat
cd ..
echo "You're inside folder: $(pwd)" 
cd Resources
echo "You're inside folder: $(pwd)" 
## files
truncate -s 330k mscorlib.dll-resources.dat
truncate -s 1k Newtonsoft.Json.dll-resources.dat
truncate -s 92k System.Data.dll-resources.dat
## DONE
cd ..
echo "You're inside folder: $(pwd)" 
cd ..
echo "You're inside folder: $(pwd)" 
## Plugins
cd Plugins
echo "You're inside folder: $(pwd)" 
mkdir -p x86_64
cd x86_64
echo "You're inside folder: $(pwd)" 
## FOLDER
mkdir -p VuplexWebViewChromium
## FILES
truncate -s 117k lib_burst_generated.dll
truncate -s 1770k RFLib_CNative_2018.dll
truncate -s 356k VuplexWebViewWindows.dll
cd VuplexWebViewChromium
echo "You're inside folder: $(pwd)" 
## weird subfolder
mkdir -p locales swiftshader
truncate -s 598k chrome_100_percent.pak
truncate -s 894k chrome_200_percent.pak
truncate -s 1399k chrome_elf.dll
truncate -s 4777k d3dcompiler_47.dll
truncate -s 10295k icudtl.dat
truncate -s 192168k libcef.dll
truncate -s 461k libEGL.dll
truncate -s 7328k libGLESv2.dll
truncate -s 2k log-chromium.txt
truncate -s 7563k resources.pak
truncate -s 164k snapshot_blob.bin
truncate -s 460k v8_context_snapshot.bin
truncate -s 1075k "Vuplex WebView.vuplex"
cd locales
echo "You're inside folder: $(pwd)" 
## files
## im too lazy
cp "$RT/ut/locales/"* .
cd ..
echo "You're inside folder: $(pwd)" 
cd swiftshader
echo "You're inside folder: $(pwd)" 
truncate -s 415k libEGL.dll
truncate -s 2660k libGLESv2.dll
## DONE
cd ..
echo "You're inside folder: $(pwd)" 
cd ..
echo "You're inside folder: $(pwd)" 
cd ..
echo "You're inside folder: $(pwd)" 
cd ..
echo "You're inside folder: $(pwd)" 
cd Resources
## Resources/
truncate -s 4719k "unity default resources"
truncate -s 427k unity_buildin_extra
cd ..
echo "You're inside folder: $(pwd)" 
cd StreamingAssets
echo "You're inside folder: $(pwd)" 
## FOLDER
mkdir -p aa
bash "$RT/ut/UnityServicesProjectConfiguration.json.sh" ## Will fill the file "UnityServicesProjectConfiguration.json" using cat
cd aa
echo "You're inside folder: $(pwd)" 
## FOLDER(s)
mkdir -p AddressablesLink StandaloneWindows64
bash "$RT/ut/aa.json.sh"
cd AddressablesLink
echo "You're inside folder: $(pwd)" 
bash "$RT/ut/link.xml.sh"
cd ..
echo "You're inside folder: $(pwd)" 
cd StandaloneWindows64
truncate -s 3k localization-locales_assets_all.bundle
cd ..
echo "You're inside folder: $(pwd)" 
cd ..
echo "You're inside folder: $(pwd)" 
cd ..
echo "You're inside folder: $(pwd)" 
cd ..
echo "You're inside folder: $(pwd)" 

echo "Done with making Gym Manager"