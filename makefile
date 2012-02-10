# The original zip file
local-zip-file     := 9000_final.zip

# The output zip file of MIUI rom
local-out-zip-file := NEW_9000.zip

# All apps from zip and has smali files chanded(need to be builded by apktool)
local-modified-apps := Phone CSC LogsProvider SettingsProvider

# All apks from MIUI execept MIUISystemUI and framework-res.apk
local-miui-apps     := Contacts ContactsProvider Mms TelephonyProvider ThemeManager \
	Launcher2 DownloadProvider TelocationProvider Notes Music DownloadProviderUi Updater

# All apps need to be removed from original ZIP file
local-remove-apps   := aldiko-standard-1.2.6.1-samsung-s1 BuddiesNow \
CoolEUKor CWMManager Days DialerTabActivity Dlna DualClock Email InfoAlarm \
Memo MiniDiary PressReader Protips PhoneSetupWizard SamsungApps SamsungAppsUNA3 \
SamsungWidget_CalendarClock SamsungWidget_FeedAndUpdate SamsungWidget_ProgramMonitor \
SamsungWidget_StockClock SetupWizard SnsAccount SnsProvider syncmldm thinkdroid \
TouchWiz30Launcher TweakManager UnifiedInbox VoiceSearch WriteandGo YouTube

include $(PORT_ROOT)/build/porting.mk

