.class Lcom/android/server/pm/Injector$PackageManagerServiceHook;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageManagerServiceHook"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Injector$PackageManagerServiceHook$PackageHandler;
    }
.end annotation


# static fields
.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method static addAvailableFeatures(Lcom/android/server/pm/PackageManagerService;)V
    .locals 5
    .parameter "service"

    .prologue
    .line 100
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Ljava/util/HashMap;

    .line 101
    .local v2, features:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/FeatureInfo;>;"
    const-string v0, "android.hardware.telephony"

    .line 102
    .local v0, HARDWARE_TELEPHONY:Ljava/lang/String;
    const-string v1, "android.hardware.telephony.cdma"

    .line 103
    .local v1, HARDWARE_TELEPHONY_CDMA:Ljava/lang/String;
    sget-boolean v4, Lmiui/os/Build;->IS_XIAOMI_CDMA:Z

    if-eqz v4, :cond_1

    .line 104
    const-string v4, "android.hardware.telephony"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 105
    new-instance v3, Landroid/content/pm/FeatureInfo;

    invoke-direct {v3}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 106
    .local v3, fi:Landroid/content/pm/FeatureInfo;
    const-string v4, "android.hardware.telephony"

    iput-object v4, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 107
    const-string v4, "android.hardware.telephony.cdma"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .end local v3           #fi:Landroid/content/pm/FeatureInfo;
    :cond_0
    new-instance v3, Landroid/content/pm/FeatureInfo;

    invoke-direct {v3}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 111
    .restart local v3       #fi:Landroid/content/pm/FeatureInfo;
    const-string v4, "android.hardware.telephony.cdma"

    iput-object v4, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 112
    const-string v4, "android.hardware.telephony.cdma"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .end local v3           #fi:Landroid/content/pm/FeatureInfo;
    :cond_1
    return-void
.end method

.method public static addMiuiExtendFlags(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageSetting;)V
    .locals 4
    .parameter "pkg"
    .parameter "pkgSetting"

    .prologue
    .line 214
    const/high16 v0, -0x3a00

    .line 219
    .local v0, miuiExtendFlags:I
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    iget v3, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 220
    return-void
.end method

