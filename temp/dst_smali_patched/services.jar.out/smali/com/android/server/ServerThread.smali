.class Lcom/android/server/ServerThread;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServerThread$AdbPortObserver;
    }
.end annotation


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final deviceHasSufficientMemory()Z
    .locals 7

    .prologue
    const-wide/32 v0, 0x20000000

    .local v0, MEMORY_SIZE_MIN:J
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .local v2, minfo:Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v3

    const-wide/32 v5, 0x20000000

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public initAndLoop()V
    .locals 182

    .prologue
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v7, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v156

    .local v156, shutdownAction:Ljava/lang/String;
    if-eqz v156, :cond_0

    invoke-virtual/range {v156 .. v156}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    const/4 v7, 0x0

    move-object/from16 v0, v156

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_2a

    const/16 v148, 0x1

    .local v148, reboot:Z
    :goto_0
    invoke-virtual/range {v156 .. v156}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_2b

    const/4 v7, 0x1

    invoke-virtual/range {v156 .. v156}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v156

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v147

    .local v147, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v148

    move-object/from16 v1, v147

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .end local v147           #reason:Ljava/lang/String;
    .end local v148           #reboot:Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    .local v108, factoryTestStr:Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v108

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    const/16 v107, 0x0

    .local v107, factoryTest:I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .local v33, headless:Z
    const/16 v117, 0x0

    .local v117, installer:Lcom/android/server/pm/Installer;
    const/16 v66, 0x0

    .local v66, accountManager:Lcom/android/server/accounts/AccountManagerService;
    const/16 v84, 0x0

    .local v84, contentService:Lcom/android/server/content/ContentService;
    const/16 v119, 0x0

    .local v119, lights:Lcom/android/server/LightsService;
    const/4 v4, 0x0

    .local v4, power:Lcom/android/server/power/PowerManagerService;
    const/16 v98, 0x0

    .local v98, display:Lcom/android/server/display/DisplayManagerService;
    const/16 v73, 0x0

    .local v73, battery:Lcom/android/server/BatteryService;
    const/16 v171, 0x0

    .local v171, vibrator:Lcom/android/server/VibratorService;
    const/16 v68, 0x0

    .local v68, alarm:Lcom/android/server/AlarmManagerService;
    const/16 v127, 0x0

    .local v127, mountService:Lcom/android/server/MountService;
    const/16 v30, 0x0

    .local v30, networkManagement:Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .local v29, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v131, 0x0

    .local v131, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v80, 0x0

    .local v80, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v143, 0x0

    .local v143, qcCon:Ljava/lang/Object;
    const/16 v178, 0x0

    .local v178, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v176, 0x0

    .local v176, wifi:Lcom/android/server/wifi/WifiService;
    const/16 v155, 0x0

    .local v155, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v137, 0x0

    .local v137, pm:Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .local v5, context:Landroid/content/Context;
    const/16 v180, 0x0

    .local v180, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v74, 0x0

    .local v74, bluetooth:Lcom/android/server/BluetoothManagerService;
    const/16 v99, 0x0

    .local v99, dock:Lcom/android/server/DockObserver;
    const/16 v151, 0x0

    .local v151, rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    const/16 v169, 0x0

    .local v169, usb:Lcom/android/server/usb/UsbService;
    const/16 v153, 0x0

    .local v153, serial:Lcom/android/server/SerialService;
    const/16 v165, 0x0

    .local v165, twilight:Lcom/android/server/TwilightService;
    const/16 v167, 0x0

    .local v167, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v149, 0x0

    .local v149, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v133, 0x0

    .local v133, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v77, 0x0

    .local v77, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v116, 0x0

    .local v116, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v159, 0x0

    .local v159, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    const/16 v129, 0x0

    .local v129, msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    const/16 v82, 0x0

    .local v82, consumerIr:Lcom/android/server/ConsumerIrService;
    new-instance v181, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v181

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v181, wmHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v181 .. v181}, Landroid/os/HandlerThread;->start()V

    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v181 .. v181}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .local v21, wmHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/16 v24, 0x0

    .local v24, onlyCore:Z
    const/16 v110, 0x0

    .local v110, firstBoot:Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v118, Lcom/android/server/pm/Installer;

    invoke-direct/range {v118 .. v118}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v117           #installer:Lcom/android/server/pm/Installer;
    .local v118, installer:Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v118 .. v118}, Lcom/android/server/pm/Installer;->ping()Z

    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v138, Lcom/android/server/power/PowerManagerService;

    invoke-direct/range {v138 .. v138}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6b

    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .local v138, power:Lcom/android/server/power/PowerManagerService;
    :try_start_2
    const-string v7, "power"

    move-object/from16 v0, v138

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v107

    move-object/from16 v1, v138

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerService;->main(ILcom/android/server/power/PowerManagerService;)Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6c

    move-result-object v5

    move-object/from16 v4, v138

    .end local v138           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v117, v118

    .end local v118           #installer:Lcom/android/server/pm/Installer;
    .restart local v117       #installer:Lcom/android/server/pm/Installer;
    :goto_3
    const-string v7, "config.disable_storage"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v95

    .local v95, disableStorage:Z
    const-string v7, "config.disable_media"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v92

    .local v92, disableMedia:Z
    const-string v7, "config.disable_bluetooth"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v90

    .local v90, disableBluetooth:Z
    const-string v7, "config.disable_telephony"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v97

    .local v97, disableTelephony:Z
    const-string v7, "config.disable_location"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v91

    .local v91, disableLocation:Z
    const-string v7, "config.disable_systemui"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v96

    .local v96, disableSystemUI:Z
    const-string v7, "config.disable_noncore"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v94

    .local v94, disableNonCoreServices:Z
    const-string v7, "config.disable_network"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v93

    .local v93, disableNetwork:Z
    :try_start_3
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    invoke-direct {v11, v5, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_60

    .end local v98           #display:Lcom/android/server/display/DisplayManagerService;
    .local v11, display:Lcom/android/server/display/DisplayManagerService;
    :try_start_4
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v11, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v160, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v160

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_61

    .end local v159           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .local v160, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :try_start_5
    const-string v7, "telephony.registry"

    move-object/from16 v0, v160

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v130, Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, v130

    invoke-direct {v0, v5}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .end local v129           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .local v130, msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    :try_start_6
    const-string v7, "telephony.msim.registry"

    move-object/from16 v0, v130

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_62

    move-object/from16 v129, v130

    .end local v130           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v129       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    :cond_1
    :try_start_7
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    invoke-virtual {v11}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v87

    .local v87, cryptState:Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v87

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    :cond_3
    :goto_4
    if-eqz v107, :cond_2e

    const/4 v7, 0x1

    :goto_5
    move-object/from16 v0, v117

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v137

    :try_start_8
    invoke-interface/range {v137 .. v137}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_44
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    move-result v110

    :goto_6
    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    :try_start_a
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v67, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v67

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2

    .end local v66           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .local v67, accountManager:Lcom/android/server/accounts/AccountManagerService;
    :try_start_b
    const-string v7, "account"

    move-object/from16 v0, v67

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6a
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_63

    move-object/from16 v66, v67

    .end local v67           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v66       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    :goto_7
    :try_start_c
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    move/from16 v0, v107

    if-ne v0, v7, :cond_2f

    const/4 v7, 0x1

    :goto_8
    invoke-static {v5, v7}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v84

    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2

    .end local v119           #lights:Lcom/android/server/LightsService;
    .local v6, lights:Lcom/android/server/LightsService;
    :try_start_d
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_64

    .end local v73           #battery:Lcom/android/server/BatteryService;
    .local v8, battery:Lcom/android/server/BatteryService;
    :try_start_e
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v172, Lcom/android/server/VibratorService;

    move-object/from16 v0, v172

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_65

    .end local v171           #vibrator:Lcom/android/server/VibratorService;
    .local v172, vibrator:Lcom/android/server/VibratorService;
    :try_start_f
    const-string v7, "vibrator"

    move-object/from16 v0, v172

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Consumer IR Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v83, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v83

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_66

    .end local v82           #consumerIr:Lcom/android/server/ConsumerIrService;
    .local v83, consumerIr:Lcom/android/server/ConsumerIrService;
    :try_start_10
    const-string v7, "consumer_ir"

    move-object/from16 v0, v83

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v10

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/display/DisplayManagerService;)V

    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v16, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_67

    .end local v68           #alarm:Lcom/android/server/AlarmManagerService;
    .local v16, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_11
    const-string v7, "alarm"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v17

    move-object v13, v5

    move-object v14, v8

    move-object v15, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    const-string v9, "WindowManager thread"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v9}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;Ljava/lang/String;)V

    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v20, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_68

    .end local v116           #inputManager:Lcom/android/server/input/InputManagerService;
    .local v20, inputManager:Lcom/android/server/input/InputManagerService;
    :try_start_12
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    move/from16 v0, v107

    if-eq v0, v7, :cond_30

    const/16 v22, 0x1

    :goto_9
    if-nez v110, :cond_31

    const/16 v23, 0x1

    :goto_a
    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-object/from16 v19, v11

    invoke-static/range {v17 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v180

    const-string v7, "window"

    move-object/from16 v0, v180

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "input"

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v180

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual/range {v180 .. v180}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/input/InputManagerService;->start()V

    move-object/from16 v0, v180

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_3

    :goto_b
    move-object/from16 v82, v83

    .end local v83           #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v82       #consumerIr:Lcom/android/server/ConsumerIrService;
    move-object/from16 v159, v160

    .end local v160           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v159       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v171, v172

    .end local v87           #cryptState:Ljava/lang/String;
    .end local v172           #vibrator:Lcom/android/server/VibratorService;
    .restart local v171       #vibrator:Lcom/android/server/VibratorService;
    :goto_c
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110067

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v113

    .local v113, hasRotationLock:Z
    const/16 v88, 0x0

    .local v88, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v157, 0x0

    .local v157, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v114, 0x0

    .local v114, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v69, 0x0

    .local v69, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v141, 0x0

    .local v141, profile:Lcom/android/server/ProfileManagerService;
    const/16 v135, 0x0

    .local v135, notification:Lcom/android/server/NotificationManagerService;
    const/16 v174, 0x0

    .local v174, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v120, 0x0

    .local v120, location:Lcom/android/server/LocationManagerService;
    const/16 v85, 0x0

    .local v85, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v163, 0x0

    .local v163, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v122, 0x0

    .local v122, lockSettings:Lcom/android/server/LockSettingsService;
    const/16 v101, 0x0

    .local v101, dreamy:Lcom/android/server/dreams/DreamManagerService;
    const/16 v71, 0x0

    .local v71, atlas:Lcom/android/server/AssetAtlasService;
    const/16 v139, 0x0

    .local v139, printManager:Lcom/android/server/print/PrintManagerService;
    const/16 v111, 0x0

    .local v111, gestureService:Lcom/android/server/gesture/GestureService;
    const/16 v124, 0x0

    .local v124, mediaRouter:Lcom/android/server/media/MediaRouterService;
    const/16 v161, 0x0

    .local v161, themeService:Lcom/android/server/ThemeService;
    const/16 v104, 0x0

    .local v104, edgeGestureService:Lcom/android/server/gesture/EdgeGestureService;
    const/4 v7, 0x1

    move/from16 v0, v107

    if-eq v0, v7, :cond_4

    :try_start_13
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v115, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v115

    move-object/from16 v1, v180

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_4

    .end local v114           #imm:Lcom/android/server/InputMethodManagerService;
    .local v115, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_14
    const-string v7, "input_method"

    move-object/from16 v0, v115

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_5f

    move-object/from16 v114, v115

    .end local v115           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v114       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_d
    :try_start_15
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_5

    :cond_4
    :goto_e
    :try_start_16
    invoke-virtual/range {v180 .. v180}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_6

    :goto_f
    :try_start_17
    invoke-interface/range {v137 .. v137}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_7

    :goto_10
    :try_start_18
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10404d2

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_5e

    :goto_11
    const/4 v7, 0x1

    move/from16 v0, v107

    if-eq v0, v7, :cond_3a

    if-nez v95, :cond_5

    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    :try_start_19
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v128, Lcom/android/server/MountService;

    move-object/from16 v0, v128

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_8

    .end local v127           #mountService:Lcom/android/server/MountService;
    .local v128, mountService:Lcom/android/server/MountService;
    :try_start_1a
    const-string v7, "mount"

    move-object/from16 v0, v128

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_5d

    move-object/from16 v127, v128

    .end local v128           #mountService:Lcom/android/server/MountService;
    .restart local v127       #mountService:Lcom/android/server/MountService;
    :cond_5
    :goto_12
    if-nez v94, :cond_6

    :try_start_1b
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v123, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v123

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_9

    .end local v122           #lockSettings:Lcom/android/server/LockSettingsService;
    .local v123, lockSettings:Lcom/android/server/LockSettingsService;
    :try_start_1c
    const-string v7, "lock_settings"

    move-object/from16 v0, v123

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_5c

    move-object/from16 v122, v123

    .end local v123           #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v122       #lockSettings:Lcom/android/server/LockSettingsService;
    :goto_13
    :try_start_1d
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v89, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v89

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_a

    .end local v88           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v89, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_1e
    const-string v7, "device_policy"

    move-object/from16 v0, v89

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_5b

    move-object/from16 v88, v89

    .end local v89           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v88       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :cond_6
    :goto_14
    if-nez v96, :cond_7

    :try_start_1f
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v158, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v158

    move-object/from16 v1, v180

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_b

    .end local v157           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v158, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_20
    const-string v7, "statusbar"

    move-object/from16 v0, v158

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_5a

    move-object/from16 v157, v158

    .end local v158           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v157       #statusBar:Lcom/android/server/StatusBarManagerService;
    :cond_7
    :goto_15
    if-nez v94, :cond_8

    :try_start_21
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_c

    :cond_8
    :goto_16
    if-nez v94, :cond_9

    :try_start_22
    const-string v7, "SystemServer"

    const-string v9, "TorchService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "torch"

    new-instance v9, Lcom/android/server/TorchService;

    invoke-direct {v9, v5}, Lcom/android/server/TorchService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_d

    :cond_9
    :goto_17
    if-nez v93, :cond_a

    :try_start_23
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_e

    :cond_a
    :goto_18
    if-nez v94, :cond_b

    :try_start_24
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v164, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v164

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_f

    .end local v163           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v164, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_25
    const-string v7, "textservices"

    move-object/from16 v0, v164

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_59

    move-object/from16 v163, v164

    .end local v164           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v163       #tsms:Lcom/android/server/TextServicesManagerService;
    :cond_b
    :goto_19
    if-nez v93, :cond_39

    :try_start_26
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v132, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v132

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_10

    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v132, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_27
    const-string v7, "netstats"

    move-object/from16 v0, v132

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_58

    move-object/from16 v29, v132

    .end local v132           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_1a
    :try_start_28
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_11

    .end local v131           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_29
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_57

    :goto_1b
    :try_start_2a
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v179, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v179

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_12

    .end local v178           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v179, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_2b
    const-string v7, "wifip2p"

    move-object/from16 v0, v179

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_56

    move-object/from16 v178, v179

    .end local v179           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v178       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1c
    :try_start_2c
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v177, Lcom/android/server/wifi/WifiService;

    move-object/from16 v0, v177

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_13

    .end local v176           #wifi:Lcom/android/server/wifi/WifiService;
    .local v177, wifi:Lcom/android/server/wifi/WifiService;
    :try_start_2d
    const-string v7, "wifi"

    move-object/from16 v0, v177

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_55

    move-object/from16 v176, v177

    .end local v177           #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v176       #wifi:Lcom/android/server/wifi/WifiService;
    :goto_1d
    const/16 v106, 0x1

    .local v106, enableCne:I
    :try_start_2e
    invoke-static {}, Lcom/android/server/ServerThread;->deviceHasSufficientMemory()Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "persist.cne.override.memlimit"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v106

    :cond_c
    const/4 v7, 0x1

    move/from16 v0, v106

    if-ne v0, v7, :cond_36

    const-string v7, "persist.cne.feature"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_15

    move-result v76

    .local v76, cneFeature:I
    :goto_1e
    if-lez v76, :cond_37

    const/16 v7, 0xa

    move/from16 v0, v76

    if-ge v0, v7, :cond_37

    :try_start_2f
    const-string v7, "SystemServer"

    const-string v9, "QcConnectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v145, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/services-ext.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v145

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .local v145, qcsClassLoader:Ldalvik/system/PathClassLoader;
    const-string v7, "com.android.server.QcConnectivityService"

    move-object/from16 v0, v145

    invoke-virtual {v0, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v144

    .local v144, qcsClass:Ljava/lang/Class;
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-class v10, Landroid/os/INetworkManagementService;

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const-class v10, Landroid/net/INetworkStatsService;

    aput-object v10, v7, v9

    const/4 v9, 0x3

    const-class v10, Landroid/net/INetworkPolicyManager;

    aput-object v10, v7, v9

    move-object/from16 v0, v144

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v146

    .local v146, qcsConstructor:Ljava/lang/reflect/Constructor;
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    const/4 v9, 0x1

    aput-object v30, v7, v9

    const/4 v9, 0x2

    aput-object v29, v7, v9

    const/4 v9, 0x3

    aput-object v25, v7, v9

    move-object/from16 v0, v146

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v143

    move-object/from16 v0, v143

    check-cast v0, Lcom/android/server/ConnectivityService;

    move-object/from16 v80, v0
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_14

    .end local v143           #qcCon:Ljava/lang/Object;
    .end local v144           #qcsClass:Ljava/lang/Class;
    .end local v145           #qcsClassLoader:Ldalvik/system/PathClassLoader;
    .end local v146           #qcsConstructor:Ljava/lang/reflect/Constructor;
    :goto_1f
    if-eqz v80, :cond_d

    :try_start_30
    const-string v7, "connectivity"

    move-object/from16 v0, v80

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    invoke-virtual/range {v176 .. v176}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V

    invoke-virtual/range {v178 .. v178}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_15

    .end local v76           #cneFeature:I
    :cond_d
    :goto_20
    :try_start_31
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v155

    const-string v7, "servicediscovery"

    move-object/from16 v0, v155

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_16

    .end local v106           #enableCne:I
    :goto_21
    if-nez v94, :cond_e

    :try_start_32
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_17

    :cond_e
    :goto_22
    if-eqz v127, :cond_f

    if-nez v24, :cond_f

    invoke-virtual/range {v127 .. v127}, Lcom/android/server/MountService;->waitForAsecScan()V

    :cond_f
    if-eqz v66, :cond_10

    :try_start_33
    invoke-virtual/range {v66 .. v66}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_18

    :cond_10
    :goto_23
    if-eqz v84, :cond_11

    :try_start_34
    invoke-virtual/range {v84 .. v84}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_19

    :cond_11
    :goto_24
    :try_start_35
    const-string v7, "SystemServer"

    const-string v9, "Profile Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v142, Lcom/android/server/ProfileManagerService;

    move-object/from16 v0, v142

    invoke-direct {v0, v5}, Lcom/android/server/ProfileManagerService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1a

    .end local v141           #profile:Lcom/android/server/ProfileManagerService;
    .local v142, profile:Lcom/android/server/ProfileManagerService;
    :try_start_36
    const-string v7, "profile"

    move-object/from16 v0, v142

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_54

    move-object/from16 v141, v142

    .end local v142           #profile:Lcom/android/server/ProfileManagerService;
    .restart local v141       #profile:Lcom/android/server/ProfileManagerService;
    :goto_25
    :try_start_37
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v136, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v136

    move-object/from16 v1, v157

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1b

    .end local v135           #notification:Lcom/android/server/NotificationManagerService;
    .local v136, notification:Lcom/android/server/NotificationManagerService;
    :try_start_38
    const-string v7, "notification"

    move-object/from16 v0, v136

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_53

    move-object/from16 v135, v136

    .end local v136           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v135       #notification:Lcom/android/server/NotificationManagerService;
    :goto_26
    :try_start_39
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1c

    :goto_27
    if-nez v91, :cond_12

    :try_start_3a
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v121, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v121

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1d

    .end local v120           #location:Lcom/android/server/LocationManagerService;
    .local v121, location:Lcom/android/server/LocationManagerService;
    :try_start_3b
    const-string v7, "location"

    move-object/from16 v0, v121

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_52

    move-object/from16 v120, v121

    .end local v121           #location:Lcom/android/server/LocationManagerService;
    .restart local v120       #location:Lcom/android/server/LocationManagerService;
    :goto_28
    :try_start_3c
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v86, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v86

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_1e

    .end local v85           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v86, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_3d
    const-string v7, "country_detector"

    move-object/from16 v0, v86

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_51

    move-object/from16 v85, v86

    .end local v86           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v85       #countryDetector:Lcom/android/server/CountryDetectorService;
    :cond_12
    :goto_29
    if-nez v94, :cond_13

    :try_start_3e
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "search"

    new-instance v9, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_1f

    :cond_13
    :goto_2a
    :try_start_3f
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_20

    :goto_2b
    if-nez v94, :cond_14

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110038

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_14

    :try_start_40
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v33, :cond_14

    new-instance v175, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v175

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_21

    .end local v174           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v175, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_41
    const-string v7, "wallpaper"

    move-object/from16 v0, v175

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_50

    move-object/from16 v174, v175

    .end local v175           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v174       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_14
    :goto_2c
    if-nez v92, :cond_15

    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    :try_start_42
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_22

    :cond_15
    :goto_2d
    if-nez v94, :cond_16

    :try_start_43
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v100, Lcom/android/server/DockObserver;

    move-object/from16 v0, v100

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_23

    .end local v99           #dock:Lcom/android/server/DockObserver;
    .local v100, dock:Lcom/android/server/DockObserver;
    move-object/from16 v99, v100

    .end local v100           #dock:Lcom/android/server/DockObserver;
    .restart local v99       #dock:Lcom/android/server/DockObserver;
    :cond_16
    :goto_2e
    if-nez v92, :cond_17

    :try_start_44
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v20

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_24

    :cond_17
    :goto_2f
    if-eqz v113, :cond_18

    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "Rotation Switch Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v152, Lcom/android/server/RotationSwitchObserver;

    move-object/from16 v0, v152

    invoke-direct {v0, v5}, Lcom/android/server/RotationSwitchObserver;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_25

    .end local v151           #rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    .local v152, rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    move-object/from16 v151, v152

    .end local v152           #rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    .restart local v151       #rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    :cond_18
    :goto_30
    if-nez v94, :cond_19

    :try_start_46
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v170, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v170

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_26

    .end local v169           #usb:Lcom/android/server/usb/UsbService;
    .local v170, usb:Lcom/android/server/usb/UsbService;
    :try_start_47
    const-string v7, "usb"

    move-object/from16 v0, v170

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_4f

    move-object/from16 v169, v170

    .end local v170           #usb:Lcom/android/server/usb/UsbService;
    .restart local v169       #usb:Lcom/android/server/usb/UsbService;
    :goto_31
    :try_start_48
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v154, Lcom/android/server/SerialService;

    move-object/from16 v0, v154

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_27

    .end local v153           #serial:Lcom/android/server/SerialService;
    .local v154, serial:Lcom/android/server/SerialService;
    :try_start_49
    const-string v7, "serial"

    move-object/from16 v0, v154

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_4e

    move-object/from16 v153, v154

    .end local v154           #serial:Lcom/android/server/SerialService;
    .restart local v153       #serial:Lcom/android/server/SerialService;
    :cond_19
    :goto_32
    :try_start_4a
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v166, Lcom/android/server/TwilightService;

    move-object/from16 v0, v166

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_28

    .end local v165           #twilight:Lcom/android/server/TwilightService;
    .local v166, twilight:Lcom/android/server/TwilightService;
    move-object/from16 v165, v166

    .end local v166           #twilight:Lcom/android/server/TwilightService;
    .restart local v165       #twilight:Lcom/android/server/TwilightService;
    :goto_33
    :try_start_4b
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v168, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v168

    move-object/from16 v1, v165

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_29

    .end local v167           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v168, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v167, v168

    .end local v168           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v167       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_34
    if-nez v94, :cond_1a

    :try_start_4c
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2a

    :goto_35
    :try_start_4d
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v70, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v70

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2b

    .end local v69           #appWidget:Lcom/android/server/AppWidgetService;
    .local v70, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_4e
    const-string v7, "appwidget"

    move-object/from16 v0, v70

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_4d

    move-object/from16 v69, v70

    .end local v70           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v69       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_36
    :try_start_4f
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v150, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v150

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_2c

    .end local v149           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v150, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v149, v150

    .end local v150           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v149       #recognition:Lcom/android/server/RecognitionManagerService;
    :cond_1a
    :goto_37
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_2d

    :goto_38
    :try_start_51
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_2e

    :goto_39
    if-nez v93, :cond_1b

    :try_start_52
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v134, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v134

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_2f

    .end local v133           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v134, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v133, v134

    .end local v134           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v133       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :cond_1b
    :goto_3a
    if-nez v92, :cond_1c

    :try_start_53
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v78, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v78

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_30

    .end local v77           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v78, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_54
    const-string v7, "commontime_management"

    move-object/from16 v0, v78

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_4c

    move-object/from16 v77, v78

    .end local v78           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v77       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :cond_1c
    :goto_3b
    if-nez v93, :cond_1d

    :try_start_55
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_31

    :cond_1d
    :goto_3c
    if-nez v94, :cond_1e

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110053

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_1e

    :try_start_56
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v102, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v102

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_32

    .end local v101           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .local v102, dreamy:Lcom/android/server/dreams/DreamManagerService;
    :try_start_57
    const-string v7, "dreams"

    move-object/from16 v0, v102

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_4b

    move-object/from16 v101, v102

    .end local v102           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v101       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :cond_1e
    :goto_3d
    if-nez v94, :cond_1f

    :try_start_58
    const-string v7, "SystemServer"

    const-string v9, "Assets Atlas Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v72, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v72

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_33

    .end local v71           #atlas:Lcom/android/server/AssetAtlasService;
    .local v72, atlas:Lcom/android/server/AssetAtlasService;
    :try_start_59
    const-string v7, "assetatlas"

    move-object/from16 v0, v72

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_4a

    move-object/from16 v71, v72

    .end local v72           #atlas:Lcom/android/server/AssetAtlasService;
    .restart local v71       #atlas:Lcom/android/server/AssetAtlasService;
    :cond_1f
    :goto_3e
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111006d

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_20

    :try_start_5a
    const-string v7, "SystemServer"

    const-string v9, "Gesture Sensor Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v112, Lcom/android/server/gesture/GestureService;

    move-object/from16 v0, v112

    move-object/from16 v1, v20

    invoke-direct {v0, v5, v1}, Lcom/android/server/gesture/GestureService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_34

    .end local v111           #gestureService:Lcom/android/server/gesture/GestureService;
    .local v112, gestureService:Lcom/android/server/gesture/GestureService;
    :try_start_5b
    const-string v7, "gesture"

    move-object/from16 v0, v112

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_49

    move-object/from16 v111, v112

    .end local v112           #gestureService:Lcom/android/server/gesture/GestureService;
    .restart local v111       #gestureService:Lcom/android/server/gesture/GestureService;
    :cond_20
    :goto_3f
    :try_start_5c
    const-string v7, "SystemServer"

    const-string v9, "IdleMaintenanceService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/IdleMaintenanceService;

    invoke-direct {v7, v5, v8}, Lcom/android/server/IdleMaintenanceService;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_35

    :goto_40
    :try_start_5d
    const-string v7, "SystemServer"

    const-string v9, "Print Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v140, Lcom/android/server/print/PrintManagerService;

    move-object/from16 v0, v140

    invoke-direct {v0, v5}, Lcom/android/server/print/PrintManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_36

    .end local v139           #printManager:Lcom/android/server/print/PrintManagerService;
    .local v140, printManager:Lcom/android/server/print/PrintManagerService;
    :try_start_5e
    const-string v7, "print"

    move-object/from16 v0, v140

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_48

    move-object/from16 v139, v140

    .end local v140           #printManager:Lcom/android/server/print/PrintManagerService;
    .restart local v139       #printManager:Lcom/android/server/print/PrintManagerService;
    :goto_41
    :try_start_5f
    const-string v7, "SystemServer"

    const-string v9, "Theme Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v162, Lcom/android/server/ThemeService;

    move-object/from16 v0, v162

    invoke-direct {v0, v5}, Lcom/android/server/ThemeService;-><init>(Landroid/content/Context;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_37

    .end local v161           #themeService:Lcom/android/server/ThemeService;
    .local v162, themeService:Lcom/android/server/ThemeService;
    :try_start_60
    const-string v7, "themes"

    move-object/from16 v0, v162

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_47

    move-object/from16 v161, v162

    .end local v162           #themeService:Lcom/android/server/ThemeService;
    .restart local v161       #themeService:Lcom/android/server/ThemeService;
    :goto_42
    if-nez v94, :cond_21

    :try_start_61
    const-string v7, "SystemServer"

    const-string v9, "Media Router Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v125, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v125

    invoke-direct {v0, v5}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_38

    .end local v124           #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .local v125, mediaRouter:Lcom/android/server/media/MediaRouterService;
    :try_start_62
    const-string v7, "media_router"

    move-object/from16 v0, v125

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_46

    move-object/from16 v124, v125

    .end local v125           #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .restart local v124       #mediaRouter:Lcom/android/server/media/MediaRouterService;
    :cond_21
    :goto_43
    :try_start_63
    const-string v7, "SystemServer"

    const-string v9, "EdgeGesture service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v105, Lcom/android/server/gesture/EdgeGestureService;

    move-object/from16 v0, v105

    move-object/from16 v1, v20

    invoke-direct {v0, v5, v1}, Lcom/android/server/gesture/EdgeGestureService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_39

    .end local v104           #edgeGestureService:Lcom/android/server/gesture/EdgeGestureService;
    .local v105, edgeGestureService:Lcom/android/server/gesture/EdgeGestureService;
    :try_start_64
    const-string v7, "edgegestureservice"

    move-object/from16 v0, v105

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_45

    move-object/from16 v104, v105

    .end local v105           #edgeGestureService:Lcom/android/server/gesture/EdgeGestureService;
    .restart local v104       #edgeGestureService:Lcom/android/server/gesture/EdgeGestureService;
    :goto_44
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "adb_port"

    const-string v10, "service.adb.tcp.port"

    const-string v12, "-1"

    invoke-static {v10, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "adb_port"

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v12, Lcom/android/server/ServerThread$AdbPortObserver;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/server/ServerThread$AdbPortObserver;-><init>(Lcom/android/server/ServerThread;)V

    invoke-virtual {v7, v9, v10, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {v180 .. v180}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v48

    .local v48, safeMode:Z
    if-eqz v48, :cond_38

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    :goto_45
    if-eqz v66, :cond_22

    move-object/from16 v0, v66

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->setSafeMode(Z)V

    :cond_22
    :try_start_65
    invoke-virtual/range {v171 .. v171}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_3a

    :goto_46
    if-eqz v122, :cond_23

    :try_start_66
    invoke-virtual/range {v122 .. v122}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_3b

    :cond_23
    :goto_47
    if-eqz v88, :cond_24

    :try_start_67
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_3c

    :cond_24
    :goto_48
    if-eqz v135, :cond_25

    :try_start_68
    invoke-virtual/range {v135 .. v135}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_3d

    :cond_25
    :goto_49
    :try_start_69
    invoke-virtual/range {v180 .. v180}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_3e

    :goto_4a
    if-eqz v48, :cond_26

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    :cond_26
    invoke-virtual/range {v180 .. v180}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v79

    .local v79, config:Landroid/content/res/Configuration;
    new-instance v126, Landroid/util/DisplayMetrics;

    invoke-direct/range {v126 .. v126}, Landroid/util/DisplayMetrics;-><init>()V

    .local v126, metrics:Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v173

    check-cast v173, Landroid/view/WindowManager;

    .local v173, w:Landroid/view/WindowManager;
    invoke-interface/range {v173 .. v173}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v126

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v79

    move-object/from16 v1, v126

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :try_start_6a
    move-object/from16 v0, v165

    move-object/from16 v1, v101

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6a} :catch_3f

    :goto_4b
    :try_start_6b
    invoke-interface/range {v137 .. v137}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_40

    :goto_4c
    :try_start_6c
    move/from16 v0, v48

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_41

    :goto_4d
    if-eqz v111, :cond_27

    :try_start_6d
    invoke-virtual/range {v111 .. v111}, Lcom/android/server/gesture/GestureService;->systemReady()V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_42

    :cond_27
    :goto_4e
    if-eqz v104, :cond_28

    :try_start_6e
    invoke-virtual/range {v104 .. v104}, Lcom/android/server/gesture/EdgeGestureService;->systemReady()V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6e} :catch_43

    :cond_28
    :goto_4f
    new-instance v109, Landroid/content/IntentFilter;

    invoke-direct/range {v109 .. v109}, Landroid/content/IntentFilter;-><init>()V

    .local v109, filter:Landroid/content/IntentFilter;
    const-string v7, "com.tmobile.intent.action.APP_LAUNCH_FAILURE"

    move-object/from16 v0, v109

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "com.tmobile.intent.action.APP_LAUNCH_FAILURE_RESET"

    move-object/from16 v0, v109

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v109

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v109

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "org.cyanogenmod.intent.action.THEME_CHANGED"

    move-object/from16 v0, v109

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "com.tmobile.intent.category.THEME_PACKAGE_INSTALL_STATE_CHANGE"

    move-object/from16 v0, v109

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v7, "package"

    move-object/from16 v0, v109

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v7, Lcom/android/server/AppsLaunchFailureReceiver;

    invoke-direct {v7}, Lcom/android/server/AppsLaunchFailureReceiver;-><init>()V

    move-object/from16 v0, v109

    invoke-virtual {v5, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-object/from16 v34, v5

    .local v34, contextF:Landroid/content/Context;
    move-object/from16 v35, v127

    .local v35, mountServiceF:Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .local v36, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .local v37, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .local v38, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .local v39, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v80

    .local v40, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v99

    .local v41, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v42, v151

    .local v42, rotateSwitchF:Lcom/android/server/RotationSwitchObserver;
    move-object/from16 v43, v169

    .local v43, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v44, v165

    .local v44, twilightF:Lcom/android/server/TwilightService;
    move-object/from16 v45, v167

    .local v45, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v47, v69

    .local v47, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v49, v174

    .local v49, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v50, v114

    .local v50, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v46, v149

    .local v46, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v52, v120

    .local v52, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v53, v85

    .local v53, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v54, v133

    .local v54, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v55, v77

    .local v55, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v56, v163

    .local v56, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v51, v157

    .local v51, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v57, v101

    .local v57, dreamyF:Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v58, v71

    .local v58, atlasF:Lcom/android/server/AssetAtlasService;
    move-object/from16 v59, v20

    .local v59, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v60, v159

    .local v60, telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v61, v129

    .local v61, msimTelephonyRegistryF:Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v62, v139

    .local v62, printManagerF:Lcom/android/server/print/PrintManagerService;
    move-object/from16 v63, v124

    .local v63, mediaRouterF:Lcom/android/server/media/MediaRouterService;
    move-object/from16 v65, v137

    .local v65, pmf:Landroid/content/pm/IPackageManager;
    move-object/from16 v64, v161

    .local v64, themeServiceF:Lcom/android/server/ThemeService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$2;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v65}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/RotationSwitchObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/MSimTelephonyRegistry;Lcom/android/server/print/PrintManagerService;Lcom/android/server/media/MediaRouterService;Lcom/android/server/ThemeService;Landroid/content/pm/IPackageManager;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_29

    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v11           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v21           #wmHandler:Landroid/os/Handler;
    .end local v24           #onlyCore:Z
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v30           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v33           #headless:Z
    .end local v34           #contextF:Landroid/content/Context;
    .end local v35           #mountServiceF:Lcom/android/server/MountService;
    .end local v36           #batteryF:Lcom/android/server/BatteryService;
    .end local v37           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v38           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v39           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v41           #dockF:Lcom/android/server/DockObserver;
    .end local v42           #rotateSwitchF:Lcom/android/server/RotationSwitchObserver;
    .end local v43           #usbF:Lcom/android/server/usb/UsbService;
    .end local v44           #twilightF:Lcom/android/server/TwilightService;
    .end local v45           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v46           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v47           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v48           #safeMode:Z
    .end local v49           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v50           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v51           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v52           #locationF:Lcom/android/server/LocationManagerService;
    .end local v53           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v54           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v55           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v56           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v57           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v58           #atlasF:Lcom/android/server/AssetAtlasService;
    .end local v59           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v60           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v61           #msimTelephonyRegistryF:Lcom/android/server/MSimTelephonyRegistry;
    .end local v62           #printManagerF:Lcom/android/server/print/PrintManagerService;
    .end local v63           #mediaRouterF:Lcom/android/server/media/MediaRouterService;
    .end local v64           #themeServiceF:Lcom/android/server/ThemeService;
    .end local v65           #pmf:Landroid/content/pm/IPackageManager;
    .end local v66           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .end local v69           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v71           #atlas:Lcom/android/server/AssetAtlasService;
    .end local v74           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v77           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v79           #config:Landroid/content/res/Configuration;
    .end local v80           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v82           #consumerIr:Lcom/android/server/ConsumerIrService;
    .end local v84           #contentService:Lcom/android/server/content/ContentService;
    .end local v85           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v88           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v90           #disableBluetooth:Z
    .end local v91           #disableLocation:Z
    .end local v92           #disableMedia:Z
    .end local v93           #disableNetwork:Z
    .end local v94           #disableNonCoreServices:Z
    .end local v95           #disableStorage:Z
    .end local v96           #disableSystemUI:Z
    .end local v97           #disableTelephony:Z
    .end local v99           #dock:Lcom/android/server/DockObserver;
    .end local v101           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v104           #edgeGestureService:Lcom/android/server/gesture/EdgeGestureService;
    .end local v107           #factoryTest:I
    .end local v108           #factoryTestStr:Ljava/lang/String;
    .end local v109           #filter:Landroid/content/IntentFilter;
    .end local v110           #firstBoot:Z
    .end local v111           #gestureService:Lcom/android/server/gesture/GestureService;
    .end local v113           #hasRotationLock:Z
    .end local v114           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v117           #installer:Lcom/android/server/pm/Installer;
    .end local v120           #location:Lcom/android/server/LocationManagerService;
    .end local v122           #lockSettings:Lcom/android/server/LockSettingsService;
    .end local v124           #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .end local v126           #metrics:Landroid/util/DisplayMetrics;
    .end local v127           #mountService:Lcom/android/server/MountService;
    .end local v129           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .end local v133           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v135           #notification:Lcom/android/server/NotificationManagerService;
    .end local v137           #pm:Landroid/content/pm/IPackageManager;
    .end local v139           #printManager:Lcom/android/server/print/PrintManagerService;
    .end local v141           #profile:Lcom/android/server/ProfileManagerService;
    .end local v149           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v151           #rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    .end local v153           #serial:Lcom/android/server/SerialService;
    .end local v155           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v157           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v159           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v161           #themeService:Lcom/android/server/ThemeService;
    .end local v163           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v165           #twilight:Lcom/android/server/TwilightService;
    .end local v167           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v169           #usb:Lcom/android/server/usb/UsbService;
    .end local v171           #vibrator:Lcom/android/server/VibratorService;
    .end local v173           #w:Landroid/view/WindowManager;
    .end local v174           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v176           #wifi:Lcom/android/server/wifi/WifiService;
    .end local v178           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v180           #wm:Lcom/android/server/wm/WindowManagerService;
    .end local v181           #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_2a
    const/16 v148, 0x0

    goto/16 :goto_0

    .restart local v148       #reboot:Z
    :cond_2b
    const/16 v147, 0x0

    .restart local v147       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .end local v147           #reason:Ljava/lang/String;
    .end local v148           #reboot:Z
    .restart local v108       #factoryTestStr:Ljava/lang/String;
    :cond_2c
    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v107

    goto/16 :goto_2

    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    .restart local v5       #context:Landroid/content/Context;
    .restart local v21       #wmHandler:Landroid/os/Handler;
    .restart local v24       #onlyCore:Z
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v30       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v33       #headless:Z
    .restart local v66       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v68       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v73       #battery:Lcom/android/server/BatteryService;
    .restart local v74       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v77       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v80       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v82       #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v84       #contentService:Lcom/android/server/content/ContentService;
    .restart local v98       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v99       #dock:Lcom/android/server/DockObserver;
    .restart local v107       #factoryTest:I
    .restart local v110       #firstBoot:Z
    .restart local v116       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v117       #installer:Lcom/android/server/pm/Installer;
    .restart local v119       #lights:Lcom/android/server/LightsService;
    .restart local v127       #mountService:Lcom/android/server/MountService;
    .restart local v129       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v131       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v133       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v137       #pm:Landroid/content/pm/IPackageManager;
    .restart local v143       #qcCon:Ljava/lang/Object;
    .restart local v149       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v151       #rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    .restart local v153       #serial:Lcom/android/server/SerialService;
    .restart local v155       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v159       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v165       #twilight:Lcom/android/server/TwilightService;
    .restart local v167       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v169       #usb:Lcom/android/server/usb/UsbService;
    .restart local v171       #vibrator:Lcom/android/server/VibratorService;
    .restart local v176       #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v178       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v180       #wm:Lcom/android/server/wm/WindowManagerService;
    .restart local v181       #wmHandlerThread:Landroid/os/HandlerThread;
    :catch_0
    move-exception v103

    .local v103, e:Ljava/lang/RuntimeException;
    :goto_50
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "System"

    const-string v9, "************ Failure starting bootstrap service"

    move-object/from16 v0, v103

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .end local v98           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v103           #e:Ljava/lang/RuntimeException;
    .end local v159           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v11       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v87       #cryptState:Ljava/lang/String;
    .restart local v90       #disableBluetooth:Z
    .restart local v91       #disableLocation:Z
    .restart local v92       #disableMedia:Z
    .restart local v93       #disableNetwork:Z
    .restart local v94       #disableNonCoreServices:Z
    .restart local v95       #disableStorage:Z
    .restart local v96       #disableSystemUI:Z
    .restart local v97       #disableTelephony:Z
    .restart local v160       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :cond_2d
    :try_start_6f
    const-string v7, "1"

    move-object/from16 v0, v87

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    goto/16 :goto_4

    :cond_2e
    const/4 v7, 0x0

    goto/16 :goto_5

    :catch_1
    move-exception v103

    .local v103, e:Ljava/lang/Throwable;
    :goto_51
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v103

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catch Ljava/lang/RuntimeException; {:try_start_6f .. :try_end_6f} :catch_2

    goto/16 :goto_7

    .end local v87           #cryptState:Ljava/lang/String;
    .end local v103           #e:Ljava/lang/Throwable;
    :catch_2
    move-exception v103

    move-object/from16 v159, v160

    .end local v160           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v159       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v116

    .end local v116           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v68

    .end local v68           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v73

    .end local v73           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v119

    .end local v119           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .local v103, e:Ljava/lang/RuntimeException;
    :goto_52
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v103

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v103           #e:Ljava/lang/RuntimeException;
    .end local v159           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v68       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v73       #battery:Lcom/android/server/BatteryService;
    .restart local v87       #cryptState:Ljava/lang/String;
    .restart local v116       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v119       #lights:Lcom/android/server/LightsService;
    .restart local v160       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :cond_2f
    const/4 v7, 0x0

    goto/16 :goto_8

    .end local v68           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v73           #battery:Lcom/android/server/BatteryService;
    .end local v82           #consumerIr:Lcom/android/server/ConsumerIrService;
    .end local v116           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v119           #lights:Lcom/android/server/LightsService;
    .end local v171           #vibrator:Lcom/android/server/VibratorService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v83       #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v172       #vibrator:Lcom/android/server/VibratorService;
    :cond_30
    const/16 v22, 0x0

    goto/16 :goto_9

    :cond_31
    const/16 v23, 0x0

    goto/16 :goto_a

    :cond_32
    const/4 v7, 0x1

    move/from16 v0, v107

    if-ne v0, v7, :cond_33

    :try_start_70
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :catch_3
    move-exception v103

    move-object/from16 v82, v83

    .end local v83           #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v82       #consumerIr:Lcom/android/server/ConsumerIrService;
    move-object/from16 v159, v160

    .end local v160           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v159       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v171, v172

    .end local v172           #vibrator:Lcom/android/server/VibratorService;
    .restart local v171       #vibrator:Lcom/android/server/VibratorService;
    goto :goto_52

    .end local v82           #consumerIr:Lcom/android/server/ConsumerIrService;
    .end local v159           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v171           #vibrator:Lcom/android/server/VibratorService;
    .restart local v83       #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v160       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v172       #vibrator:Lcom/android/server/VibratorService;
    :cond_33
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_34

    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_34
    if-eqz v90, :cond_35

    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Service disabled by config"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_35
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v75, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v75

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_70
    .catch Ljava/lang/RuntimeException; {:try_start_70 .. :try_end_70} :catch_3

    .end local v74           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .local v75, bluetooth:Lcom/android/server/BluetoothManagerService;
    :try_start_71
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v75

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_71
    .catch Ljava/lang/RuntimeException; {:try_start_71 .. :try_end_71} :catch_69

    move-object/from16 v74, v75

    .end local v75           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v74       #bluetooth:Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_b

    .end local v83           #consumerIr:Lcom/android/server/ConsumerIrService;
    .end local v87           #cryptState:Ljava/lang/String;
    .end local v160           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v172           #vibrator:Lcom/android/server/VibratorService;
    .restart local v69       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v71       #atlas:Lcom/android/server/AssetAtlasService;
    .restart local v82       #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v85       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v88       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v101       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v104       #edgeGestureService:Lcom/android/server/gesture/EdgeGestureService;
    .restart local v111       #gestureService:Lcom/android/server/gesture/GestureService;
    .restart local v113       #hasRotationLock:Z
    .restart local v114       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v120       #location:Lcom/android/server/LocationManagerService;
    .restart local v122       #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v124       #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .restart local v135       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v139       #printManager:Lcom/android/server/print/PrintManagerService;
    .restart local v141       #profile:Lcom/android/server/ProfileManagerService;
    .restart local v157       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v159       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v161       #themeService:Lcom/android/server/ThemeService;
    .restart local v163       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v171       #vibrator:Lcom/android/server/VibratorService;
    .restart local v174       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_4
    move-exception v103

    .local v103, e:Ljava/lang/Throwable;
    :goto_53
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "starting Torch Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v103

    move-object/from16 v25, v131

    .end local v131           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v103       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    :goto_5c
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .end local v103           #e:Ljava/lang/Throwable;
    .restart local v106       #enableCne:I
    :cond_36
    const/16 v76, 0x0

    goto/16 :goto_1e

    .restart local v76       #cneFeature:I
    :cond_37
    :try_start_72
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v81, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v81

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_72} :catch_14

    .end local v80           #connectivity:Lcom/android/server/ConnectivityService;
    .local v81, connectivity:Lcom/android/server/ConnectivityService;
    move-object/from16 v80, v81

    .end local v81           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v80       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_1f

    .end local v143           #qcCon:Ljava/lang/Object;
    :catch_14
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    :try_start_73
    new-instance v81, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v81

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_73} :catch_15

    .end local v80           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v81       #connectivity:Lcom/android/server/ConnectivityService;
    move-object/from16 v80, v81

    .end local v81           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v80       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_1f

    .end local v76           #cneFeature:I
    .end local v103           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .end local v103           #e:Ljava/lang/Throwable;
    .end local v106           #enableCne:I
    :catch_17
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    :goto_5d
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Profile Manager"

    move-object/from16 v0, v103

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    :goto_5e
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    :goto_5f
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    :goto_60
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    :goto_61
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "starting RotationSwitchObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    :goto_62
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    :goto_63
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v103

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v103

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_35

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    :goto_64
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    :goto_65
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    :goto_66
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    :goto_67
    const-string v7, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    :goto_68
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Gesture Sensor Service"

    move-object/from16 v0, v103

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3f

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "starting IdleMaintenanceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    :goto_69
    const-string v7, "starting Print Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_37
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    :goto_6a
    const-string v7, "starting Theme Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_38
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    :goto_6b
    const-string v7, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_39
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    :goto_6c
    const-string v7, "SystemServer"

    const-string v9, "Failure starting EdgeGesture service"

    move-object/from16 v0, v103

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_44

    .end local v103           #e:Ljava/lang/Throwable;
    .restart local v48       #safeMode:Z
    :cond_38
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_45

    :catch_3a
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_3b
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_3c
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_3d
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_3e
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .end local v103           #e:Ljava/lang/Throwable;
    .restart local v79       #config:Landroid/content/res/Configuration;
    .restart local v126       #metrics:Landroid/util/DisplayMetrics;
    .restart local v173       #w:Landroid/view/WindowManager;
    :catch_3f
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_40
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4c

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_41
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_42
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "making Gesture Sensor Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4e

    .end local v103           #e:Ljava/lang/Throwable;
    :catch_43
    move-exception v103

    .restart local v103       #e:Ljava/lang/Throwable;
    const-string v7, "making EdgeGesture service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v48           #safeMode:Z
    .end local v69           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v71           #atlas:Lcom/android/server/AssetAtlasService;
    .end local v79           #config:Landroid/content/res/Configuration;
    .end local v85           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v88           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v101           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v103           #e:Ljava/lang/Throwable;
    .end local v104           #edgeGestureService:Lcom/android/server/gesture/EdgeGestureService;
    .end local v111           #gestureService:Lcom/android/server/gesture/GestureService;
    .end local v113           #hasRotationLock:Z
    .end local v114           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v120           #location:Lcom/android/server/LocationManagerService;
    .end local v122           #lockSettings:Lcom/android/server/LockSettingsService;
    .end local v124           #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .end local v126           #metrics:Landroid/util/DisplayMetrics;
    .end local v135           #notification:Lcom/android/server/NotificationManagerService;
    .end local v139           #printManager:Lcom/android/server/print/PrintManagerService;
    .end local v141           #profile:Lcom/android/server/ProfileManagerService;
    .end local v157           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v159           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v161           #themeService:Lcom/android/server/ThemeService;
    .end local v163           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v173           #w:Landroid/view/WindowManager;
    .end local v174           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v68       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v73       #battery:Lcom/android/server/BatteryService;
    .restart local v87       #cryptState:Ljava/lang/String;
    .restart local v116       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v119       #lights:Lcom/android/server/LightsService;
    .restart local v131       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v143       #qcCon:Ljava/lang/Object;
    .restart local v160       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_44
    move-exception v7

    goto/16 :goto_6

    .end local v68           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v73           #battery:Lcom/android/server/BatteryService;
    .end local v87           #cryptState:Ljava/lang/String;
    .end local v116           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v119           #lights:Lcom/android/server/LightsService;
    .end local v131           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v143           #qcCon:Ljava/lang/Object;
    .end local v160           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v69       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v71       #atlas:Lcom/android/server/AssetAtlasService;
    .restart local v85       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v88       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v101       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v105       #edgeGestureService:Lcom/android/server/gesture/EdgeGestureService;
    .restart local v111       #gestureService:Lcom/android/server/gesture/GestureService;
    .restart local v113       #hasRotationLock:Z
    .restart local v114       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v120       #location:Lcom/android/server/LocationManagerService;
    .restart local v122       #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v124       #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .restart local v135       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v139       #printManager:Lcom/android/server/print/PrintManagerService;
    .restart local v141       #profile:Lcom/android/server/ProfileManagerService;
    .restart local v157       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v159       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v161       #themeService:Lcom/android/server/ThemeService;
    .restart local v163       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v174       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_45
    move-exception v103

    move-object/from16 v104, v105

    .end local v105           #edgeGestureService:Lcom/android/server/gesture/EdgeGestureService;
    .restart local v104       #edgeGestureService:Lcom/android/server/gesture/EdgeGestureService;
    goto/16 :goto_6c

    .end local v124           #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .restart local v125       #mediaRouter:Lcom/android/server/media/MediaRouterService;
    :catch_46
    move-exception v103

    move-object/from16 v124, v125

    .end local v125           #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .restart local v124       #mediaRouter:Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_6b

    .end local v161           #themeService:Lcom/android/server/ThemeService;
    .restart local v162       #themeService:Lcom/android/server/ThemeService;
    :catch_47
    move-exception v103

    move-object/from16 v161, v162

    .end local v162           #themeService:Lcom/android/server/ThemeService;
    .restart local v161       #themeService:Lcom/android/server/ThemeService;
    goto/16 :goto_6a

    .end local v139           #printManager:Lcom/android/server/print/PrintManagerService;
    .restart local v140       #printManager:Lcom/android/server/print/PrintManagerService;
    :catch_48
    move-exception v103

    move-object/from16 v139, v140

    .end local v140           #printManager:Lcom/android/server/print/PrintManagerService;
    .restart local v139       #printManager:Lcom/android/server/print/PrintManagerService;
    goto/16 :goto_69

    .end local v111           #gestureService:Lcom/android/server/gesture/GestureService;
    .restart local v112       #gestureService:Lcom/android/server/gesture/GestureService;
    :catch_49
    move-exception v103

    move-object/from16 v111, v112

    .end local v112           #gestureService:Lcom/android/server/gesture/GestureService;
    .restart local v111       #gestureService:Lcom/android/server/gesture/GestureService;
    goto/16 :goto_68

    .end local v71           #atlas:Lcom/android/server/AssetAtlasService;
    .restart local v72       #atlas:Lcom/android/server/AssetAtlasService;
    :catch_4a
    move-exception v103

    move-object/from16 v71, v72

    .end local v72           #atlas:Lcom/android/server/AssetAtlasService;
    .restart local v71       #atlas:Lcom/android/server/AssetAtlasService;
    goto/16 :goto_67

    .end local v101           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v102       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :catch_4b
    move-exception v103

    move-object/from16 v101, v102

    .end local v102           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v101       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_66

    .end local v77           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v78       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_4c
    move-exception v103

    move-object/from16 v77, v78

    .end local v78           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v77       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_65

    .end local v69           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v70       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_4d
    move-exception v103

    move-object/from16 v69, v70

    .end local v70           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v69       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_64

    .end local v153           #serial:Lcom/android/server/SerialService;
    .restart local v154       #serial:Lcom/android/server/SerialService;
    :catch_4e
    move-exception v103

    move-object/from16 v153, v154

    .end local v154           #serial:Lcom/android/server/SerialService;
    .restart local v153       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_63

    .end local v169           #usb:Lcom/android/server/usb/UsbService;
    .restart local v170       #usb:Lcom/android/server/usb/UsbService;
    :catch_4f
    move-exception v103

    move-object/from16 v169, v170

    .end local v170           #usb:Lcom/android/server/usb/UsbService;
    .restart local v169       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_62

    .end local v174           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v175       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_50
    move-exception v103

    move-object/from16 v174, v175

    .end local v175           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v174       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_61

    .end local v85           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v86       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_51
    move-exception v103

    move-object/from16 v85, v86

    .end local v86           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v85       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_60

    .end local v120           #location:Lcom/android/server/LocationManagerService;
    .restart local v121       #location:Lcom/android/server/LocationManagerService;
    :catch_52
    move-exception v103

    move-object/from16 v120, v121

    .end local v121           #location:Lcom/android/server/LocationManagerService;
    .restart local v120       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_5f

    .end local v135           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v136       #notification:Lcom/android/server/NotificationManagerService;
    :catch_53
    move-exception v103

    move-object/from16 v135, v136

    .end local v136           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v135       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_5e

    .end local v141           #profile:Lcom/android/server/ProfileManagerService;
    .restart local v142       #profile:Lcom/android/server/ProfileManagerService;
    :catch_54
    move-exception v103

    move-object/from16 v141, v142

    .end local v142           #profile:Lcom/android/server/ProfileManagerService;
    .restart local v141       #profile:Lcom/android/server/ProfileManagerService;
    goto/16 :goto_5d

    .end local v176           #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v143       #qcCon:Ljava/lang/Object;
    .restart local v177       #wifi:Lcom/android/server/wifi/WifiService;
    :catch_55
    move-exception v103

    move-object/from16 v176, v177

    .end local v177           #wifi:Lcom/android/server/wifi/WifiService;
    .restart local v176       #wifi:Lcom/android/server/wifi/WifiService;
    goto/16 :goto_5c

    .end local v178           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v179       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_56
    move-exception v103

    move-object/from16 v178, v179

    .end local v179           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v178       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_5b

    :catch_57
    move-exception v103

    goto/16 :goto_5a

    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v131       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v132       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_58
    move-exception v103

    move-object/from16 v29, v132

    .end local v132           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_59

    .end local v163           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v164       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_59
    move-exception v103

    move-object/from16 v163, v164

    .end local v164           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v163       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_58

    .end local v157           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v158       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_5a
    move-exception v103

    move-object/from16 v157, v158

    .end local v158           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v157       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_57

    .end local v88           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v89       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_5b
    move-exception v103

    move-object/from16 v88, v89

    .end local v89           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v88       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_56

    .end local v122           #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v123       #lockSettings:Lcom/android/server/LockSettingsService;
    :catch_5c
    move-exception v103

    move-object/from16 v122, v123

    .end local v123           #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v122       #lockSettings:Lcom/android/server/LockSettingsService;
    goto/16 :goto_55

    .end local v127           #mountService:Lcom/android/server/MountService;
    .restart local v128       #mountService:Lcom/android/server/MountService;
    :catch_5d
    move-exception v103

    move-object/from16 v127, v128

    .end local v128           #mountService:Lcom/android/server/MountService;
    .restart local v127       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_54

    :catch_5e
    move-exception v7

    goto/16 :goto_11

    .end local v114           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v115       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_5f
    move-exception v103

    move-object/from16 v114, v115

    .end local v115           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v114       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_53

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v11           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v69           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v71           #atlas:Lcom/android/server/AssetAtlasService;
    .end local v85           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v88           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v101           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v104           #edgeGestureService:Lcom/android/server/gesture/EdgeGestureService;
    .end local v111           #gestureService:Lcom/android/server/gesture/GestureService;
    .end local v113           #hasRotationLock:Z
    .end local v114           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v120           #location:Lcom/android/server/LocationManagerService;
    .end local v122           #lockSettings:Lcom/android/server/LockSettingsService;
    .end local v124           #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .end local v135           #notification:Lcom/android/server/NotificationManagerService;
    .end local v139           #printManager:Lcom/android/server/print/PrintManagerService;
    .end local v141           #profile:Lcom/android/server/ProfileManagerService;
    .end local v157           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v161           #themeService:Lcom/android/server/ThemeService;
    .end local v163           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v174           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v68       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v73       #battery:Lcom/android/server/BatteryService;
    .restart local v98       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v116       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v119       #lights:Lcom/android/server/LightsService;
    :catch_60
    move-exception v103

    move-object/from16 v20, v116

    .end local v116           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v68

    .end local v68           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v73

    .end local v73           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v11, v98

    .end local v98           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v11       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v119

    .end local v119           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_52

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v68       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v73       #battery:Lcom/android/server/BatteryService;
    .restart local v116       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v119       #lights:Lcom/android/server/LightsService;
    :catch_61
    move-exception v103

    move-object/from16 v20, v116

    .end local v116           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v68

    .end local v68           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v73

    .end local v73           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v119

    .end local v119           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_52

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v129           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .end local v159           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v68       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v73       #battery:Lcom/android/server/BatteryService;
    .restart local v116       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v119       #lights:Lcom/android/server/LightsService;
    .restart local v130       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v160       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_62
    move-exception v103

    move-object/from16 v129, v130

    .end local v130           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v129       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v159, v160

    .end local v160           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v159       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v116

    .end local v116           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v68

    .end local v68           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v73

    .end local v73           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v119

    .end local v119           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_52

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v66           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .end local v159           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v67       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v68       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v73       #battery:Lcom/android/server/BatteryService;
    .restart local v87       #cryptState:Ljava/lang/String;
    .restart local v116       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v119       #lights:Lcom/android/server/LightsService;
    .restart local v160       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_63
    move-exception v103

    move-object/from16 v159, v160

    .end local v160           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v159       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v116

    .end local v116           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v68

    .end local v68           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v73

    .end local v73           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v119

    .end local v119           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v66, v67

    .end local v67           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v66       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_52

    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v159           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v68       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v73       #battery:Lcom/android/server/BatteryService;
    .restart local v116       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v160       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_64
    move-exception v103

    move-object/from16 v159, v160

    .end local v160           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v159       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v116

    .end local v116           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v68

    .end local v68           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v73

    .end local v73           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    goto/16 :goto_52

    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v159           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v68       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v116       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v160       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_65
    move-exception v103

    move-object/from16 v159, v160

    .end local v160           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v159       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v116

    .end local v116           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v68

    .end local v68           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    goto/16 :goto_52

    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v159           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v171           #vibrator:Lcom/android/server/VibratorService;
    .restart local v68       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v116       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v160       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v172       #vibrator:Lcom/android/server/VibratorService;
    :catch_66
    move-exception v103

    move-object/from16 v159, v160

    .end local v160           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v159       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v116

    .end local v116           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v68

    .end local v68           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v171, v172

    .end local v172           #vibrator:Lcom/android/server/VibratorService;
    .restart local v171       #vibrator:Lcom/android/server/VibratorService;
    goto/16 :goto_52

    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v82           #consumerIr:Lcom/android/server/ConsumerIrService;
    .end local v159           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v171           #vibrator:Lcom/android/server/VibratorService;
    .restart local v68       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v83       #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v116       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v160       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v172       #vibrator:Lcom/android/server/VibratorService;
    :catch_67
    move-exception v103

    move-object/from16 v82, v83

    .end local v83           #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v82       #consumerIr:Lcom/android/server/ConsumerIrService;
    move-object/from16 v159, v160

    .end local v160           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v159       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v116

    .end local v116           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v68

    .end local v68           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v171, v172

    .end local v172           #vibrator:Lcom/android/server/VibratorService;
    .restart local v171       #vibrator:Lcom/android/server/VibratorService;
    goto/16 :goto_52

    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v82           #consumerIr:Lcom/android/server/ConsumerIrService;
    .end local v159           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v171           #vibrator:Lcom/android/server/VibratorService;
    .restart local v83       #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v116       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v160       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v172       #vibrator:Lcom/android/server/VibratorService;
    :catch_68
    move-exception v103

    move-object/from16 v82, v83

    .end local v83           #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v82       #consumerIr:Lcom/android/server/ConsumerIrService;
    move-object/from16 v159, v160

    .end local v160           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v159       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v116

    .end local v116           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v171, v172

    .end local v172           #vibrator:Lcom/android/server/VibratorService;
    .restart local v171       #vibrator:Lcom/android/server/VibratorService;
    goto/16 :goto_52

    .end local v74           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v82           #consumerIr:Lcom/android/server/ConsumerIrService;
    .end local v159           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v171           #vibrator:Lcom/android/server/VibratorService;
    .restart local v75       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v83       #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v160       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v172       #vibrator:Lcom/android/server/VibratorService;
    :catch_69
    move-exception v103

    move-object/from16 v82, v83

    .end local v83           #consumerIr:Lcom/android/server/ConsumerIrService;
    .restart local v82       #consumerIr:Lcom/android/server/ConsumerIrService;
    move-object/from16 v159, v160

    .end local v160           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v159       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v74, v75

    .end local v75           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v74       #bluetooth:Lcom/android/server/BluetoothManagerService;
    move-object/from16 v171, v172

    .end local v172           #vibrator:Lcom/android/server/VibratorService;
    .restart local v171       #vibrator:Lcom/android/server/VibratorService;
    goto/16 :goto_52

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v20           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v66           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .end local v159           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v67       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v68       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v73       #battery:Lcom/android/server/BatteryService;
    .restart local v116       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v119       #lights:Lcom/android/server/LightsService;
    .restart local v160       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_6a
    move-exception v103

    move-object/from16 v66, v67

    .end local v67           #accountManager:Lcom/android/server/accounts/AccountManagerService;
    .restart local v66       #accountManager:Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_51

    .end local v11           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v87           #cryptState:Ljava/lang/String;
    .end local v90           #disableBluetooth:Z
    .end local v91           #disableLocation:Z
    .end local v92           #disableMedia:Z
    .end local v93           #disableNetwork:Z
    .end local v94           #disableNonCoreServices:Z
    .end local v95           #disableStorage:Z
    .end local v96           #disableSystemUI:Z
    .end local v97           #disableTelephony:Z
    .end local v117           #installer:Lcom/android/server/pm/Installer;
    .end local v160           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v98       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v118       #installer:Lcom/android/server/pm/Installer;
    .restart local v159       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_6b
    move-exception v103

    move-object/from16 v117, v118

    .end local v118           #installer:Lcom/android/server/pm/Installer;
    .restart local v117       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_50

    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v117           #installer:Lcom/android/server/pm/Installer;
    .restart local v118       #installer:Lcom/android/server/pm/Installer;
    .restart local v138       #power:Lcom/android/server/power/PowerManagerService;
    :catch_6c
    move-exception v103

    move-object/from16 v4, v138

    .end local v138           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v117, v118

    .end local v118           #installer:Lcom/android/server/pm/Installer;
    .restart local v117       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_50

    .end local v68           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v73           #battery:Lcom/android/server/BatteryService;
    .end local v98           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v116           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v119           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v11       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v20       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v69       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v71       #atlas:Lcom/android/server/AssetAtlasService;
    .restart local v85       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v88       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v90       #disableBluetooth:Z
    .restart local v91       #disableLocation:Z
    .restart local v92       #disableMedia:Z
    .restart local v93       #disableNetwork:Z
    .restart local v94       #disableNonCoreServices:Z
    .restart local v95       #disableStorage:Z
    .restart local v96       #disableSystemUI:Z
    .restart local v97       #disableTelephony:Z
    .restart local v101       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v104       #edgeGestureService:Lcom/android/server/gesture/EdgeGestureService;
    .restart local v111       #gestureService:Lcom/android/server/gesture/GestureService;
    .restart local v113       #hasRotationLock:Z
    .restart local v114       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v120       #location:Lcom/android/server/LocationManagerService;
    .restart local v122       #lockSettings:Lcom/android/server/LockSettingsService;
    .restart local v124       #mediaRouter:Lcom/android/server/media/MediaRouterService;
    .restart local v135       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v139       #printManager:Lcom/android/server/print/PrintManagerService;
    .restart local v141       #profile:Lcom/android/server/ProfileManagerService;
    .restart local v157       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v161       #themeService:Lcom/android/server/ThemeService;
    .restart local v163       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v174       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_39
    move-object/from16 v25, v131

    .end local v131           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_21

    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v131       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_3a
    move-object/from16 v25, v131

    .end local v131           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_44
.end method

.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
