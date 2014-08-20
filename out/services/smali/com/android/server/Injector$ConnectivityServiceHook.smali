.class Lcom/android/server/Injector$ConnectivityServiceHook;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectivityServiceHook"
.end annotation


# static fields
.field private static fakeInfo:Landroid/net/NetworkInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 104
    new-instance v0, Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    const-string v2, "WIFI"

    const-string v3, ""

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/Injector$ConnectivityServiceHook;->fakeInfo:Landroid/net/NetworkInfo;

    .line 105
    sget-object v0, Lcom/android/server/Injector$ConnectivityServiceHook;->fakeInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v4}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 106
    sget-object v0, Lcom/android/server/Injector$ConnectivityServiceHook;->fakeInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v5, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static before_ConnectivityService(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 110
    invoke-static {p0}, Lcom/miui/server/FirewallService;->setupService(Landroid/content/Context;)V

    .line 111
    return-void
.end method

.method static showLogin(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "intent"
    .parameter "ssid"

    .prologue
    .line 157
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 158
    .local v1, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 159
    .local v0, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v2, "com.miui.action.OPEN_WIFI_LOGIN"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v2, "com.android.settings"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v2, "miui.intent.extra.OPEN_WIFI_SSID"

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    const-string v2, "miui.intent.extra.BSSID"

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 166
    return-void
.end method

.method public static startUsingNetworkFeature(I)V
    .locals 3
    .parameter "usedNetworkType"

    .prologue
    .line 121
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Lmiui/net/FirewallManager;->onStartUsingNetworkFeature(III)V

    .line 122
    return-void
.end method

.method public static stopUsingNetworkFeature(III)V
    .locals 1
    .parameter "uid"
    .parameter "pid"
    .parameter "usedNetworkType"

    .prologue
    .line 125
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lmiui/net/FirewallManager;->onStopUsingNetworkFeature(III)V

    .line 126
    return-void
.end method

.method private static transferNetworkInfo(Landroid/content/Context;[Landroid/net/NetworkStateTracker;Landroid/net/NetworkInfo;I)Landroid/net/NetworkInfo;
    .locals 7
    .parameter "context"
    .parameter "netTrackers"
    .parameter "info"
    .parameter "uid"

    .prologue
    const/16 v6, 0x9

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 130
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, packages:[Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    aget-object v4, p1, v6

    if-nez v4, :cond_1

    .line 153
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 138
    .restart local p2
    :cond_1
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, v2, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 145
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 146
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v6, :cond_0

    :cond_2
    aget-object v4, p1, v6

    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    sget-object p2, Lcom/android/server/Injector$ConnectivityServiceHook;->fakeInfo:Landroid/net/NetworkInfo;

    goto :goto_0

    .line 139
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 140
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static transferNetworkInfo(Lcom/android/server/ConnectivityService;ILandroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 2
    .parameter "service"
    .parameter "uid"
    .parameter "info"

    .prologue
    .line 114
    if-eqz p2, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getNetTrackers()[Landroid/net/NetworkStateTracker;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/android/server/Injector$ConnectivityServiceHook;->transferNetworkInfo(Landroid/content/Context;[Landroid/net/NetworkStateTracker;Landroid/net/NetworkInfo;I)Landroid/net/NetworkInfo;

    move-result-object p2

    .line 117
    .end local p2
    :cond_0
    return-object p2
.end method