.method static addMiuiSharedUids(Lcom/android/server/pm/PackageManagerService;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/pm/MiuiSharedUids;->add(Lcom/android/server/pm/Settings;Z)V

    .line 80
    return-void
.end method

.method static addPackageToSlice(Landroid/content/pm/ParceledListSlice;Landroid/content/pm/PackageInfo;I)Z
    .locals 2
    .parameter
    .parameter "pi"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p0, list:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .line 289
    const/high16 v0, 0x2

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 291
    iput-object v1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 301
    :cond_0
    :goto_0
    const/high16 v0, 0x4

    and-int/2addr v0, p2

    if-eqz v0, :cond_3

    .line 302
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v0, v0

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 304
    :cond_2
    iput-object v1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 305
    iput-object v1, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 311
    :cond_3
    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    return v0

    .line 293
    :cond_4
    const/4 p1, 0x0

    goto :goto_0

    .line 307
    :cond_5
    const/4 p1, 0x0

    goto :goto_1

    .line 311
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static before_setApplicationEnabledSetting(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z
    .locals 1
    .parameter "service"
    .parameter "appPackageName"
    .parameter "newState"
    .parameter "flags"

    .prologue
    .line 323
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/Injector$PackageManagerServiceHook;->setMiuiExtendFlags(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const/4 v0, 0x1

    .line 326
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static blockAutoStartedApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/Settings;)V
    .locals 0
    .parameter "context"
    .parameter "info"
    .parameter "settings"

    .prologue
    .line 223
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ExtraPackageManagerServices;->blockAutoStartedApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/Settings;)V

    .line 224
    return-void
.end method

.method static checkApk(Lcom/android/server/pm/PackageManagerService;Landroid/os/Message;)Z
    .locals 6
    .parameter "service"
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 62
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/server/pm/PackageManagerService$InstallParams;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService;->mSystemReady:Z

    if-eqz v3, :cond_1

    .line 63
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 64
    .local v0, insallParams:Lcom/android/server/pm/PackageManagerService$InstallParams;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getPackageUri()Landroid/net/Uri;

    move-result-object v4

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    invoke-static {v3, v4, v5}, Lmiui/provider/ExtraGuard;->checkApk(Landroid/content/Context;Landroid/net/Uri;I)I

    move-result v1

    .line 65
    .local v1, status:I
    if-eq v1, v2, :cond_1

    .line 66
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    if-eqz v2, :cond_0

    .line 68
    :try_start_0
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Landroid/content/pm/IPackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 75
    .end local v0           #insallParams:Lcom/android/server/pm/PackageManagerService$InstallParams;
    .end local v1           #status:I
    :cond_1
    return v2

    .line 69
    .restart local v0       #insallParams:Lcom/android/server/pm/PackageManagerService$InstallParams;
    .restart local v1       #status:I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static checkInstallerFromXiaomi(I[Ljava/lang/String;)I
    .locals 6
    .parameter "uid"
    .parameter "packages"

    .prologue
    const/4 v3, 0x0

    .line 342
    const-string v2, "com.android.packageinstaller"

    .line 343
    .local v2, INSTALL_FROM_PACKAGEINSTALLER:Ljava/lang/String;
    const-string v0, "com.xiaomi.gamecenter"

    .line 344
    .local v0, INSTALL_FROM_GAMECENTER:Ljava/lang/String;
    const-string v1, "com.xiaomi.market"

    .line 346
    .local v1, INSTALL_FROM_MARKET:Ljava/lang/String;
    if-eqz p1, :cond_1

    array-length v4, p1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const-string v4, "com.android.packageinstaller"

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.xiaomi.gamecenter"

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.xiaomi.market"

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 350
    :cond_0
    const/16 v3, 0x100

    .line 353
    :cond_1
    return v3
.end method

.method static checkMiuiIntent(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;
    .locals 6
    .parameter "pms"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .parameter
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .line 159
    .local p4, query:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p1, :cond_a

    .line 160
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    const-string v5, "android.intent.category.HOME"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 200
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 201
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 204
    :goto_1
    return-object v2

    .line 164
    :cond_1
    const-string v4, "com.miui.home"

    const-string v5, "com.miui.home.launcher.Launcher"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 166
    :cond_2
    const-string v4, "http"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 167
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 168
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 169
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, host:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, path:Ljava/lang/String;
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 172
    const-string v4, "zhuti.xiaomi.com"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_5

    const-string v4, "/detail/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "/redeem"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 174
    :cond_3
    const-string v4, "com.android.thememanager"

    const-string v5, "com.android.thememanager.activity.ThemeDetailActivity"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 181
    invoke-static {p0, p4}, Lcom/android/server/pm/Injector$PackageManagerServiceHook;->getBrowserResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 182
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    goto :goto_1

    .line 175
    .end local v2           #ri:Landroid/content/pm/ResolveInfo;
    :cond_5
    const-string v4, "app.xiaomi.com"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_4

    const-string v4, "/detail/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 176
    const-string v4, "com.xiaomi.market"

    const-string v5, "com.xiaomi.market.ui.AppDetailActivity"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 187
    .end local v0           #host:Ljava/lang/String;
    .end local v1           #path:Ljava/lang/String;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_6
    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 188
    const-string v4, "com.android.packageinstaller"

    const-string v5, "com.android.packageinstaller.PackageInstallerActivity"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 189
    :cond_7
    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "image"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tel"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mailto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 195
    :cond_9
    invoke-static {p0, p4}, Lcom/android/server/pm/Injector$PackageManagerServiceHook;->getSystemResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 196
    .restart local v2       #ri:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 204
    .end local v2           #ri:Landroid/content/pm/ResolveInfo;
    :cond_a
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    goto/16 :goto_1
.end method

.method static getBrowserResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 5
    .parameter "pms"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {p0, p1}, Lcom/android/server/pm/Injector$PackageManagerServiceHook;->getSystemResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 146
    .local v1, ret:Landroid/content/pm/ResolveInfo;
    if-nez v1, :cond_1

    .line 147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 148
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    const-string v3, "com.android.browser"

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    move-object v1, v2

    .line 154
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v1
.end method

.method public static getPackageInstaller(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "pms"
    .parameter "installerPkgName"

    .prologue
    .line 315
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v0, :cond_1

    .line 318
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v0, v1, v2}, Lmiui/os/Process;->getCallerPackageName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getResolveActivityTheme(I)I
    .locals 1
    .parameter "defaultTheme"

    .prologue
    .line 210
    const v0, 0x60d003e

    return v0
.end method

.method static getSystemResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 7
    .parameter "pms"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .local p1, riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v6, 0xfff

    .line 117
    const/4 v2, 0x0

    .line 118
    .local v2, ret:Landroid/content/pm/ResolveInfo;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 119
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 120
    .local v3, ri:Landroid/content/pm/ResolveInfo;
    iget v5, v3, Landroid/content/pm/ResolveInfo;->priority:I

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget v4, v4, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v5, v4, :cond_2

    .line 139
    .end local v3           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    :goto_1
    return-object v2

    .line 124
    .restart local v3       #ri:Landroid/content/pm/ResolveInfo;
    :cond_2
    iget v4, v3, Landroid/content/pm/ResolveInfo;->match:I

    and-int/2addr v4, v6

    const/high16 v5, 0x20

    if-eq v4, v5, :cond_3

    iget v4, v3, Landroid/content/pm/ResolveInfo;->match:I

    and-int/2addr v4, v6

    const/high16 v5, 0x10

    if-eq v4, v5, :cond_3

    iget v4, v3, Landroid/content/pm/ResolveInfo;->match:I

    and-int/2addr v4, v6

    const/high16 v5, 0x60

    if-eq v4, v5, :cond_3

    .line 127
    const/4 v2, 0x0

    .line 128
    goto :goto_1

    .line 130
    :cond_3
    iget-boolean v4, v3, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v4, :cond_0

    .line 131
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v4}, Lmiui/content/pm/ExtraPackageManager;->isMiuiSystemApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 132
    move-object v2, v3

    .line 134
    :cond_4
    if-nez v2, :cond_0

    .line 135
    move-object v2, v3

    goto :goto_0
.end method

.method static guardInit(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 58
    invoke-static {p0}, Lmiui/provider/ExtraGuard;->init(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method static ignoreApk(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 92
    invoke-static {p0}, Lcom/android/server/pm/ExtraPackageManagerServices;->ignoreApk(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static ignoreMiuiFrameworkRes(Lcom/android/server/pm/PackageManagerService;Ljava/util/HashSet;)V
    .locals 3
    .parameter "service"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "framework"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    .local v0, frameworkDir:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/framework-miui-res.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public static isTrustedSystemSignature([Landroid/content/pm/Signature;)Z
    .locals 1
    .parameter "signatures"

    .prologue
    .line 231
    invoke-static {p0}, Lmiui/content/pm/ExtraPackageManager;->isTrustedSystemSignature([Landroid/content/pm/Signature;)Z

    move-result v0

    return v0
.end method

.method static performPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V
    .locals 0
    .parameter "pm"
    .parameter "settings"

    .prologue
    .line 88
    invoke-static {p0, p1}, Lcom/android/server/pm/ExtraPackageManagerServices;->performPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V

    .line 89
    return-void
.end method

.method public static postProcessNewInstall(Landroid/content/Context;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/Settings;)V
    .locals 1
    .parameter "context"
    .parameter "pkg"
    .parameter "settings"

    .prologue
    .line 227
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, v0, p2}, Lcom/android/server/pm/ExtraPackageManagerServices;->postProcessNewInstall(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/Settings;)V

    .line 228
    return-void
.end method

.method static postScanPackages()V
    .locals 0

    .prologue
    .line 96
    invoke-static {}, Lcom/android/server/pm/ExtraPackageManagerServices;->postScanPackages()V

    .line 97
    return-void
.end method

.method public static setMiuiExtendFlags(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z
    .locals 12
    .parameter "service"
    .parameter "packageName"
    .parameter "newState"
    .parameter "flags"

    .prologue
    .line 245
    const/high16 v7, -0x8000

    if-eq p2, v7, :cond_0

    const/high16 v7, 0x4000

    if-eq p2, v7, :cond_0

    const/high16 v7, 0x800

    if-eq p2, v7, :cond_0

    .line 247
    const/4 v7, 0x0

    .line 280
    :goto_0
    return v7

    .line 249
    :cond_0
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    .line 251
    .local v3, permission:I
    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 252
    .local v0, allowedByPermission:Z
    :goto_1
    if-nez v0, :cond_2

    .line 253
    const/4 v7, 0x1

    goto :goto_0

    .line 251
    .end local v0           #allowedByPermission:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 256
    .restart local v0       #allowedByPermission:Z
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    .line 257
    .local v2, packages:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 258
    .local v6, settings:Lcom/android/server/pm/Settings;
    monitor-enter v2

    .line 259
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    .line 260
    .local v4, pkg:Landroid/content/pm/PackageParser$Package;
    iget-object v7, v6, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 261
    .local v5, pkgSetting:Lcom/android/server/pm/PackageSetting;
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    .line 262
    const/high16 v7, -0x8000

    if-ne p2, v7, :cond_5

    .line 263
    const/high16 v7, -0x8000

    invoke-static {v5, v4, v7, p3}, Lcom/android/server/pm/Injector$PackageManagerServiceHook;->updateApplicationFlags(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;II)V

    .line 278
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 280
    :cond_4
    const/4 v7, 0x1

    monitor-exit v2

    goto :goto_0

    .line 281
    .end local v4           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v5           #pkgSetting:Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v7

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 264
    .restart local v4       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v5       #pkgSetting:Lcom/android/server/pm/PackageSetting;
    :cond_5
    const/high16 v7, 0x4000

    if-ne p2, v7, :cond_7

    .line 265
    :try_start_1
    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_6

    .line 266
    iget v7, v5, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    const v8, -0x40000001

    and-int/2addr v7, v8

    iput v7, v5, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 267
    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const v9, -0x40000001

    and-int/2addr v8, v9

    iput v8, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 269
    :cond_6
    const/high16 v7, 0x400

    invoke-static {v5, v4, v7, p3}, Lcom/android/server/pm/Injector$PackageManagerServiceHook;->updateApplicationFlags(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;II)V

    goto :goto_2

    .line 270
    :cond_7
    const/high16 v7, 0x800

    if-ne p2, v7, :cond_3

    .line 271
    const/high16 v7, 0x200

    invoke-static {v5, v4, v7, p3}, Lcom/android/server/pm/Injector$PackageManagerServiceHook;->updateApplicationFlags(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;II)V

    .line 272
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v8, "appops"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 273
    .local v1, appOps:Landroid/app/AppOpsManager;
    const/16 v8, 0x18

    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x200

    and-int/2addr v7, v11

    const/high16 v11, 0x200

    if-ne v7, v11, :cond_8

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v1, v8, v9, v10, v7}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_8
    const/4 v7, 0x1

    goto :goto_3
.end method

.method public static throwChangeStateException(Lcom/android/server/pm/PackageSetting;I)V
    .locals 5
    .parameter "pkgSetting"
    .parameter "uid"

    .prologue
    .line 330
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: attempt to change component state from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", package uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", calling pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4}, Lmiui/os/Process;->getCallerPackageName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static updateApplicationFlags(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;II)V
    .locals 3
    .parameter "pkgSetting"
    .parameter "pkg"
    .parameter "updateFlags"
    .parameter "flags"

    .prologue
    .line 235
    if-ne p3, p2, :cond_0

    .line 236
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 237
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v1, p2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 242
    :goto_0
    return-void

    .line 239
    :cond_0
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 240
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0
.end method
