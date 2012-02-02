.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServerThread$AdbSettingsObserver;
    }
.end annotation


# static fields
.field private static final INCLUDE_DEMO:Z = false

.field private static final LOG_BOOT_PROGRESS_SYSTEM_RUN:I = 0xbc2

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ServerThread;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 70

    .prologue
    .line 89
    const/16 v5, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static {v5, v10, v11}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 92
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 94
    const/4 v5, -0x2

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 97
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 98
    const/4 v5, 0x0

    invoke-static {v5}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 102
    const-string v5, "sys.shutdown.requested"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 104
    .local v58, shutdownAction:Ljava/lang/String;
    if-eqz v58, :cond_0

    invoke-virtual/range {v58 .. v58}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 105
    const/4 v5, 0x0

    move-object/from16 v0, v58

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_6

    const/4 v5, 0x1

    move/from16 v55, v5

    .line 108
    .local v55, reboot:Z
    :goto_0
    invoke-virtual/range {v58 .. v58}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_7

    .line 109
    const/4 v5, 0x1

    invoke-virtual/range {v58 .. v58}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v58

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v54

    .line 114
    .local v54, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v55

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 118
    .end local v54           #reason:Ljava/lang/String;
    .end local v55           #reboot:Z
    :cond_0
    const-string v5, "ro.factorytest"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 119
    .local v41, factoryTestStr:Ljava/lang/String;
    const-string v5, ""

    move-object v0, v5

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    move/from16 v40, v5

    .line 122
    .local v40, factoryTest:I
    :goto_2
    const/16 v46, 0x0

    .line 123
    .local v46, lights:Lcom/android/server/LightsService;
    const/16 v53, 0x0

    .line 124
    .local v53, power:Lcom/android/server/PowerManagerService;
    const/16 v27, 0x0

    .line 125
    .local v27, battery:Lcom/android/server/BatteryService;
    const/16 v34, 0x0

    .line 126
    .local v34, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v52, 0x0

    .line 127
    .local v52, pm:Landroid/content/pm/IPackageManager;
    const/4 v6, 0x0

    .line 128
    .local v6, context:Landroid/content/Context;
    const/16 v69, 0x0

    .line 129
    .local v69, wm:Lcom/android/server/WindowManagerService;
    const/16 v28, 0x0

    .line 130
    .local v28, bluetooth:Landroid/server/BluetoothService;
    const/16 v30, 0x0

    .line 131
    .local v30, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v32, 0x0

    .line 132
    .local v32, bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    const/16 v42, 0x0

    .line 133
    .local v42, headset:Lcom/android/server/HeadsetObserver;
    const/16 v37, 0x0

    .line 134
    .local v37, dock:Lcom/android/server/DockObserver;
    const/16 v65, 0x0

    .line 135
    .local v65, usb:Lcom/android/server/usb/UsbService;
    const/16 v63, 0x0

    .line 136
    .local v63, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v56, 0x0

    .line 137
    .local v56, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v61, 0x0

    .line 141
    .local v61, throttle:Lcom/android/server/ThrottleService;
    :try_start_0
    const-string v5, "SystemServer"

    const-string v7, "Entropy Service"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v5, "entropy"

    new-instance v7, Lcom/android/server/EntropyService;

    invoke-direct {v7}, Lcom/android/server/EntropyService;-><init>()V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 144
    const-string v5, "SystemServer"

    const-string v7, "Power Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v8, Lcom/android/server/PowerManagerService;

    invoke-direct {v8}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2e

    .line 146
    .end local v53           #power:Lcom/android/server/PowerManagerService;
    .local v8, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v5, "power"

    invoke-static {v5, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 148
    const-string v5, "SystemServer"

    const-string v7, "Activity Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static/range {v40 .. v40}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v6

    .line 151
    const-string v5, "SystemServer"

    const-string v7, "Telephony Registry"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v5, "telephony.registry"

    new-instance v7, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v7, v6}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 154
    invoke-static {v6}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 156
    const-string v5, "SystemServer"

    const-string v7, "Package Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v5, "SystemServer"

    const-string v7, "!@beginofPackageManager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    if-eqz v40, :cond_9

    const/4 v5, 0x1

    :goto_3
    invoke-static {v6, v5}, Lcom/android/server/PackageManagerService;->main(Landroid/content/Context;Z)Landroid/content/pm/IPackageManager;

    move-result-object v52

    .line 160
    const-string v5, "SystemServer"

    const-string v7, "!@endofPackageManager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 164
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    :try_start_2
    const-string v5, "SystemServer"

    const-string v7, "Account Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v5, "account"

    new-instance v7, Landroid/accounts/AccountManagerService;

    invoke-direct {v7, v6}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 175
    :goto_4
    :try_start_3
    const-string v5, "SystemServer"

    const-string v7, "Content Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v5, 0x1

    move/from16 v0, v40

    move v1, v5

    if-ne v0, v1, :cond_a

    const/4 v5, 0x1

    :goto_5
    invoke-static {v6, v5}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/IContentService;

    .line 179
    const-string v5, "SystemServer"

    const-string v7, "System Content Providers"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 182
    const-string v5, "SystemServer"

    const-string v7, "Battery Service"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v7, Lcom/android/server/BatteryService;

    invoke-direct {v7, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 184
    .end local v27           #battery:Lcom/android/server/BatteryService;
    .local v7, battery:Lcom/android/server/BatteryService;
    :try_start_4
    const-string v5, "battery"

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 186
    const-string v5, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v47, Lcom/android/server/LightsService;

    move-object/from16 v0, v47

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2f

    .line 189
    .end local v46           #lights:Lcom/android/server/LightsService;
    .local v47, lights:Lcom/android/server/LightsService;
    :try_start_5
    const-string v5, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v5, "vibrator"

    new-instance v9, Lcom/android/server/VibratorService;

    invoke-direct {v9, v6}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 194
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    move-object v0, v8

    move-object v1, v6

    move-object/from16 v2, v47

    move-object v3, v5

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 196
    const-string v5, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v9, Lcom/android/server/AlarmManagerService;

    invoke-direct {v9, v6}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V

    .line 198
    .local v9, alarm:Lcom/android/server/AlarmManagerService;
    const-string v5, "alarm"

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 200
    const-string v5, "SystemServer"

    const-string v10, "Init Watchdog"

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 204
    const-string v5, "SystemServer"

    const-string v9, "Window Manager"

    .end local v9           #alarm:Lcom/android/server/AlarmManagerService;
    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v5, 0x1

    move/from16 v0, v40

    move v1, v5

    if-eq v0, v1, :cond_b

    const/4 v5, 0x1

    :goto_6
    invoke-static {v6, v8, v5}, Lcom/android/server/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)Lcom/android/server/WindowManagerService;

    move-result-object v69

    .line 207
    const-string v5, "window"

    move-object v0, v5

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 209
    const-string v5, "activity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityManagerService;

    move-object v0, v5

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/WindowManagerService;)V

    .line 212
    move-object v0, v6

    move/from16 v1, v40

    invoke-static {v0, v1}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->loadServices(Landroid/content/Context;I)V

    .line 217
    const-string v5, "ro.kernel.qemu"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "1"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 218
    const-string v5, "SystemServer"

    const-string v9, "Registering null Bluetooth Service (emulator)"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v5, "bluetooth"

    const/4 v9, 0x0

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_7
    move-object/from16 v46, v47

    .line 248
    .end local v47           #lights:Lcom/android/server/LightsService;
    .restart local v46       #lights:Lcom/android/server/LightsService;
    :goto_8
    const/16 v35, 0x0

    .line 249
    .local v35, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v59, 0x0

    .line 250
    .local v59, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v44, 0x0

    .line 251
    .local v44, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v25, 0x0

    .line 252
    .local v25, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v50, 0x0

    .line 253
    .local v50, notification:Lcom/android/server/NotificationManagerService;
    const/16 v67, 0x0

    .line 254
    .local v67, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v48, 0x0

    .line 256
    .local v48, location:Lcom/android/server/LocationManagerService;
    const/4 v5, 0x1

    move/from16 v0, v40

    move v1, v5

    if-eq v0, v1, :cond_1

    .line 258
    :try_start_6
    const-string v5, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v36, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v36

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 260
    .end local v35           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v36, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_7
    const-string v5, "device_policy"

    move-object v0, v5

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2d

    move-object/from16 v35, v36

    .line 266
    .end local v36           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v35       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_9
    :try_start_8
    const-string v5, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v60, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v60

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .line 268
    .end local v59           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v60, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_9
    const-string v5, "statusbar"

    move-object v0, v5

    move-object/from16 v1, v60

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2c

    move-object/from16 v59, v60

    .line 274
    .end local v60           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v59       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_a
    :try_start_a
    const-string v5, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v5, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v6}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    .line 285
    :goto_b
    :try_start_b
    const-string v5, "SystemServer"

    const-string v9, "ClipboardEx Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v5, "clipboardEx"

    new-instance v9, Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {v9, v6}, Lcom/android/server/sec/InternalClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    .line 292
    :goto_c
    :try_start_c
    const-string v5, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v45, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v45

    move-object v1, v6

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7

    .line 294
    .end local v44           #imm:Lcom/android/server/InputMethodManagerService;
    .local v45, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_d
    const-string v5, "input_method"

    move-object v0, v5

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2b

    move-object/from16 v44, v45

    .line 300
    .end local v45           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v44       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_d
    :try_start_e
    const-string v5, "SystemServer"

    const-string v9, "NetStat Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v5, "netstat"

    new-instance v9, Lcom/android/server/NetStatService;

    invoke-direct {v9, v6}, Lcom/android/server/NetStatService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8

    .line 307
    :goto_e
    :try_start_f
    const-string v5, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v5, "network_management"

    invoke-static {v6}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9

    .line 316
    :goto_f
    :try_start_10
    const-string v5, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->getInstance(Landroid/content/Context;)Lcom/android/server/ConnectivityService;

    move-result-object v34

    .line 318
    const-string v5, "connectivity"

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_a

    .line 324
    :goto_10
    :try_start_11
    const-string v5, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v62, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v62

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_b

    .line 326
    .end local v61           #throttle:Lcom/android/server/ThrottleService;
    .local v62, throttle:Lcom/android/server/ThrottleService;
    :try_start_12
    const-string v5, "throttle"

    move-object v0, v5

    move-object/from16 v1, v62

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_2a

    move-object/from16 v61, v62

    .line 333
    .end local v62           #throttle:Lcom/android/server/ThrottleService;
    .restart local v61       #throttle:Lcom/android/server/ThrottleService;
    :goto_11
    :try_start_13
    const-string v5, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v5, "accessibility"

    new-instance v9, Lcom/android/server/AccessibilityManagerService;

    invoke-direct {v9, v6}, Lcom/android/server/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_c

    .line 345
    :goto_12
    :try_start_14
    const-string v5, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v5, "mount"

    new-instance v9, Lcom/android/server/MountService;

    invoke-direct {v9, v6}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_d

    .line 352
    :goto_13
    :try_start_15
    const-string v5, "SystemServer"

    const-string v9, "UsbStorage Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string v5, "usbstorage"

    new-instance v9, Lcom/android/server/UsbStorageService;

    invoke-direct {v9, v6}, Lcom/android/server/UsbStorageService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_e

    .line 359
    :goto_14
    :try_start_16
    const-string v5, "SystemServer"

    const-string v9, "Encrypt Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string v5, "encrypt"

    new-instance v9, Lcom/android/server/EncryptService;

    invoke-direct {v9, v6}, Lcom/android/server/EncryptService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_f

    .line 366
    :goto_15
    :try_start_17
    const-string v5, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v51, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v51

    move-object v1, v6

    move-object/from16 v2, v59

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_10

    .line 368
    .end local v50           #notification:Lcom/android/server/NotificationManagerService;
    .local v51, notification:Lcom/android/server/NotificationManagerService;
    :try_start_18
    const-string v5, "notification"

    move-object v0, v5

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_29

    move-object/from16 v50, v51

    .line 383
    .end local v51           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v50       #notification:Lcom/android/server/NotificationManagerService;
    :goto_16
    :try_start_19
    const-string v5, "SystemServer"

    const-string v9, "DataRouter Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string v5, "datarouter"

    new-instance v9, Lcom/android/server/DataRouterService;

    invoke-direct {v9, v6}, Lcom/android/server/DataRouterService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_11

    .line 390
    :goto_17
    :try_start_1a
    const-string v5, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v5, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v6}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_12

    .line 398
    :goto_18
    :try_start_1b
    const-string v5, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v49, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v49

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_13

    .line 400
    .end local v48           #location:Lcom/android/server/LocationManagerService;
    .local v49, location:Lcom/android/server/LocationManagerService;
    :try_start_1c
    const-string v5, "location"

    move-object v0, v5

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_28

    move-object/from16 v48, v49

    .line 406
    .end local v49           #location:Lcom/android/server/LocationManagerService;
    .restart local v48       #location:Lcom/android/server/LocationManagerService;
    :goto_19
    :try_start_1d
    const-string v5, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-string v5, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v6}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_14

    .line 419
    :goto_1a
    :try_start_1e
    const-string v5, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string v5, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v6, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_15

    .line 427
    :goto_1b
    :try_start_1f
    const-string v5, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    new-instance v68, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v68

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_16

    .line 429
    .end local v67           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v68, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_20
    const-string v5, "wallpaper"

    move-object v0, v5

    move-object/from16 v1, v68

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_27

    move-object/from16 v67, v68

    .line 435
    .end local v68           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v67       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :goto_1c
    :try_start_21
    const-string v5, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string v5, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v6}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_17

    .line 444
    :goto_1d
    :try_start_22
    const-string v5, "SystemServer"

    const-string v9, "Starting TvOut Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v5, "tvoutservice"

    new-instance v9, Lcom/android/server/TvOutService;

    invoke-direct {v9, v6}, Lcom/android/server/TvOutService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_18

    .line 451
    :goto_1e
    :try_start_23
    const-string v5, "SystemServer"

    const-string v9, "Headset Observer"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    new-instance v43, Lcom/android/server/HeadsetObserver;

    move-object/from16 v0, v43

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/HeadsetObserver;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_19

    .end local v42           #headset:Lcom/android/server/HeadsetObserver;
    .local v43, headset:Lcom/android/server/HeadsetObserver;
    move-object/from16 v42, v43

    .line 460
    .end local v43           #headset:Lcom/android/server/HeadsetObserver;
    .restart local v42       #headset:Lcom/android/server/HeadsetObserver;
    :goto_1f
    :try_start_24
    const-string v5, "SystemServer"

    const-string v9, " FM_RADIO_SERVICE"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v5, "FMPlayer"

    new-instance v9, Lcom/android/server/FMRadioService;

    invoke-direct {v9, v6}, Lcom/android/server/FMRadioService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 463
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "[FMPlayer]FMRadio service added .."

    invoke-virtual {v5, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_1a

    .line 471
    :goto_20
    :try_start_25
    const-string v5, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    new-instance v38, Lcom/android/server/DockObserver;

    move-object/from16 v0, v38

    move-object v1, v6

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_1b

    .end local v37           #dock:Lcom/android/server/DockObserver;
    .local v38, dock:Lcom/android/server/DockObserver;
    move-object/from16 v37, v38

    .line 479
    .end local v38           #dock:Lcom/android/server/DockObserver;
    .restart local v37       #dock:Lcom/android/server/DockObserver;
    :goto_21
    :try_start_26
    const-string v5, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    new-instance v66, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v66

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_1c

    .line 482
    .end local v65           #usb:Lcom/android/server/usb/UsbService;
    .local v66, usb:Lcom/android/server/usb/UsbService;
    :try_start_27
    const-string v5, "usb"

    move-object v0, v5

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_26

    move-object/from16 v65, v66

    .line 488
    .end local v66           #usb:Lcom/android/server/usb/UsbService;
    .restart local v65       #usb:Lcom/android/server/usb/UsbService;
    :goto_22
    :try_start_28
    const-string v5, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v64, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v64

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_1d

    .end local v63           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v64, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v63, v64

    .line 496
    .end local v64           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v63       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_23
    :try_start_29
    const-string v5, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const-string v5, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v6}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_1e

    .line 504
    :goto_24
    :try_start_2a
    const-string v5, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance v26, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v26

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_1f

    .line 506
    .end local v25           #appWidget:Lcom/android/server/AppWidgetService;
    .local v26, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_2b
    const-string v5, "appwidget"

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_25

    move-object/from16 v25, v26

    .line 512
    .end local v26           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v25       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_25
    :try_start_2c
    const-string v5, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    new-instance v57, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v57

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_20

    .end local v56           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v57, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v56, v57

    .line 519
    .end local v57           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v56       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_26
    :try_start_2d
    const-string v5, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const-string v5, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v6}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_21

    .line 527
    :goto_27
    :try_start_2e
    const-string v5, "SystemServer"

    const-string v9, "BT FM Power Management Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const-string v5, "bt_fm_radio"

    new-instance v9, Lcom/broadcom/bt/service/framework/PowerManagementService;

    invoke-direct {v9, v6}, Lcom/broadcom/bt/service/framework/PowerManagementService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_22

    .line 536
    .end local v6           #context:Landroid/content/Context;
    :cond_1
    :goto_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v6, "adb_enabled"

    const-string v9, "1"

    const-string v10, "persist.service.adb.enable"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    const/4 v9, 0x1

    :goto_29
    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v6, "adb_enabled"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v9, 0x0

    new-instance v10, Lcom/android/server/ServerThread$AdbSettingsObserver;

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/ServerThread$AdbSettingsObserver;-><init>(Lcom/android/server/ServerThread;)V

    invoke-virtual {v5, v6, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v6, "SimDBReady"

    const/4 v9, 0x0

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 547
    invoke-virtual/range {v69 .. v69}, Lcom/android/server/WindowManagerService;->detectSafeMode()Z

    move-result v20

    .line 548
    .local v20, safeMode:Z
    if-eqz v20, :cond_f

    .line 550
    :try_start_2f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->enterSafeMode()V

    .line 552
    const/4 v5, 0x1

    sput-boolean v5, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 554
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->disableJitCompilation()V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_2f} :catch_24

    .line 563
    :goto_2a
    if-eqz v35, :cond_2

    .line 564
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V

    .line 565
    const-string v5, "SystemServer"

    const-string v6, "devicePolicy systemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_2
    if-eqz v50, :cond_3

    .line 569
    invoke-virtual/range {v50 .. v50}, Lcom/android/server/NotificationManagerService;->systemReady()V

    .line 570
    const-string v5, "SystemServer"

    const-string v6, "notification systemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_3
    if-eqz v59, :cond_4

    .line 574
    invoke-virtual/range {v59 .. v59}, Lcom/android/server/StatusBarManagerService;->systemReady()V

    .line 575
    const-string v5, "SystemServer"

    const-string v6, "statusBar systemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_4
    invoke-virtual/range {v69 .. v69}, Lcom/android/server/WindowManagerService;->systemReady()V

    .line 579
    const-string v5, "SystemServer"

    const-string v6, "WindowManagerService systemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-virtual {v8}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 582
    const-string v5, "SystemServer"

    const-string v6, "PowerManagerService systemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :try_start_30
    invoke-interface/range {v52 .. v52}, Landroid/content/pm/IPackageManager;->systemReady()V

    .line 586
    const-string v5, "SystemServer"

    const-string v6, "PackageManager systemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_30} :catch_23

    .line 591
    :goto_2b
    move-object/from16 v12, v59

    .line 592
    .local v12, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object v13, v7

    .line 593
    .local v13, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v14, v34

    .line 594
    .local v14, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v15, v37

    .line 595
    .local v15, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v16, v65

    .line 596
    .local v16, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v24, v61

    .line 597
    .local v24, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v17, v63

    .line 598
    .local v17, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v19, v25

    .line 599
    .local v19, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v21, v67

    .line 600
    .local v21, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v22, v44

    .line 601
    .local v22, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v18, v56

    .line 602
    .local v18, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v23, v48

    .line 609
    .local v23, locationF:Lcom/android/server/LocationManagerService;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityManagerService;

    new-instance v10, Lcom/android/server/ServerThread$1;

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v24}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;Lcom/android/server/StatusBarManagerService;Lcom/android/server/BatteryService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/ThrottleService;)V

    invoke-virtual {v5, v10}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 646
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 647
    const-string v5, "SystemServer"

    const-string v6, "Enabled StrictMode for system server main thread."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_5
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 651
    const-string v5, "SystemServer"

    const-string v6, "System ServerThread is exiting!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return-void

    .line 105
    .end local v7           #battery:Lcom/android/server/BatteryService;
    .end local v8           #power:Lcom/android/server/PowerManagerService;
    .end local v12           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v13           #batteryF:Lcom/android/server/BatteryService;
    .end local v14           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v15           #dockF:Lcom/android/server/DockObserver;
    .end local v16           #usbF:Lcom/android/server/usb/UsbService;
    .end local v17           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v18           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v19           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v20           #safeMode:Z
    .end local v21           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v22           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v23           #locationF:Lcom/android/server/LocationManagerService;
    .end local v24           #throttleF:Lcom/android/server/ThrottleService;
    .end local v25           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v28           #bluetooth:Landroid/server/BluetoothService;
    .end local v30           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v32           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .end local v34           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v35           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v37           #dock:Lcom/android/server/DockObserver;
    .end local v40           #factoryTest:I
    .end local v41           #factoryTestStr:Ljava/lang/String;
    .end local v42           #headset:Lcom/android/server/HeadsetObserver;
    .end local v44           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v46           #lights:Lcom/android/server/LightsService;
    .end local v48           #location:Lcom/android/server/LocationManagerService;
    .end local v50           #notification:Lcom/android/server/NotificationManagerService;
    .end local v52           #pm:Landroid/content/pm/IPackageManager;
    .end local v56           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v59           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v61           #throttle:Lcom/android/server/ThrottleService;
    .end local v63           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v65           #usb:Lcom/android/server/usb/UsbService;
    .end local v67           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v69           #wm:Lcom/android/server/WindowManagerService;
    :cond_6
    const/4 v5, 0x0

    move/from16 v55, v5

    goto/16 :goto_0

    .line 111
    .restart local v55       #reboot:Z
    :cond_7
    const/16 v54, 0x0

    .restart local v54       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 119
    .end local v54           #reason:Ljava/lang/String;
    .end local v55           #reboot:Z
    .restart local v41       #factoryTestStr:Ljava/lang/String;
    :cond_8
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move/from16 v40, v5

    goto/16 :goto_2

    .line 158
    .restart local v6       #context:Landroid/content/Context;
    .restart local v8       #power:Lcom/android/server/PowerManagerService;
    .restart local v27       #battery:Lcom/android/server/BatteryService;
    .restart local v28       #bluetooth:Landroid/server/BluetoothService;
    .restart local v30       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v32       #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .restart local v34       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v37       #dock:Lcom/android/server/DockObserver;
    .restart local v40       #factoryTest:I
    .restart local v42       #headset:Lcom/android/server/HeadsetObserver;
    .restart local v46       #lights:Lcom/android/server/LightsService;
    .restart local v52       #pm:Landroid/content/pm/IPackageManager;
    .restart local v56       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v61       #throttle:Lcom/android/server/ThrottleService;
    .restart local v63       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v65       #usb:Lcom/android/server/usb/UsbService;
    .restart local v69       #wm:Lcom/android/server/WindowManagerService;
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 171
    :catch_0
    move-exception v5

    move-object/from16 v39, v5

    .line 172
    .local v39, e:Ljava/lang/Throwable;
    :try_start_31
    const-string v5, "SystemServer"

    const-string v7, "Failure starting Account Manager"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_31} :catch_1

    goto/16 :goto_4

    .line 244
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_1
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v7, v27

    .line 245
    .end local v27           #battery:Lcom/android/server/BatteryService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    .local v39, e:Ljava/lang/RuntimeException;
    :goto_2c
    const-string v5, "System"

    const-string v9, "Failure starting core service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 176
    .end local v7           #battery:Lcom/android/server/BatteryService;
    .end local v39           #e:Ljava/lang/RuntimeException;
    .restart local v27       #battery:Lcom/android/server/BatteryService;
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 205
    .end local v27           #battery:Lcom/android/server/BatteryService;
    .end local v46           #lights:Lcom/android/server/LightsService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    .restart local v47       #lights:Lcom/android/server/LightsService;
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 220
    :cond_c
    const/4 v5, 0x1

    move/from16 v0, v40

    move v1, v5

    if-ne v0, v1, :cond_d

    .line 221
    :try_start_32
    const-string v5, "SystemServer"

    const-string v9, "Registering null Bluetooth Service (factory test)"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v5, "bluetooth"

    const/4 v9, 0x0

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_7

    .line 244
    :catch_2
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v46, v47

    .end local v47           #lights:Lcom/android/server/LightsService;
    .restart local v46       #lights:Lcom/android/server/LightsService;
    goto :goto_2c

    .line 224
    .end local v46           #lights:Lcom/android/server/LightsService;
    .restart local v47       #lights:Lcom/android/server/LightsService;
    :cond_d
    const-string v5, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v29, Landroid/server/BluetoothService;

    move-object/from16 v0, v29

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_32} :catch_2

    .line 226
    .end local v28           #bluetooth:Landroid/server/BluetoothService;
    .local v29, bluetooth:Landroid/server/BluetoothService;
    :try_start_33
    const-string v5, "bluetooth"

    move-object v0, v5

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 227
    invoke-virtual/range {v29 .. v29}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 228
    new-instance v31, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v31

    move-object v1, v6

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_33} :catch_30

    .line 229
    .end local v30           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v31, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_34
    const-string v5, "bluetooth_a2dp"

    move-object v0, v5

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 231
    new-instance v33, Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    move-object/from16 v0, v33

    move-object v1, v6

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_34
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_34} :catch_31

    .line 232
    .end local v32           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .local v33, bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    :try_start_35
    const-string v5, "bluetooth_hid"

    move-object v0, v5

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_35} :catch_32

    move-object/from16 v32, v33

    .end local v33           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .restart local v32       #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    move-object/from16 v30, v31

    .end local v31           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v30       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v28, v29

    .end local v29           #bluetooth:Landroid/server/BluetoothService;
    .restart local v28       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_7

    .line 261
    .end local v47           #lights:Lcom/android/server/LightsService;
    .restart local v25       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v35       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v44       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v46       #lights:Lcom/android/server/LightsService;
    .restart local v48       #location:Lcom/android/server/LocationManagerService;
    .restart local v50       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v59       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v67       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v5

    move-object/from16 v39, v5

    .line 262
    .local v39, e:Ljava/lang/Throwable;
    :goto_2d
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DevicePolicyService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 269
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v5

    move-object/from16 v39, v5

    .line 270
    .restart local v39       #e:Ljava/lang/Throwable;
    :goto_2e
    const-string v5, "SystemServer"

    const-string v9, "Failure starting StatusBarManagerService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 277
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v5

    move-object/from16 v39, v5

    .line 278
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Clipboard Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 288
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v5

    move-object/from16 v39, v5

    .line 289
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting ClipboardEx Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 295
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v5

    move-object/from16 v39, v5

    .line 296
    .restart local v39       #e:Ljava/lang/Throwable;
    :goto_2f
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Input Manager Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 302
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v5

    move-object/from16 v39, v5

    .line 303
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting NetStat Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 311
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v5

    move-object/from16 v39, v5

    .line 312
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting NetworkManagement Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 319
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v5

    move-object/from16 v39, v5

    .line 320
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Connectivity Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    .line 328
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v5

    move-object/from16 v39, v5

    .line 329
    .restart local v39       #e:Ljava/lang/Throwable;
    :goto_30
    const-string v5, "SystemServer"

    const-string v9, "Failure starting ThrottleService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11

    .line 336
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v5

    move-object/from16 v39, v5

    .line 337
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Accessibility Manager"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_12

    .line 347
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v5

    move-object/from16 v39, v5

    .line 348
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Mount Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13

    .line 354
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v5

    move-object/from16 v39, v5

    .line 355
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting UsbStorage Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    .line 361
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v5

    move-object/from16 v39, v5

    .line 362
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Encrypt Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .line 369
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v5

    move-object/from16 v39, v5

    .line 370
    .restart local v39       #e:Ljava/lang/Throwable;
    :goto_31
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Notification Manager"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_16

    .line 385
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v5

    move-object/from16 v39, v5

    .line 386
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DataRouter Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_17

    .line 393
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v5

    move-object/from16 v39, v5

    .line 394
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DeviceStorageMonitor service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18

    .line 401
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v5

    move-object/from16 v39, v5

    .line 402
    .restart local v39       #e:Ljava/lang/Throwable;
    :goto_32
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Location Manager"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19

    .line 409
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v5

    move-object/from16 v39, v5

    .line 410
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Search Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a

    .line 422
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v5

    move-object/from16 v39, v5

    .line 423
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DropBoxManagerService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1b

    .line 430
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v5

    move-object/from16 v39, v5

    .line 431
    .restart local v39       #e:Ljava/lang/Throwable;
    :goto_33
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Wallpaper Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1c

    .line 437
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v5

    move-object/from16 v39, v5

    .line 438
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Audio Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d

    .line 446
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v5

    move-object/from16 v39, v5

    .line 447
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting TvOut Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e

    .line 454
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v5

    move-object/from16 v39, v5

    .line 455
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting HeadsetObserver"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .line 465
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v5

    move-object/from16 v39, v5

    .line 466
    .restart local v39       #e:Ljava/lang/Throwable;
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Throwable;->printStackTrace()V

    .line 467
    const-string v5, "SystemServer"

    const-string v9, "Failure starting RadioService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    .line 474
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v5

    move-object/from16 v39, v5

    .line 475
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DockObserver"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 483
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v5

    move-object/from16 v39, v5

    .line 484
    .restart local v39       #e:Ljava/lang/Throwable;
    :goto_34
    const-string v5, "SystemServer"

    const-string v9, "Failure starting UsbService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    .line 491
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v5

    move-object/from16 v39, v5

    .line 492
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting UiModeManagerService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_23

    .line 499
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v5

    move-object/from16 v39, v5

    .line 500
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_24

    .line 507
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v5

    move-object/from16 v39, v5

    .line 508
    .restart local v39       #e:Ljava/lang/Throwable;
    :goto_35
    const-string v5, "SystemServer"

    const-string v9, "Failure starting AppWidget Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    .line 514
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v5

    move-object/from16 v39, v5

    .line 515
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Recognition Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    .line 521
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v5

    move-object/from16 v39, v5

    .line 522
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DiskStats Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27

    .line 529
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v5

    move-object/from16 v39, v5

    .line 530
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting BT FM Power Management Service"

    .end local v6           #context:Landroid/content/Context;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28

    .line 536
    .end local v39           #e:Ljava/lang/Throwable;
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_29

    .line 559
    .restart local v20       #safeMode:Z
    :cond_f
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_2a

    .line 587
    :catch_23
    move-exception v5

    goto/16 :goto_2b

    .line 555
    :catch_24
    move-exception v5

    goto/16 :goto_2a

    .line 507
    .end local v20           #safeMode:Z
    .end local v25           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v6       #context:Landroid/content/Context;
    .restart local v26       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_25
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v25, v26

    .end local v26           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v25       #appWidget:Lcom/android/server/AppWidgetService;
    goto :goto_35

    .line 483
    .end local v65           #usb:Lcom/android/server/usb/UsbService;
    .restart local v66       #usb:Lcom/android/server/usb/UsbService;
    :catch_26
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v65, v66

    .end local v66           #usb:Lcom/android/server/usb/UsbService;
    .restart local v65       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_34

    .line 430
    .end local v67           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v68       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_27
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v67, v68

    .end local v68           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v67       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_33

    .line 401
    .end local v48           #location:Lcom/android/server/LocationManagerService;
    .restart local v49       #location:Lcom/android/server/LocationManagerService;
    :catch_28
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v48, v49

    .end local v49           #location:Lcom/android/server/LocationManagerService;
    .restart local v48       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_32

    .line 369
    .end local v50           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v51       #notification:Lcom/android/server/NotificationManagerService;
    :catch_29
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v50, v51

    .end local v51           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v50       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_31

    .line 328
    .end local v61           #throttle:Lcom/android/server/ThrottleService;
    .restart local v62       #throttle:Lcom/android/server/ThrottleService;
    :catch_2a
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v61, v62

    .end local v62           #throttle:Lcom/android/server/ThrottleService;
    .restart local v61       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_30

    .line 295
    .end local v44           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v45       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_2b
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v44, v45

    .end local v45           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v44       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_2f

    .line 269
    .end local v59           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v60       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_2c
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v59, v60

    .end local v60           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v59       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_2e

    .line 261
    .end local v35           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v36       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_2d
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v35, v36

    .end local v36           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v35       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_2d

    .line 244
    .end local v7           #battery:Lcom/android/server/BatteryService;
    .end local v8           #power:Lcom/android/server/PowerManagerService;
    .end local v25           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v35           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v44           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v48           #location:Lcom/android/server/LocationManagerService;
    .end local v50           #notification:Lcom/android/server/NotificationManagerService;
    .end local v59           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v67           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v27       #battery:Lcom/android/server/BatteryService;
    .restart local v53       #power:Lcom/android/server/PowerManagerService;
    :catch_2e
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v7, v27

    .end local v27           #battery:Lcom/android/server/BatteryService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v8, v53

    .end local v53           #power:Lcom/android/server/PowerManagerService;
    .restart local v8       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_2c

    :catch_2f
    move-exception v5

    move-object/from16 v39, v5

    goto/16 :goto_2c

    .end local v28           #bluetooth:Landroid/server/BluetoothService;
    .end local v46           #lights:Lcom/android/server/LightsService;
    .restart local v29       #bluetooth:Landroid/server/BluetoothService;
    .restart local v47       #lights:Lcom/android/server/LightsService;
    :catch_30
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v28, v29

    .end local v29           #bluetooth:Landroid/server/BluetoothService;
    .restart local v28       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v46, v47

    .end local v47           #lights:Lcom/android/server/LightsService;
    .restart local v46       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_2c

    .end local v28           #bluetooth:Landroid/server/BluetoothService;
    .end local v30           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v46           #lights:Lcom/android/server/LightsService;
    .restart local v29       #bluetooth:Landroid/server/BluetoothService;
    .restart local v31       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v47       #lights:Lcom/android/server/LightsService;
    :catch_31
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v30, v31

    .end local v31           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v30       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v28, v29

    .end local v29           #bluetooth:Landroid/server/BluetoothService;
    .restart local v28       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v46, v47

    .end local v47           #lights:Lcom/android/server/LightsService;
    .restart local v46       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_2c

    .end local v28           #bluetooth:Landroid/server/BluetoothService;
    .end local v30           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v32           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .end local v46           #lights:Lcom/android/server/LightsService;
    .restart local v29       #bluetooth:Landroid/server/BluetoothService;
    .restart local v31       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v33       #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .restart local v47       #lights:Lcom/android/server/LightsService;
    :catch_32
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v32, v33

    .end local v33           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .restart local v32       #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    move-object/from16 v30, v31

    .end local v31           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v30       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v28, v29

    .end local v29           #bluetooth:Landroid/server/BluetoothService;
    .restart local v28       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v46, v47

    .end local v47           #lights:Lcom/android/server/LightsService;
    .restart local v46       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_2c
.end method
