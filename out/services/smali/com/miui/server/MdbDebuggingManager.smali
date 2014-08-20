.class Lcom/miui/server/MdbDebuggingManager;
.super Lcom/miui/server/UsbManagerConnect;
.source "MdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/MdbDebuggingManager$1;,
        Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;,
        Lcom/miui/server/MdbDebuggingManager$Parameter;,
        Lcom/miui/server/MdbDebuggingManager$MdbReceiver;,
        Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;
    }
.end annotation


# static fields
.field private static final APP_MSG_TAG:Ljava/lang/String; = "mdb_rpc_debug"

.field private static final CHECK_KEY_PREFIX:I = 0x2

.field private static final CHECK_KEY_SUBSTRING:I = 0x1

.field private static final CHECK_KEY_SUFFIX:I = 0x0

.field private static final MESSAGE_SHARENET_APP_MSG_DATA_ITEM_LEN:I = 0x4

.field private static final MESSAGE_SHARENET_APP_MSG_DATA_ITEM_TYPE_BOOL:I = 0x1

.field private static final MESSAGE_SHARENET_APP_MSG_DATA_ITEM_TYPE_CALLBACK:I = 0x4

.field private static final MESSAGE_SHARENET_APP_MSG_DATA_ITEM_TYPE_INT:I = 0x2

.field private static final MESSAGE_SHARENET_APP_MSG_DATA_ITEM_TYPE_LEN:I = 0x1

.field private static final MESSAGE_SHARENET_APP_MSG_DATA_ITEM_TYPE_STRING:I = 0x3

.field private static final MESSAGE_SHARENET_APP_MSG_HEAD_LEN:I = 0x10

.field private static final MESSAGE_SHARENET_RSPONSE_TARGET_APP:I = 0x2

.field private static final MESSAGE_SHARENET_RSPONSE_TARGET_FRAMEWORK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "mdb_debug"

