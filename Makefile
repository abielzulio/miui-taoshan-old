#
# Makefile for taoshan
#

local-zip-file              := stockrom.zip

local-out-zip-file          := MIUI-`date '+%d.%b.%Y-%H.%M.%S'`-UNOFFICIAL-taoshan.zip

local-miui-removed-apps     := GameCenter GameCenterSDKService SuperMarket

local-miui-removed-priv-apps:= MediaProvider

local-modified-apps         := AntiSpam  \
                               BaiduNetworkLocation  \
                               Browser  \
                               BugReport  \
                               Calculator  \
                               CalendarProvider  \
                               CloudService  \
                               ContactsProvider  \
                   	       DataHubProvider \
                               DeskClock  \
                               DownloadProviderUi  \
                               Email  \
                               FileExplorer  \
                               GameCenter \
                               GameCenterSDKService \
                               GuardProvider \
                               KingSoftCleaner \
                               LBESEC_MIUI \
                               LiveWallpapersPicker \
                               MiLinkService \
                               MiWallpaper \
                               MiuiCompass  \
                               MiuiVideo \
                               NetworkAssistant2 \
                               Notes  \
                               PackageInstaller  \
                               PaymentService \
                               Provision \
                               SoundRecorder  \
                               SuperMarket  \
                               TelephonyProvider  \
                               ThemeManager  \
                               Updater \
                               Weather \
                               WeatherProvider \
                               XiaomiServiceFramework \
                               VoiceAssist \
                               TrafficControl
 
local-modified-priv-apps    := Backup  \
                               Calendar  \
                               Contacts  \
                               DownloadProvider  \
                               FusedLocation \
                               MiuiGallery  \
                               MediaProvider  \
                               MiuiHome  \
                               MiuiKeyguard \
                               MiuiSystemUI  \
                               Mms  \
                               Music  \
                               Phone  \
                               QuickSearchBox  \
                               Settings  \
                               SettingsProvider  \
                               VpnDialogs \
                               YellowPage

local-modified-jars         := services android.policy telephony-common framework framework2

local-miui-modified-apps    :=

local-phone-apps            :=

local-pre-zip               := 

local-after-zip             := local-test

local-density               := XHDPI

include $(PORT_BUILD)/porting.mk

local-zip-misc              :
	cp misc/com.google.android.maps.jar $(ZIP_DIR)/system/framework/
	@echo Add google apks
	cp misc/apk/* $(ZIP_DIR)/system/app/
	@echo Replace build.prop
	cp misc/build.prop $(ZIP_DIR)/system/build.prop

local-test                  :
	echo "an example action"

