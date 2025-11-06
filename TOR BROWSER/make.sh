#!/usr/bin/env bash
mkdir -p "Tor Browser"
cd "Tor Browser"
echo "You're inside folder: $(pwd)"
# Tor Browser
mkdir -p Browser
cd Browser
echo "You're inside folder: $(pwd)"
# Tor Browser/Browser
## FOLDERS
mkdir -p browser
mkdir -p defaults
mkdir -p distribution
mkdir -p fonts
mkdir -p TorBrowser
## FILES
touch AccessibleMarshal.dll
touch application.ini
bash ../../ut/application.ini.sh  ## THIS WILL FILE THE FILE
touch d3dcompiler_47.dll
touch dependentlibs.list ## NEXT LINE WILL FILL THE FILE
## FILL IT
bash ../../ut/dependentlibs.list.sh
## FILLED
touch firefox.exe
touch firefox.VisualElementsManifest.xml
## FILL
bash ../../ut/firefox.VisualElementsManifest.xml.sh
## FILLED
touch freebl3.dll
touch gkcodecs.dll
touch lgpllibs.dll
touch libEGL.dll
touch libGLESv2.dll
touch mozavcodec.dll
touch mozavutil.dll
touch mozglue.dll
touch nmhproxy.exe
touch nss3.dll
touch omni.ja
touch platform.ini
## FILL
bash ../../ut/platform.ini.sh
## FILLED
touch plugin-container.exe
touch precomplete
## FILL
bash ../../ut/precomplete.sh
## FILLED
touch removed-files
## FILL
bash ../../ut/removed-files.sh
# FILLED
touch softokn3.dll
touch tbb_version.json
## FILL
bash ../../ut/tbb_version.json.sh
## FILLED
touch updater.exe
touch updater.ini
## FILL
bash ../../ut/updater.ini.sh
## FILLED
touch update-settings.ini
bash ../../ut/update-settings.ini.sh
## FILLED
touch xul.dll

## TIME TO FILL THE FILES WITH FAKE "PE"
truncate -s 23k AccessibleMarshal.dll
truncate -s 4307k d3dcompiler_47.dll
truncate -s 1788k firefox.exe
truncate -s 941k freebl3.dll
truncate -s 9021k gkcodecs.dll
truncate -s 344k lgpllibs.dll
truncate -s 208k libEGL.dll
truncate -s 5302k libGLESv2.dll
truncate -s 4174k mozavcodec.dll
truncate -s 624k mozavutil.dll
truncate -s 977k mozglue.dll
truncate -s 795k nmhproxy.exe
truncate -s 2649k nss3.dll
truncate -s 19970k omni.ja
truncate -s 1065k plugin-container.exe
truncate -s 282K softokn3.dll
truncate -s 502k updater.exe
truncate -s 159950K xul.dll
## Tor Browser/Browser/browser
cd browser
echo "You're inside folder: $(pwd)"
touch omni.ja
truncate -s 27251k omni.ja
mkdir -p VisualElements
cd VisualElements
echo "You're inside folder: $(pwd)"
cp ../../../../ut/img/VisualElements_70.png .
cp ../../../../ut/img/VisualElements_150.png .
cd .. 
echo "You're inside folder: $(pwd)"
cd ..
echo "You're inside folder: $(pwd)"
cd defaults
echo "You're inside folder: $(pwd)"
mkdir -p pref
cd pref
echo "You're inside folder: $(pwd)"
bash ../../../../ut/channel-pref.js.sh
cd ..
echo "You're inside folder: $(pwd)"
cd ..
echo "You're inside folder: $(pwd)"
cd distribution
echo "You're inside folder: $(pwd)"
mkdir -p extensions
cd extensions
echo "You're inside folder: $(pwd)"
touch {73a6fe31-595d-460b-a920-fcc0f8843232}.xpi
truncate -s 976k {73a6fe31-595d-460b-a920-fcc0f8843232}.xpi
cd ..
echo "You're inside folder: $(pwd)"
cd ..
echo "You're inside folder: $(pwd)"
cd fonts
echo "You're inside folder: $(pwd)"
echo "Prepare for a bunch of copying! :D"