.field private static final mAppMsgMagicBytes:[B

.field private static sTotalInternalMemory:J


# instance fields
.field private final INTERNAL_SDCARD_MOUNTPOINT_DATA:Ljava/lang/String;

.field private final INTERNAL_SDCARD_MOUNTPOINT_STORAGE:Ljava/lang/String;

.field private final INTERNAL_SDCARD_PATH_PROP:Ljava/lang/String;

.field private final MDBD_SOCKET:Ljava/lang/String;

.field private final USB_NET_CARD:Ljava/lang/String;

.field private final mAppMsgHandler:Landroid/os/Handler;

.field private final mAppMsgHandlerThread:Landroid/os/HandlerThread;

.field private mBootCompleted:Z

.field private mContext:Landroid/content/Context;

.field private mDns1:Ljava/lang/String;

.field private mDns2:Ljava/lang/String;

.field private mGwAddr:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mHostAddr:Ljava/lang/String;

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mPrefixLength:I

.field mWmManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 922
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/server/MdbDebuggingManager;->mAppMsgMagicBytes:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0xb9t
        0xb1t
        0xe1t
        0xc3t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 98
    invoke-direct {p0}, Lcom/miui/server/UsbManagerConnect;-><init>()V

    .line 83
    const-string v2, "mdbd"

    iput-object v2, p0, Lcom/miui/server/MdbDebuggingManager;->MDBD_SOCKET:Ljava/lang/String;

    .line 91
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/server/MdbDebuggingManager;->mBootCompleted:Z

    .line 629
    const-string v2, "/storage_int"

    iput-object v2, p0, Lcom/miui/server/MdbDebuggingManager;->INTERNAL_SDCARD_MOUNTPOINT_STORAGE:Ljava/lang/String;

    .line 630
    const-string v2, "/data/media"

    iput-object v2, p0, Lcom/miui/server/MdbDebuggingManager;->INTERNAL_SDCARD_MOUNTPOINT_DATA:Ljava/lang/String;

    .line 631
    const-string v2, "ro.miui.internal.storage"

    iput-object v2, p0, Lcom/miui/server/MdbDebuggingManager;->INTERNAL_SDCARD_PATH_PROP:Ljava/lang/String;

    .line 685
    const-string v2, "usbnet0"

    iput-object v2, p0, Lcom/miui/server/MdbDebuggingManager;->USB_NET_CARD:Ljava/lang/String;

    .line 686
    iput-object v4, p0, Lcom/miui/server/MdbDebuggingManager;->mGwAddr:Ljava/lang/String;

    .line 687
    iput-object v4, p0, Lcom/miui/server/MdbDebuggingManager;->mHostAddr:Ljava/lang/String;

    .line 688
    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/server/MdbDebuggingManager;->mPrefixLength:I

    .line 689
    iput-object v4, p0, Lcom/miui/server/MdbDebuggingManager;->mDns1:Ljava/lang/String;

    .line 690
    iput-object v4, p0, Lcom/miui/server/MdbDebuggingManager;->mDns2:Ljava/lang/String;

    .line 99
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "MdbDebuggingManager"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/server/MdbDebuggingManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 100
    iget-object v2, p0, Lcom/miui/server/MdbDebuggingManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 101
    new-instance v2, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;

    iget-object v3, p0, Lcom/miui/server/MdbDebuggingManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;-><init>(Lcom/miui/server/MdbDebuggingManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/miui/server/MdbDebuggingManager;->mHandler:Landroid/os/Handler;

    .line 102
    iput-object p1, p0, Lcom/miui/server/MdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 103
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "MdbAppMsgProThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/server/MdbDebuggingManager;->mAppMsgHandlerThread:Landroid/os/HandlerThread;

    .line 104
    iget-object v2, p0, Lcom/miui/server/MdbDebuggingManager;->mAppMsgHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 105
    new-instance v2, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;

    iget-object v3, p0, Lcom/miui/server/MdbDebuggingManager;->mAppMsgHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;-><init>(Lcom/miui/server/MdbDebuggingManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/miui/server/MdbDebuggingManager;->mAppMsgHandler:Landroid/os/Handler;

    .line 107
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 108
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/server/MdbDebuggingManager;->mNwService:Landroid/os/INetworkManagementService;

    .line 110
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v2, "miui.usb.action.USB_SHARENET_CONTROL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/miui/server/MdbDebuggingManager;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/miui/server/MdbDebuggingManager$MdbReceiver;

    invoke-direct {v3, p0, v4}, Lcom/miui/server/MdbDebuggingManager$MdbReceiver;-><init>(Lcom/miui/server/MdbDebuggingManager;Lcom/miui/server/MdbDebuggingManager$1;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    iget-object v2, p0, Lcom/miui/server/MdbDebuggingManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/miui/server/MdbDebuggingManager;->mWmManager:Landroid/view/WindowManager;

    .line 117
    return-void
.end method

.method static synthetic access$100(Lcom/miui/server/MdbDebuggingManager;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/miui/server/MdbDebuggingManager;->showConfirmationUI()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/server/MdbDebuggingManager;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/miui/server/MdbDebuggingManager;->showOtaRebootUI()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/server/MdbDebuggingManager;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/miui/server/MdbDebuggingManager;->getSdCardPath()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/server/MdbDebuggingManager;Ljava/lang/String;)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/miui/server/MdbDebuggingManager;->setUsbNetState(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/server/MdbDebuggingManager;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p5}, Lcom/miui/server/MdbDebuggingManager;->setUsbNetConfig(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/server/MdbDebuggingManager;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/miui/server/MdbDebuggingManager;->getWirelessDiscoveryInfo()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/server/MdbDebuggingManager;Landroid/net/NetworkInfo$State;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p6}, Lcom/miui/server/MdbDebuggingManager;->notifyConnectState(Landroid/net/NetworkInfo$State;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/server/MdbDebuggingManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/miui/server/MdbDebuggingManager;->restoreOtherConnectState()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/server/MdbDebuggingManager;Landroid/net/NetworkInfo$State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/miui/server/MdbDebuggingManager;->updateShareNetNotificationBar(Landroid/net/NetworkInfo$State;)V

    return-void
.end method

.method static synthetic access$1802(Lcom/miui/server/MdbDebuggingManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/miui/server/MdbDebuggingManager;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/miui/server/MdbDebuggingManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/miui/server/MdbDebuggingManager;->getDisplayRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/server/MdbDebuggingManager;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/miui/server/MdbDebuggingManager;->getAllAppInfos()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000([B)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-static {p0}, Lcom/miui/server/MdbDebuggingManager;->byteArrayToInt([B)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/miui/server/MdbDebuggingManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/server/MdbDebuggingManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(I)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-static {p0}, Lcom/miui/server/MdbDebuggingManager;->intToByteArray(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300()[B
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/miui/server/MdbDebuggingManager;->mAppMsgMagicBytes:[B

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/server/MdbDebuggingManager;Ljava/lang/String;)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/miui/server/MdbDebuggingManager;->getAuthToken(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/server/MdbDebuggingManager;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/miui/server/MdbDebuggingManager;->checkAccount()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/server/MdbDebuggingManager;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/miui/server/MdbDebuggingManager;->showLoginUI()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/server/MdbDebuggingManager;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/miui/server/MdbDebuggingManager;->getDevInfo()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/server/MdbDebuggingManager;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/miui/server/MdbDebuggingManager;->getPhoneNum()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/server/MdbDebuggingManager;Ljava/lang/String;)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/miui/server/MdbDebuggingManager;->getAppSignInfo(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/server/MdbDebuggingManager;Ljava/lang/String;II)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/server/MdbDebuggingManager;->getAppIcon(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method private static byteArrayToInt([B)I
    .locals 4
    .parameter "bytes"

    .prologue
    .line 952
    const/4 v2, 0x0

    .line 953
    .local v2, value:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 954
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    mul-int/lit8 v1, v3, 0x8

    .line 955
    .local v1, shift:I
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 953
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 957
    .end local v1           #shift:I
    :cond_0
    return v2
.end method

.method private checkAccount()[B
    .locals 2

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/miui/server/MdbDebuggingManager;->isXiaoMiAccountActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    new-instance v0, Ljava/lang/String;

    const-string v1, "YES"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 319
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "NO"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method private disableOtherConnect()V
    .locals 4

    .prologue
    .line 823
    iget-object v2, p0, Lcom/miui/server/MdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 824
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/miui/server/MdbDebuggingManager;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 826
    .local v1, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 827
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 828
    const-string v2, "wifi_saved_state"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 830
    :cond_0
    return-void
.end method

.method private getAllAppInfos()[B
    .locals 9

    .prologue
    .line 550
    const/4 v6, 0x0

    .line 551
    .local v6, responseMsg:[B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    .local v0, appInfo:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/miui/server/MdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 554
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 556
    .local v3, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 557
    .local v5, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_0

    .line 558
    const-string v7, "package_name:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    const-string v7, "display_name:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 564
    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    const-string v7, "version_code:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    iget v7, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 568
    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    const-string v7, "version_name:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    const-string v7, "install_time:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    iget-wide v7, v5, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 576
    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 581
    .end local v5           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/miui/server/MdbDebuggingManager;->getLargeMsg([B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 586
    :goto_1
    return-object v6

    .line 582
    :catch_0
    move-exception v1

    .line 583
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v7, "getAllAppInfos"

    const-string v8, "UnsupportedEncodingException"

    invoke-virtual {p0, v7, v8}, Lcom/miui/server/MdbDebuggingManager;->getErrMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 584
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method private getAppIcon(Ljava/lang/String;II)[B
    .locals 9
    .parameter "pkgName"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 605
    const/4 v4, 0x0

    .line 606
    .local v4, responseMsg:[B
    iget-object v6, p0, Lcom/miui/server/MdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 609
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 610
    .local v0, appIcon:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #appIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 611
    .local v1, bmp:Landroid/graphics/Bitmap;
    const/4 v6, 0x1

    invoke-static {v1, p2, p3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 612
    .local v5, scaledbmp:Landroid/graphics/Bitmap;
    iget-object v6, v5, Landroid/graphics/Bitmap;->mBuffer:[B

    invoke-virtual {p0, v6}, Lcom/miui/server/MdbDebuggingManager;->getLargeMsg([B)[B
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 617
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    .end local v5           #scaledbmp:Landroid/graphics/Bitmap;
    :goto_0
    return-object v4

    .line 613
    :catch_0
    move-exception v2

    .line 614
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "getAppIcon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NameNotFoundException, pktName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/miui/server/MdbDebuggingManager;->getErrMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 615
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getAppPubKey([Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 7
    .parameter "signs"

    .prologue
    .line 531
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    .local v4, pubKeys:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    :try_start_0
    array-length v5, p1

    if-ge v3, v5, :cond_1

    .line 534
    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 536
    .local v1, certFactory:Ljava/security/cert/CertificateFactory;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    aget-object v6, p1, v3

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 538
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    if-lez v3, :cond_0

    .line 540
    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 543
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    .end local v1           #certFactory:Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v2

    .line 544
    .local v2, e:Ljava/security/cert/CertificateException;
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 546
    .end local v2           #e:Ljava/security/cert/CertificateException;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getAppSignInfo(Ljava/lang/String;)[B
    .locals 7
    .parameter "pkgName"

    .prologue
    .line 590
    const/4 v3, 0x0

    .line 591
    .local v3, responseMsg:[B
    iget-object v4, p0, Lcom/miui/server/MdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 594
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    const/16 v4, 0x40

    :try_start_0
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 596
    .local v2, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v4}, Lcom/miui/server/MdbDebuggingManager;->getAppPubKey([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 601
    .end local v2           #pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "getAppSignInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NameNotFoundException, pktName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/miui/server/MdbDebuggingManager;->getErrMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 599
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getAuthToken(Ljava/lang/String;)[B
    .locals 11
    .parameter "tokenType"

    .prologue
    .line 344
    iget-object v1, p0, Lcom/miui/server/MdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 348
    .local v0, am:Landroid/accounts/AccountManager;
    invoke-direct {p0}, Lcom/miui/server/MdbDebuggingManager;->isXiaoMiAccountActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    const-string v1, "getAuthToken"

    const-string v2, "Need Login account"

    invoke-virtual {p0, v1, v2}, Lcom/miui/server/MdbDebuggingManager;->getErrMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 385
    :goto_0
    return-object v1

    .line 353
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/MdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v9

    .line 356
    .local v9, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 357
    :cond_1
    const-string v1, "mdb_debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get auth token fail, token type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v1, "getAuthToken"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tokenType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/miui/server/MdbDebuggingManager;->getErrMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0

    .line 361
    :cond_2
    invoke-interface {v9}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "authtoken"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    .line 374
    .local v8, extTokenStr:Ljava/lang/String;
    if-nez v8, :cond_3

    .line 375
    const-string v1, "mdb_debug"

    const-string v2, "generate token str failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v1, "getAuthToken"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get token failed, tokenType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/miui/server/MdbDebuggingManager;->getErrMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0

    .line 363
    .end local v8           #extTokenStr:Ljava/lang/String;
    .end local v9           #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :catch_0
    move-exception v7

    .line 364
    .local v7, e:Landroid/accounts/OperationCanceledException;
    invoke-virtual {v7}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    .line 365
    const-string v1, "getAuthToken"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OperationCanceledException, tokenType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/miui/server/MdbDebuggingManager;->getErrMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto/16 :goto_0

    .line 366
    .end local v7           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v7

    .line 367
    .local v7, e:Landroid/accounts/AuthenticatorException;
    invoke-virtual {v7}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    .line 368
    const-string v1, "getAuthToken"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AuthenticatorException, tokenType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/miui/server/MdbDebuggingManager;->getErrMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto/16 :goto_0

    .line 369
    .end local v7           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v7

    .line 370
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 371
    const-string v1, "getAuthToken"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException, tokenType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/miui/server/MdbDebuggingManager;->getErrMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto/16 :goto_0

    .line 379
    .end local v7           #e:Ljava/io/IOException;
    .restart local v8       #extTokenStr:Ljava/lang/String;
    .restart local v9       #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :cond_3
    invoke-static {v8}, Lmiui/net/ExtendedAuthToken;->parse(Ljava/lang/String;)Lmiui/net/ExtendedAuthToken;

    move-result-object v10

    .line 380
    .local v10, token:Lmiui/net/ExtendedAuthToken;
    if-nez v10, :cond_4

    .line 381
    const-string v1, "mdb_debug"

    const-string v2, "parse ext token failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v1, "getAuthToken"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse token failed, tokenType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/miui/server/MdbDebuggingManager;->getErrMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto/16 :goto_0

    .line 385
    :cond_4
    iget-object v1, v10, Lmiui/net/ExtendedAuthToken;->authToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto/16 :goto_0
.end method

.method private getDevInfo()[B
    .locals 6

    .prologue
    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .local v0, devInfo:Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/miui/server/MdbDebuggingManager;->getTotalInternalMemory()J

    move-result-wide v3

    .line 442
    .local v3, totalInternalMemroy:J
    const-string v5, "total_memory:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget-object v5, p0, Lcom/miui/server/MdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v3, v4}, Lmiui/text/util/MiuiFormatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    const-string v5, "device_model:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-static {}, Lmiui/os/Build;->getModelNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const-string v5, "is_xiaomi:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    sget-boolean v5, Lmiui/os/Build;->IS_XIAOMI:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 452
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    iget-object v5, p0, Lcom/miui/server/MdbDebuggingManager;->mWmManager:Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 455
    .local v1, display:Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 456
    .local v2, point:Landroid/graphics/Point;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 457
    const-string v5, "screen_width:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    iget v5, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 459
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const-string v5, "screen_height:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const-string v5, "rotation:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-direct {p0}, Lcom/miui/server/MdbDebuggingManager;->getDisplayRotation()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 465
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    return-object v5
.end method

.method private getDisplayRotation()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 843
    iget-object v2, p0, Lcom/miui/server/MdbDebuggingManager;->mWmManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 845
    .local v0, rotation:I
    packed-switch v0, :pswitch_data_0

    .line 851
    :goto_0
    :pswitch_0
    return v1

    .line 847
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 848
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 849
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 845
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getMessage(II)Landroid/os/Message;
    .locals 3
    .parameter "cmd"
    .parameter "msgId"

    .prologue
    .line 1281
    iget-object v1, p0, Lcom/miui/server/MdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1282
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msgId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1283
    return-object v0
.end method

.method private getMiCloudPhoneNum()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 472
    const/4 v3, 0x0

    .line 473
    .local v3, phoneNum:Ljava/lang/String;
    const/4 v1, 0x0

    .line 475
    .local v1, c:Lmiui/net/CloudManager$CloudManagerFuture;,"Lmiui/net/CloudManager$CloudManagerFuture<Landroid/os/Bundle;>;"
    invoke-direct {p0}, Lcom/miui/server/MdbDebuggingManager;->isXiaoMiAccountActive()Z

    move-result v5

    if-nez v5, :cond_0

    .line 476
    const-string v5, "mdb_debug"

    const-string v6, "getMiCloudPhoneNum: Xiao Mi account is not actived."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :goto_0
    return-object v4

    .line 481
    :cond_0
    iget-object v5, p0, Lcom/miui/server/MdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lmiui/net/CloudManager;->get(Landroid/content/Context;)Lmiui/net/CloudManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lmiui/net/CloudManager;->getActivateInfo(I)Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v1

    .line 482
    if-nez v1, :cond_1

    .line 483
    const-string v5, "mdb_debug"

    const-string v6, "getMiCloudPhoneNum: Null CloudManagerFuture."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 488
    :cond_1
    const-wide/16 v5, 0x3

    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v5, v6, v7}, Lmiui/net/CloudManager$CloudManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 489
    .local v0, b:Landroid/os/Bundle;
    if-nez v0, :cond_3

    .line 490
    const-string v5, "mdb_debug"

    const-string v6, "getMiCloudPhoneNum: Null CloudManagerFuture bundle."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmiui/net/exception/OperationCancelledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmiui/net/exception/CloudServiceFailureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lmiui/net/exception/NoActivateAccountException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 499
    .end local v0           #b:Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 500
    .local v2, e:Ljava/io/IOException;
    const-string v4, "mdb_debug"

    const-string v5, "getMiCloudPhoneNum: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2           #e:Ljava/io/IOException;
    :cond_2
    :goto_1
    move-object v4, v3

    .line 509
    goto :goto_0

    .line 494
    .restart local v0       #b:Landroid/os/Bundle;
    :cond_3
    :try_start_1
    const-string v5, "activate_phone"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 495
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 496
    const-string v5, "mdb_debug"

    const-string v6, "getMiCloudPhoneNum: Null or empty number."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lmiui/net/exception/OperationCancelledException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lmiui/net/exception/CloudServiceFailureException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lmiui/net/exception/NoActivateAccountException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 501
    .end local v0           #b:Landroid/os/Bundle;
    :catch_1
    move-exception v2

    .line 502
    .local v2, e:Lmiui/net/exception/OperationCancelledException;
    const-string v4, "mdb_debug"

    const-string v5, "getMiCloudPhoneNum: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 503
    .end local v2           #e:Lmiui/net/exception/OperationCancelledException;
    :catch_2
    move-exception v2

    .line 504
    .local v2, e:Lmiui/net/exception/CloudServiceFailureException;
    const-string v4, "mdb_debug"

    const-string v5, "getMiCloudPhoneNum: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 505
    .end local v2           #e:Lmiui/net/exception/CloudServiceFailureException;
    :catch_3
    move-exception v2

    .line 506
    .local v2, e:Lmiui/net/exception/NoActivateAccountException;
    const-string v4, "mdb_debug"

    const-string v5, "getMiCloudPhoneNum: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getPhoneNum()[B
    .locals 4

    .prologue
    .line 513
    const/4 v0, 0x0

    .line 514
    .local v0, phoneNum:Ljava/lang/String;
    invoke-direct {p0}, Lcom/miui/server/MdbDebuggingManager;->getMiCloudPhoneNum()Ljava/lang/String;

    move-result-object v0

    .line 515
    if-nez v0, :cond_0

    .line 516
    iget-object v2, p0, Lcom/miui/server/MdbDebuggingManager;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 518
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 519
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 523
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 524
    :cond_1
    const-string v2, "getPhoneNum"

    const-string v3, "NO Phone Number"

    invoke-virtual {p0, v2, v3}, Lcom/miui/server/MdbDebuggingManager;->getErrMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 526
    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    goto :goto_0
.end method

.method private getSdCardPath()[B
    .locals 7

    .prologue
    .line 633
    const/4 v3, 0x0

    .line 635
    .local v3, responseMsg:[B
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 636
    const-string v4, "getSdCardPath"

    const-string v5, "NOT MOUNTED"

    invoke-virtual {p0, v4, v5}, Lcom/miui/server/MdbDebuggingManager;->getErrMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 682
    :goto_0
    return-object v4

    .line 639
    :cond_0
    sget-boolean v4, Lmiui/os/Build;->IS_XIAOMI:Z

    if-eqz v4, :cond_5

    .line 651
    const-string v4, "ro.miui.internal.storage"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 652
    .local v1, internalStoragePath:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 654
    :cond_1
    const/4 v2, 0x0

    .line 656
    .local v2, line:Ljava/lang/String;
    :try_start_0
    const-string v4, "/proc/mounts"

    const-string v5, "/storage_int"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/miui/server/MdbDebuggingManager;->readLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 662
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 663
    new-instance v1, Ljava/lang/String;

    .end local v1           #internalStoragePath:Ljava/lang/String;
    const-string v4, "/storage_int"

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 671
    .end local v2           #line:Ljava/lang/String;
    .restart local v1       #internalStoragePath:Ljava/lang/String;
    :cond_2
    :goto_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_3

    .line 672
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 675
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .end local v1           #internalStoragePath:Ljava/lang/String;
    :goto_2
    move-object v4, v3

    .line 682
    goto :goto_0

    .line 657
    .restart local v1       #internalStoragePath:Ljava/lang/String;
    .restart local v2       #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 658
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 659
    const-string v4, "getSdCardPath"

    const-string v5, "GET STORAGE_INT STATE FAIL"

    invoke-virtual {p0, v4, v5}, Lcom/miui/server/MdbDebuggingManager;->getErrMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    goto :goto_0

    .line 665
    .end local v0           #e:Ljava/io/IOException;
    :cond_4
    new-instance v1, Ljava/lang/String;

    .end local v1           #internalStoragePath:Ljava/lang/String;
    const-string v4, "/data/media"

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v1       #internalStoragePath:Ljava/lang/String;
    goto :goto_1

    .line 676
    .end local v1           #internalStoragePath:Ljava/lang/String;
    .end local v2           #line:Ljava/lang/String;
    :cond_5
    sget-boolean v4, Lmiui/os/Build;->IS_HONGMI:Z

    if-eqz v4, :cond_6

    .line 677
    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectoryWithoutCheck()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    goto :goto_2

    .line 679
    :cond_6
    const-string v4, "getSdCardPath"

    const-string v5, "NOT SUPPORT DEVICES"

    invoke-virtual {p0, v4, v5}, Lcom/miui/server/MdbDebuggingManager;->getErrMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    goto :goto_2
.end method

.method private getTotalInternalMemory()J
    .locals 13

    .prologue
    const-wide/32 v11, 0x3b9aca00

    const-wide/16 v9, 0x4

    const-wide/16 v7, 0x1

    .line 417
    sget-wide v3, Lcom/miui/server/MdbDebuggingManager;->sTotalInternalMemory:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 420
    :try_start_0
    const-string v3, "/proc/partitions"

    const-string v4, "mmcblk0"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/miui/server/MdbDebuggingManager;->readLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, line:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 422
    const-string v3, " +"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, parts:[Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sput-wide v3, Lcom/miui/server/MdbDebuggingManager;->sTotalInternalMemory:J

    .line 424
    sget-wide v3, Lcom/miui/server/MdbDebuggingManager;->sTotalInternalMemory:J

    const-wide/32 v5, 0x7a1200

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 425
    sget-wide v3, Lcom/miui/server/MdbDebuggingManager;->sTotalInternalMemory:J

    const-wide/16 v5, 0x4

    div-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    add-long/2addr v3, v7

    mul-long/2addr v3, v11

    mul-long/2addr v3, v9

    sput-wide v3, Lcom/miui/server/MdbDebuggingManager;->sTotalInternalMemory:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #parts:[Ljava/lang/String;
    :cond_0
    :goto_0
    sget-wide v3, Lcom/miui/server/MdbDebuggingManager;->sTotalInternalMemory:J

    return-wide v3

    .line 427
    .restart local v1       #line:Ljava/lang/String;
    .restart local v2       #parts:[Ljava/lang/String;
    :cond_1
    :try_start_1
    sget-wide v3, Lcom/miui/server/MdbDebuggingManager;->sTotalInternalMemory:J

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    add-long/2addr v3, v7

    mul-long/2addr v3, v11

    sput-wide v3, Lcom/miui/server/MdbDebuggingManager;->sTotalInternalMemory:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 430
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #parts:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 431
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getWirelessDiscoveryInfo()[B
    .locals 1

    .prologue
    .line 886
    invoke-direct {p0}, Lcom/miui/server/MdbDebuggingManager;->getDevInfo()[B

    move-result-object v0

    return-object v0
.end method

.method private handleMdbdMessage(Ljava/lang/String;I)Z
    .locals 17
    .parameter "cmd"
    .parameter "msgId"

    .prologue
    .line 1287
    if-nez p1, :cond_0

    .line 1288
    const/4 v14, 0x0

    .line 1370
    :goto_0
    return v14

    .line 1291
    :cond_0
    const-string v14, "mdb_debug"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "receive mdbd msg: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", msgId: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    const-string v14, "restore:START"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1294
    const/4 v14, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lcom/miui/server/MdbDebuggingManager;->getMessage(II)Landroid/os/Message;

    move-result-object v8

    .line 1295
    .local v8, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/server/MdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1370
    :goto_1
    const/4 v14, 0x1

    goto :goto_0

    .line 1296
    .end local v8           #msg:Landroid/os/Message;
    :cond_1
    const-string v14, "get_all_app_infos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1297
    const/4 v14, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lcom/miui/server/MdbDebuggingManager;->getMessage(II)Landroid/os/Message;

    move-result-object v8

    .line 1298
    .restart local v8       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/server/MdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1299
    .end local v8           #msg:Landroid/os/Message;
    :cond_2
    const-string v14, "get_auth_token"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1300
    const-string v14, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1301
    .local v11, params:[Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v2, v11, v14

    .line 1302
    .local v2, authTokenType:Ljava/lang/String;
    const/4 v14, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lcom/miui/server/MdbDebuggingManager;->getMessage(II)Landroid/os/Message;

    move-result-object v8

    .line 1303
    .restart local v8       #msg:Landroid/os/Message;
    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "authTokenType"

    invoke-virtual {v14, v15, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/server/MdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1305
    .end local v2           #authTokenType:Ljava/lang/String;
    .end local v8           #msg:Landroid/os/Message;
    .end local v11           #params:[Ljava/lang/String;
    :cond_3
    const-string v14, "check_account"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1306
    const/4 v14, 0x5

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lcom/miui/server/MdbDebuggingManager;->getMessage(II)Landroid/os/Message;

    move-result-object v8

    .line 1307
    .restart local v8       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/server/MdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1309
    .end local v8           #msg:Landroid/os/Message;
    :cond_4
    const-string v14, "login_account"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1310
    const/4 v14, 0x6

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lcom/miui/server/MdbDebuggingManager;->getMessage(II)Landroid/os/Message;

    move-result-object v8

    .line 1311
    .restart local v8       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/server/MdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1312
    .end local v8           #msg:Landroid/os/Message;
    :cond_5
    const-string v14, "get_dev_info"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1313
    const/4 v14, 0x7

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lcom/miui/server/MdbDebuggingManager;->getMessage(II)Landroid/os/Message;

    move-result-object v8

    .line 1314
    .restart local v8       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/server/MdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1315
    .end local v8           #msg:Landroid/os/Message;
    :cond_6
    const-string v14, "get_phone_num"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1316
    const/16 v14, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lcom/miui/server/MdbDebuggingManager;->getMessage(II)Landroid/os/Message;

    move-result-object v8

    .line 1317
    .restart local v8       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/server/MdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1318
    .end local v8           #msg:Landroid/os/Message;
    :cond_7
    const-string v14, "get_app_sign_info"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1319
    const-string v14, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1320
    .restart local v11       #params:[Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v10, v11, v14

    .line 1321
    .local v10, packageName:Ljava/lang/String;
    const/16 v14, 0x9

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lcom/miui/server/MdbDebuggingManager;->getMessage(II)Landroid/os/Message;

    move-result-object v8

    .line 1322
    .restart local v8       #msg:Landroid/os/Message;
    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "packageName"

    invoke-virtual {v14, v15, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/server/MdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1324
    .end local v8           #msg:Landroid/os/Message;
    .end local v10           #packageName:Ljava/lang/String;
    .end local v11           #params:[Ljava/lang/String;
    :cond_8
    const-string v14, "get_app_icon"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1325
    const-string v14, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1326
    .restart local v11       #params:[Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v10, v11, v14

    .line 1327
    .restart local v10       #packageName:Ljava/lang/String;
    const/4 v14, 0x2

    aget-object v13, v11, v14

    .line 1328
    .local v13, widthStr:Ljava/lang/String;
    const/4 v14, 0x3

    aget-object v6, v11, v14

    .line 1329
    .local v6, heightStr:Ljava/lang/String;
    const/16 v14, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lcom/miui/server/MdbDebuggingManager;->getMessage(II)Landroid/os/Message;

    move-result-object v8

    .line 1330
    .restart local v8       #msg:Landroid/os/Message;
    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "packageName"

    invoke-virtual {v14, v15, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "width"

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1332
    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "height"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1333
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/server/MdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1334
    .end local v6           #heightStr:Ljava/lang/String;
    .end local v8           #msg:Landroid/os/Message;
    .end local v10           #packageName:Ljava/lang/String;
    .end local v11           #params:[Ljava/lang/String;
    .end local v13           #widthStr:Ljava/lang/String;
    :cond_9
    const-string v14, "ota:REBOOT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1335
    const/16 v14, 0xb

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lcom/miui/server/MdbDebuggingManager;->getMessage(II)Landroid/os/Message;

    move-result-object v8

    .line 1336
    .restart local v8       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/server/MdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1337
    .end local v8           #msg:Landroid/os/Message;
    :cond_a
    const-string v14, "get_sdcard_path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1338
    const/16 v14, 0xc

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lcom/miui/server/MdbDebuggingManager;->getMessage(II)Landroid/os/Message;

    move-result-object v8

    .line 1339
    .restart local v8       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/server/MdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1340
    .end local v8           #msg:Landroid/os/Message;
    :cond_b
    const-string v14, "usb_sharenet_control"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 1341
    const-string v14, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1342
    .restart local v11       #params:[Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v9, v11, v14

    .line 1343
    .local v9, operation:Ljava/lang/String;
    const/16 v14, 0xd

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lcom/miui/server/MdbDebuggingManager;->getMessage(II)Landroid/os/Message;

    move-result-object v8

    .line 1344
    .restart local v8       #msg:Landroid/os/Message;
    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "operation"

    invoke-virtual {v14, v15, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "where"

    const-string v16, "from_pc"

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/server/MdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1347
    .end local v8           #msg:Landroid/os/Message;
    .end local v9           #operation:Ljava/lang/String;
    .end local v11           #params:[Ljava/lang/String;
    :cond_c
    const-string v14, "usb_sharenet_config"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1348
    const-string v14, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1349
    .restart local v11       #params:[Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v7, v11, v14

    .line 1350
    .local v7, ipAddr:Ljava/lang/String;
    const/4 v14, 0x2

    aget-object v12, v11, v14

    .line 1351
    .local v12, prefixLen:Ljava/lang/String;
    const/4 v14, 0x3

    aget-object v5, v11, v14

    .line 1352
    .local v5, gwAddr:Ljava/lang/String;
    const/4 v14, 0x4

    aget-object v3, v11, v14

    .line 1353
    .local v3, dns1:Ljava/lang/String;
    const/4 v14, 0x5

    aget-object v4, v11, v14

    .line 1354
    .local v4, dns2:Ljava/lang/String;
    const/16 v14, 0xe

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lcom/miui/server/MdbDebuggingManager;->getMessage(II)Landroid/os/Message;

    move-result-object v8

    .line 1355
    .restart local v8       #msg:Landroid/os/Message;
    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "ipAddr"

    invoke-virtual {v14, v15, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "prefixLength"

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1357
    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "gwAddr"

    invoke-virtual {v14, v15, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "dns1"

    invoke-virtual {v14, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "dns2"

    invoke-virtual {v14, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/server/MdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1361
    .end local v3           #dns1:Ljava/lang/String;
    .end local v4           #dns2:Ljava/lang/String;
    .end local v5           #gwAddr:Ljava/lang/String;
    .end local v7           #ipAddr:Ljava/lang/String;
    .end local v8           #msg:Landroid/os/Message;
    .end local v11           #params:[Ljava/lang/String;
    .end local v12           #prefixLen:Ljava/lang/String;
    :cond_d
    const-string v14, "wireless_discovery"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1362
    const/16 v14, 0xf

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lcom/miui/server/MdbDebuggingManager;->getMessage(II)Landroid/os/Message;

    move-result-object v8

    .line 1363
    .restart local v8       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/server/MdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1365
    .end local v8           #msg:Landroid/os/Message;
    :cond_e
    const/4 v14, 0x0

    new-instance v15, Ljava/lang/String;

    const-string v16, "NOT SUPPORT COMMAND"

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1, v15}, Lcom/miui/server/MdbDebuggingManager;->sendResponse(II[B)V

    .line 1366
    const-string v14, "mdb_debug"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Wrong message: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method private static intToByteArray(I)[B
    .locals 3
    .parameter "i"

    .prologue
    .line 961
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 962
    .local v0, result:[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 963
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 964
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 965
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 966
    return-object v0
.end method

.method private isAppMsg([B)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 933
    array-length v2, p1

    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    .line 943
    :cond_0
    :goto_0
    return v1

    .line 937
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/miui/server/MdbDebuggingManager;->mAppMsgMagicBytes:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 938
    aget-byte v2, p1, v0

    sget-object v3, Lcom/miui/server/MdbDebuggingManager;->mAppMsgMagicBytes:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    .line 937
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 943
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isNeedStartShareNet(Ljava/lang/String;)Z
    .locals 5
    .parameter "operation"

    .prologue
    const/4 v2, 0x1

    .line 808
    const-string v3, "forced-enable"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 818
    :cond_0
    :goto_0
    return v2

    .line 811
    :cond_1
    iget-object v3, p0, Lcom/miui/server/MdbDebuggingManager;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 813
    .local v0, conMan:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 815
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 816
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isXiaoMiAccountActive()Z
    .locals 2

    .prologue
    .line 307
    iget-object v1, p0, Lcom/miui/server/MdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 308
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 309
    const/4 v1, 0x1

    .line 311
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyConnectState(Landroid/net/NetworkInfo$State;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "state"
    .parameter "gateway"
    .parameter "hostIpaddr"
    .parameter "prefixLength"
    .parameter "dns1"
    .parameter "dns2"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 713
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq p1, v4, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq p1, v4, :cond_0

    .line 714
    const-string v4, "mdb_debug"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error unsupport usb share net state, state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :goto_0
    return-void

    .line 718
    :cond_0
    iget-boolean v4, p0, Lcom/miui/server/MdbDebuggingManager;->mBootCompleted:Z

    if-nez v4, :cond_1

    .line 719
    const-string v4, "mdb_debug"

    const-string v5, "system is not ready, we should not notify conncectivity services."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 723
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "miui.intent.action.USB_SHARE_NET_STATE_CHANGE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 725
    .local v2, intent:Landroid/content/Intent;
    new-instance v1, Landroid/net/NetworkInfo;

    const/16 v4, 0x9

    const-string v5, "ETHERNET"

    const-string v6, ""

    invoke-direct {v1, v4, v8, v5, v6}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 728
    .local v1, info:Landroid/net/NetworkInfo;
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, v4, :cond_5

    .line 729
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-ltz p4, :cond_2

    const/16 v4, 0x20

    if-gt p4, v4, :cond_2

    if-eqz p5, :cond_2

    if-nez p6, :cond_3

    .line 731
    :cond_2
    const-string v4, "mdb_debug"

    const-string v5, "notifyConnectState connected para error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 735
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/miui/server/MdbDebuggingManager;->mNwService:Landroid/os/INetworkManagementService;

    const-string v5, "usbnet0"

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->setInterfaceUp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 742
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v4, v7, v7}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string v4, "networkinfo"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 746
    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    .line 747
    .local v3, linkProperties:Landroid/net/LinkProperties;
    const-string v4, "usbnet0"

    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 748
    new-instance v4, Landroid/net/LinkAddress;

    invoke-static {p3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v4, v5, p4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 750
    invoke-static {p5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 751
    invoke-static {p6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 752
    new-instance v4, Landroid/net/RouteInfo;

    invoke-static {p2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    .line 754
    const-string v4, "linkProperties"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 771
    .end local v3           #linkProperties:Landroid/net/LinkProperties;
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/miui/server/MdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 773
    invoke-direct {p0, p1}, Lcom/miui/server/MdbDebuggingManager;->updateShareNetNotificationBar(Landroid/net/NetworkInfo$State;)V

    goto/16 :goto_0

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "mdb_debug"

    const-string v5, "enable usbnet0 error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 755
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_5
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, v4, :cond_4

    .line 756
    invoke-virtual {v1, v8}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 757
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v4, v7, v7}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v4, "networkinfo"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 761
    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    .line 762
    .restart local v3       #linkProperties:Landroid/net/LinkProperties;
    const-string v4, "linkProperties"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 764
    :try_start_1
    iget-object v4, p0, Lcom/miui/server/MdbDebuggingManager;->mNwService:Landroid/os/INetworkManagementService;

    const-string v5, "usbnet0"

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 765
    :catch_1
    move-exception v0

    .line 766
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v4, "mdb_debug"

    const-string v5, "disable usbnet0 error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static readLine(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "filename"
    .parameter "key"
    .parameter "oper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 395
    .local v1, reader:Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 396
    .local v0, line:Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 397
    if-nez p2, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 409
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 407
    return-object v0

    .line 400
    :cond_2
    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 403
    :cond_3
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 409
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v2
.end method

.method private restoreOtherConnectState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 791
    iget-object v3, p0, Lcom/miui/server/MdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 792
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 793
    .local v2, wifiSavedState:I
    const/4 v1, 0x0

    .line 796
    .local v1, wifiManager:Landroid/net/wifi/WifiManager;
    :try_start_0
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 800
    :goto_0
    if-ne v2, v5, :cond_0

    .line 801
    iget-object v3, p0, Lcom/miui/server/MdbDebuggingManager;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #wifiManager:Landroid/net/wifi/WifiManager;
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 802
    .restart local v1       #wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 803
    const-string v3, "wifi_saved_state"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 805
    :cond_0
    return-void

    .line 797
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private saveConfig(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "hostAddr"
    .parameter "prefixLength"
    .parameter "gwAddr"
    .parameter "dns1"
    .parameter "dns2"

    .prologue
    .line 777
    iput-object p1, p0, Lcom/miui/server/MdbDebuggingManager;->mHostAddr:Ljava/lang/String;

    .line 778
    iput p2, p0, Lcom/miui/server/MdbDebuggingManager;->mPrefixLength:I

    .line 779
    iput-object p3, p0, Lcom/miui/server/MdbDebuggingManager;->mGwAddr:Ljava/lang/String;

    .line 780
    iput-object p4, p0, Lcom/miui/server/MdbDebuggingManager;->mDns1:Ljava/lang/String;

    .line 781
    iput-object p5, p0, Lcom/miui/server/MdbDebuggingManager;->mDns2:Ljava/lang/String;

    .line 782
    return-void
.end method

.method private setUsbNetConfig(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .parameter "ipAddr"
    .parameter "prefixLength"
    .parameter "gwAddr"
    .parameter "dns1"
    .parameter "dns2"

    .prologue
    .line 785
    invoke-direct/range {p0 .. p5}, Lcom/miui/server/MdbDebuggingManager;->saveConfig(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-direct {p0, v0}, Lcom/miui/server/MdbDebuggingManager;->updateShareNetNotificationBar(Landroid/net/NetworkInfo$State;)V

    .line 787
    new-instance v0, Ljava/lang/String;

    const-string v1, "OK"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private setUsbNetState(Ljava/lang/String;)[B
    .locals 8
    .parameter "operation"

    .prologue
    const/4 v2, 0x0

    .line 693
    new-instance v7, Ljava/lang/String;

    const-string v0, "OK"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 694
    .local v7, ret:Ljava/lang/String;
    const-string v0, "enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "forced-enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 695
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/server/MdbDebuggingManager;->isNeedStartShareNet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    invoke-direct {p0}, Lcom/miui/server/MdbDebuggingManager;->disableOtherConnect()V

    .line 697
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    iget-object v2, p0, Lcom/miui/server/MdbDebuggingManager;->mGwAddr:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/server/MdbDebuggingManager;->mHostAddr:Ljava/lang/String;

    iget v4, p0, Lcom/miui/server/MdbDebuggingManager;->mPrefixLength:I

    iget-object v5, p0, Lcom/miui/server/MdbDebuggingManager;->mDns1:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/server/MdbDebuggingManager;->mDns2:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/server/MdbDebuggingManager;->notifyConnectState(Landroid/net/NetworkInfo$State;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 707
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 700
    :cond_1
    const-string v0, "setUsbNetState"

    const-string v1, "NO need start usb share net"

    invoke-virtual {p0, v0, v1}, Lcom/miui/server/MdbDebuggingManager;->getErrMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 703
    :cond_2
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/miui/server/MdbDebuggingManager;->notifyConnectState(Landroid/net/NetworkInfo$State;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-direct {p0}, Lcom/miui/server/MdbDebuggingManager;->restoreOtherConnectState()V

    goto :goto_0
.end method

.method private showConfirmationUI()[B
    .locals 4

    .prologue
    .line 291
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 293
    .local v0, dialogIntent:Landroid/content/Intent;
    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.usb.MdbRestoreUI"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 298
    :try_start_0
    iget-object v2, p0, Lcom/miui/server/MdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "mdb_debug"

    const-string v3, "unable to start MdbRestoreUI activity"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v2, "showConfirmationUI"

    const-string v3, "unable to start MdbRestoreUI activity"

    invoke-virtual {p0, v2, v3}, Lcom/miui/server/MdbDebuggingManager;->getErrMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    goto :goto_0
.end method

.method private showLoginUI()[B
    .locals 4

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/miui/server/MdbDebuggingManager;->isXiaoMiAccountActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    const-string v2, "showLoginUI"

    const-string v3, "xiaomi account is not active"

    invoke-virtual {p0, v2, v3}, Lcom/miui/server/MdbDebuggingManager;->getErrMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 340
    :goto_0
    return-object v2

    .line 328
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 330
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.usb.MdbAccountLoginUI"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 334
    :try_start_0
    iget-object v2, p0, Lcom/miui/server/MdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    new-instance v2, Ljava/lang/String;

    const-string v3, "OK"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "mdb_debug"

    const-string v3, "unable to start MdbAccountLoginUI activity"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v2, "showLoginUI"

    const-string v3, "unable to start MdbAccountLoginUI activity"

    invoke-virtual {p0, v2, v3}, Lcom/miui/server/MdbDebuggingManager;->getErrMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    goto :goto_0
.end method

.method private showOtaRebootUI()[B
    .locals 3

    .prologue
    .line 621
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 622
    .local v0, rebootIntent:Landroid/content/Intent;
    const-string v1, "com.android.updater"

    const-string v2, "com.android.updater.RebootTimerDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 625
    iget-object v1, p0, Lcom/miui/server/MdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 626
    new-instance v1, Ljava/lang/String;

    const-string v2, "_##MDB_FINISH##_"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private updateShareNetNotificationBar(Landroid/net/NetworkInfo$State;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 833
    iget-boolean v1, p0, Lcom/miui/server/MdbDebuggingManager;->mBootCompleted:Z

    if-nez v1, :cond_0

    .line 834
    const-string v1, "mdb_debug"

    const-string v2, "system is not ready, we should not notify systemui."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :goto_0
    return-void

    .line 837
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.usb.action.USB_SHARENET_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 838
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "usb_sharenet_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 839
    iget-object v1, p0, Lcom/miui/server/MdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public accpetMdbRestore()V
    .locals 2

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/miui/server/MdbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1434
    return-void
.end method

.method public cancelMdbRestore()V
    .locals 2

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/miui/server/MdbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1438
    return-void
.end method

.method public disableRemoteCtrl()V
    .locals 3

    .prologue
    .line 1454
    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/miui/server/MdbDebuggingManager;->getMessage(II)Landroid/os/Message;

    move-result-object v0

    .line 1455
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/server/MdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1456
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"

    .prologue
    .line 1465
    const-string v0, "  Mdb Restore State:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Connected to mdbd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/server/MdbDebuggingManager;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1467
    return-void

    .line 1466
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getFrameworkLocalMsg(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "msgType"
    .parameter "data"

    .prologue
    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 917
    .local v0, msg:Ljava/lang/StringBuilder;
    const-string v1, "%04x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getFrameworkShareNetMsg(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "msgType"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 900
    .local v0, msg:Ljava/lang/StringBuilder;
    const-string v1, "%04x"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    const-string v1, "%04x"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    const-string v1, "%04x"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected listenToSocket()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1376
    :try_start_0
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v11, "mdbd"

    sget-object v12, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v11, v12}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 1378
    .local v0, address:Landroid/net/LocalSocketAddress;
    const/4 v6, 0x0

    .line 1380
    .local v6, inputStream:Ljava/io/InputStream;
    new-instance v11, Landroid/net/LocalSocket;

    invoke-direct {v11}, Landroid/net/LocalSocket;-><init>()V

    iput-object v11, p0, Lcom/miui/server/MdbDebuggingManager;->mSocket:Landroid/net/LocalSocket;

    .line 1381
    iget-object v11, p0, Lcom/miui/server/MdbDebuggingManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v11, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 1382
    iget-object v11, p0, Lcom/miui/server/MdbDebuggingManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v11}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    iput-object v11, p0, Lcom/miui/server/MdbDebuggingManager;->mOutputStream:Ljava/io/OutputStream;

    .line 1383
    iget-object v11, p0, Lcom/miui/server/MdbDebuggingManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v11}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 1385
    iget-object v11, p0, Lcom/miui/server/MdbDebuggingManager;->mOutputStream:Ljava/io/OutputStream;

    const-string v12, "frmk"

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/OutputStream;->write([B)V

    .line 1386
    const-string v11, "mdb_debug"

    const-string v12, "framework connected to mdbd socket"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_0
    :goto_0
    const/4 v11, 0x4

    new-array v9, v11, [B

    .line 1390
    .local v9, msgIdLen:[B
    invoke-virtual {v6, v9}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 1391
    .local v3, count:I
    if-gtz v3, :cond_1

    .line 1392
    const-string v11, "mdb_debug"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "got msg id "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " reading"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1428
    :goto_1
    invoke-virtual {p0}, Lcom/miui/server/MdbDebuggingManager;->closeSocket()V

    .line 1430
    return-void

    .line 1395
    :cond_1
    :try_start_1
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v9}, Ljava/lang/String;-><init>([B)V

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 1397
    .local v8, msgId:I
    const/4 v11, 0x4

    new-array v2, v11, [B

    .line 1398
    .local v2, bufferLen:[B
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 1399
    if-gtz v3, :cond_2

    .line 1400
    const-string v11, "mdb_debug"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "got data len "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " reading"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1424
    .end local v0           #address:Landroid/net/LocalSocketAddress;
    .end local v2           #bufferLen:[B
    .end local v3           #count:I
    .end local v6           #inputStream:Ljava/io/InputStream;
    .end local v8           #msgId:I
    .end local v9           #msgIdLen:[B
    :catch_0
    move-exception v5

    .line 1425
    .local v5, ex:Ljava/io/IOException;
    :try_start_2
    const-string v11, "mdb_debug"

    const-string v12, "Communication error: "

    invoke-static {v11, v12, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1426
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1428
    .end local v5           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    invoke-virtual {p0}, Lcom/miui/server/MdbDebuggingManager;->closeSocket()V

    throw v11

    .line 1404
    .restart local v0       #address:Landroid/net/LocalSocketAddress;
    .restart local v2       #bufferLen:[B
    .restart local v3       #count:I
    .restart local v6       #inputStream:Ljava/io/InputStream;
    .restart local v8       #msgId:I
    .restart local v9       #msgIdLen:[B
    :cond_2
    :try_start_3
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v2}, Ljava/lang/String;-><init>([B)V

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 1406
    .local v4, dataLen:I
    new-array v1, v4, [B

    .line 1407
    .local v1, buffer:[B
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 1408
    if-gtz v3, :cond_3

    .line 1409
    const-string v11, "mdb_debug"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "got data "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " reading"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1413
    :cond_3
    invoke-direct {p0, v1}, Lcom/miui/server/MdbDebuggingManager;->isAppMsg([B)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1414
    iget-object v11, p0, Lcom/miui/server/MdbDebuggingManager;->mAppMsgHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1415
    .local v7, msg:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "app_msg"

    invoke-virtual {v11, v12, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1416
    iget-object v11, p0, Lcom/miui/server/MdbDebuggingManager;->mAppMsgHandler:Landroid/os/Handler;

    invoke-virtual {v11, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1418
    .end local v7           #msg:Landroid/os/Message;
    :cond_4
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v1}, Ljava/lang/String;-><init>([B)V

    .line 1419
    .local v10, rev:Ljava/lang/String;
    invoke-direct {p0, v10, v8}, Lcom/miui/server/MdbDebuggingManager;->handleMdbdMessage(Ljava/lang/String;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v11

    if-nez v11, :cond_0

    goto/16 :goto_1
.end method

.method public run()V
    .locals 3

    .prologue
    .line 281
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/server/MdbDebuggingManager;->listenToSocket()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 284
    .local v0, e:Ljava/lang/Exception;
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 285
    const-string v1, "mdb_debug"

    const-string v2, "framework reconncet to mdbd socket"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setUsbShareNetState(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 1442
    if-eqz p1, :cond_0

    .line 1443
    new-instance v1, Ljava/lang/String;

    const-string v2, "forced-enable"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1447
    .local v1, operation:Ljava/lang/String;
    :goto_0
    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/miui/server/MdbDebuggingManager;->getMessage(II)Landroid/os/Message;

    move-result-object v0

    .line 1448
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "operation"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "where"

    const-string v4, "from_app"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    iget-object v2, p0, Lcom/miui/server/MdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1451
    return-void

    .line 1445
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #operation:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "disable"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v1       #operation:Ljava/lang/String;
    goto :goto_0
.end method

.method public updateRotation(I)V
    .locals 3
    .parameter "rotation"

    .prologue
    .line 1459
    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/miui/server/MdbDebuggingManager;->getMessage(II)Landroid/os/Message;

    move-result-object v0

    .line 1460
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "rotation"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1461
    iget-object v1, p0, Lcom/miui/server/MdbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1462
    return-void
.end method