bash ../../../ut/sim/cp-font.sh
cp -r ../../../ut/fonts/* .
cd ..
echo "You're inside folder: $(pwd)"
cd TorBrowser
echo "You're inside folder: $(pwd)"
mkdir -p Data Docs Tor UpdateInfo
cd Data
echo "You're inside folder: $(pwd)"
mkdir -p Browser Tor
cd Browser
echo "You're inside folder: $(pwd)"
mkdir -p Caches Mozilla "Profile Groups" profile.default
touch profiles.ini
bash ../../../../../ut/profiles.ini.sh
# ------------------------------------
cd Caches
echo "You're inside folder: $(pwd)"
mkdir -p profile.default
cd profile.default
echo "You're inside folder: $(pwd)"
mkdir -p cache2 safebrowsing startupCache thumbnails
cd cache2
echo "You're inside folder: $(pwd)"
mkdir -p doomed entries
cd ..
echo "You're inside folder: $(pwd)"
cd startupCache
echo "You're inside folder: $(pwd)"
# files
truncate -s 545k scriptCache-child.bin
truncate -s 476k scriptCache-child-current.bin
truncate -s 11040k scriptCache-current.bin
truncate -s 227k startupCache.8.little
truncate -s 7k urlCache.bin
truncate -s 8k urlCache-current.bin
truncate -s 117k webext.sc.lz4
## DONE
cd ..
echo "You're inside folder: $(pwd)"
# NO OTHER FOLDERS WITH CONTENT IN $(pwd)
cd ..
echo "You're inside folder: $(pwd)"
cd ..
echo "You're inside folder: $(pwd)"
cd Mozilla
echo "You're inside folder: $(pwd)"
mkdir -p Extensions
cd ..
# it was empty
echo "You're inside folder: $(pwd)"
cd "Profile Groups"
echo "You're inside folder: $(pwd)"
truncate -s 224k 800e808c.sqlite
truncate -s 32k 800e808c.sqlite-shm
touch 800e808.sqlite-wal ## touch since file is normally 0kb
cd ..
echo "You're inside folder: $(pwd)"
cd profile.default #ew, so big folder
echo "You're inside folder: $(pwd)"
## ok so now i am going to lose my sanity.
mkdir -p bookmarkbackups datareporting extensions extension-store extension-store-menus security_state shader-cache storage
truncate -s 3k addonStartup.json.lz4
## took a break. coming back soon... YES
## BACK
## LETS MAKE SOME FILES SHALL WE?
bash ../../../../../../ut/broadcast-listeners.json.sh
bash ../../../../../../ut/gens/cert_override.txt.sh
bash ../../../../../../ut/compatibility.ini.sh
bash ../../../../../../ut/containers.json.sh
truncate -s 256k content-pref.sqlite
truncate -s 512k cookies.sqlite
truncate -s 32k cookies.sqlite-shm
touch cookies.sqlite-wal ## touch since the file is 0k
bash ../../../../../../ut/enumerate_devices.txt.sh
bash ../../../../../../ut/extension-preferences.json.sh
bash ../../../../../../ut/extensions.json.sh
truncate -s 5120k favicons.sqlite
truncate -s 32k favicons.sqlite-shm
touch favicons.sqlite-wal ## 0k file so i used touch
truncate -s 256k formhistory.sqlite
bash ../../../../../../ut/handlers.json.sh
bash ../../../../../../ut/onion-aliases.json.sh
touch parent.lock #0k
truncate -s 5120k places.sqlite
truncate -s 32k places.sqlite-shm
touch places.sqlite-wal # 0kB
bash ../../../../../../ut/prefs.js.sh
truncate -s 64k protections.sqlite
truncate -s 1k search.json.mozlz4
bash ../../../../../../ut/sessionCheckpoints.json.sh
truncate -s 4k storage.sqlite
truncate -s 224k storage-sync-v2.sqlite
bash ../../../../../../ut/times.json.sh
bash ../../../../../../ut/xulstore.json.sh

## HOLY SHIT IM DONE WITH profile.default's root atleast. now its just the subfolders
cd bookmarkbackups
echo "You're inside folder: $(pwd)"
truncate -s 2k bookmarks-2025-11-01_14_ylYzmtWpZeAOtp5soFrStBdsDj3uVY9rP53JjmWUtiY=.jsonlz4
cd ..
echo "You're inside folder: $(pwd)"
cd datareporting
echo "You're inside folder: $(pwd)"
mkdir -p glean ##EMPTY
bash ../../../../../../../ut/state.json.sh
cd ..
echo "You're inside folder: $(pwd)"
cd extensions
truncate -s 976k {73a6fe31-595d-460b-a920-fcc0f8843232}.xpi
cd ..
echo "You're inside folder: $(pwd)"
## extension-store is empty
cd extension-store-menus
echo "You're inside folder: $(pwd)"
truncate -s 1k data.safe.bin
cd ..
echo "You're inside folder: $(pwd)"
cd security_state
echo "You're inside folder: $(pwd)"
truncate -s 248k data.safe.bin
cd ..
echo "You're inside folder: $(pwd)"
cd shader-cache
echo "You're inside folder: $(pwd)"
cp ../../../../../../../ut/shader-cache/* .
## DONE
cd ..
echo "You're inside folder: $(pwd)"
cd storage 
echo "You're inside folder: $(pwd)"
mkdir -p default permanent temporary
truncate -s 128k Is-archive.sqlite
cd default
echo "You're inside folder: $(pwd)"
mkdir -p moz-extension+++b0c35d5a-26b4-4cba-a474-37f27617c2fb^userContextId=4294967295
mkdir -p moz-extension+++b0c35d5a-26b4-4cba-a474-37f27617c2fb^userContextId=4294967295
echo "You're inside folder: $(pwd)"
mkdir -p idb
truncate -s 1k .metadata-v2
cd idb
echo "You're inside folder: $(pwd)"
truncate -s 48k 3647222921wleabcEoxlt-eengsairo.sqlite
truncate -s 32k 3647222921wleabcEoxlt-eengsairo.sqlite-shm
touch 3647222921wleabcEoxlt-eengsairo.sqlite-wal ## 0k
mkdir -p 3647222921wleabcEoxlt-eengsairo.files ## EMPTY
cd ..
echo "You're inside folder: $(pwd)"
cd ..
echo "You're inside folder: $(pwd)"
cd permanent
echo "You're inside folder: $(pwd)"
mkdir -p chrome indexeddb+++fx-devtools
cd chrome
echo "You're inside folder: $(pwd)"
truncate -s 1k .metadata-v2
mkdir -p idb
cd idb
echo "You're inside folder: $(pwd)"
mkdir -p 3870112724rsegmnoittet-es.files
truncate -s 2592k 3870112724rsegmnoittet-es.sqlite
truncate -s 32k 3870112724rsegmnoittet-es.sqlite-shm
touch 3870112724rsegmnoittet-es.sqlite-wal ## 0kB
cd ..
echo "You're inside folder: $(pwd)"
cd ..
echo "You're inside folder: $(pwd)"
cd indexeddb+++fx-devtools
echo "You're inside folder: $(pwd)"
mkdir -p idb
truncate -s 1k .metadata-v2
cd idb
echo "You're inside folder: $(pwd)"
mkdir -p 478967115deegvatroootlss--cans.files ## EMPTY
truncate -s 48k 478967115deegvatroootlss--cans.sqlite
truncate -s 32k 478967115deegvatroootlss--cans.sqlite-shm
touch 478967115deegvatroootlss--cans.sqlite-wal ## 0kB
cd ..
echo "You're inside folder: $(pwd)"
cd ..
echo "You're inside folder: $(pwd)"
cd ..
echo "You're inside folder: $(pwd), and i am finally done with this god forbid directory... YESSESSSSSSS FINALLY."
echo "Now I HAVE THE MOTIVATION TO FINNISH IT"
cd ..
echo "You're inside folder: $(pwd)"
cd ..
echo "You're inside folder: $(pwd)"
cd ..
echo "You're inside folder: $(pwd)"
cd Tor
## TOR FOLDER
mkdir -p keys onion-auth
truncate -s 21k cached-certs
truncate -s 3248k cached-microdesc-consensus
truncate -s 36460k cached-microdescs
truncate -s 8505k cached-microdescs.new
truncate -s 8776k geoip
truncate -s 11942k geoip6
touch lock ## 0kB
truncate -s 7k state
truncate -s 1k torrc
touch torrc.origin.1 ## 0kB
truncate -s 1k torrc-defaults
truncate -s 3213 unverified-microdesc-consensus
## Both Keys & Onion Auth is empty
cd ..
echo "You're inside folder: $(pwd)"
cd ..
echo "You're inside folder: $(pwd)"
cd Docs
echo "You're inside folder: $(pwd)"
## DOCS (THESE ARE HORRID SINCE I'LL HAVE TO MAKE A LOT OF SH FILES TO FILL 'EM UP (I COMPLETED profile.default tho so i'll make it ))
mkdir -p conjure Licenses
bash ../../../../ut/ChangeLog.txt.sh ## THIS FILE IS INSANELY BIG, SPECIFICALLY, 11,823 rows, so may or may not take time to generate.
cd conjure
echo "You're inside folder: $(pwd)"
bash ../../../../../ut/README.md.sh ## small
cd ..
echo "You're inside folder: $(pwd)"
cd Licenses
echo "You're inside folder: $(pwd)"
bash ../../../../../ut/Licenses.txt.sh
## i think for the Licenses/ directory, since i'm lazy and don't want to overcrowd the ut/ folder. Im gonna put them all into licenses.txt.sh
## That file includes: conjure.txt, Firefox.txt, libevent.txt, lyrebird.txt, NoScript.txt, Noto-CJK-Font.txt, Noto-Fonts.txt, openssl.txt, tor.txt, Torbutton.txt, Tor-Launcher.txt, and zlib.txt
cd ..
echo "You're inside folder: $(pwd)"
cd ..
echo "You're inside folder: $(pwd)"
cd Tor
echo "You're inside folder: $(pwd)"

## IMMA GO BRUSH MY TEETH RQ (2025-11-06 20:59) BRB
## I'M BACK, 21:10 2025-11-06
## ALright so where were we
## Ok, cool, Tor folder
mkdir -p PluggableTransports
truncate -s 10143k tor.exe
cd PluggableTransports
echo "You're inside folder: $(pwd)"
truncate -s 12737k conjure-client.exe
truncate -s 17291k lyrebird.exe
## well, that was small
cd ..
echo "You're inside folder: $(pwd)"
cd ..
echo "You're inside folder: $(pwd)"
## Now it's just UpdateInfo left! :D
cd UpdateInfo
echo "You're inside folder: $(pwd)"
mkdir -p updates
touch parent.lock ## 0kB
cd updates
echo "You're inside folder: $(pwd)"
mkdir -p 0 ## EMPTY
mkdir -p downloading ## EMPTY
cd ..
echo "You're inside folder: $(pwd)"
cd ..
echo "You're inside folder: $(pwd)"
cd ..
echo "You're inside folder: $(pwd)"

echo "YOU AND I ARE NOW DONE. THANK GOD. I DO NOT HAVE TO SUFFER, AND YOU HAVE YOUR TREE."
echo "THE SCRIPT WAS COMPLETED AT 21:17 UTC+1  2025-11-06, 6th of November 2025."
## DONE WITH THE WHOLE TREE
## TESTED ON Windows 10 Home 22H2 19045.6456
## btw ut stands for utilities