.class public Lcom/android/server/pm/ExtraPackageManagerServices;
.super Ljava/lang/Object;
.source "ExtraPackageManagerServices.java"


# static fields
.field private static final ALL_CUSTOMIZED_RPEINSTALL_APP_LIST:Ljava/lang/String; = "custapplist"

.field private static final AUTO_START_PROPERTY:Ljava/lang/String; = "persist.sys.auto-start.once"

.field private static final BLOCK_APPS:[[Ljava/lang/String; = null

.field private static final CUSTOMIZED_PREINSTALL_APP_LIST:Ljava/lang/String; = "applist"

.field private static final IGNORE_APP_LIST_FILE:Ljava/lang/String; = "/system/etc/ignore_app_list"

.field private static final INSTALL_DIR:Ljava/lang/String; = "/data/app/"

.field private static final PREINSTALL_HISTORY_FILE:Ljava/lang/String; = "/data/system/preinstall_history"

.field private static final REINSTALL_MARK_FILE:Ljava/lang/String; = "reinstall_apps"

.field private static final TAG:Ljava/lang/String; = "ExtraPackageManagerServices"

.field private static final WHITE_LIST:[Ljava/lang/String;

.field private static sIgnoreApks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIgnorePreinstallApks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/ExtraPackageManagerServices;->sIgnorePreinstallApks:Ljava/util/Set;

    .line 43
    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/android/server/pm/ExtraPackageManagerServices;->sIgnorePreinstallApks:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getMIUIAppDirectoryPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ota-miui-MiTagApp.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    :goto_0
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cn.cj.pe"

    aput-object v1, v0, v4

    const-string v1, "cn.com.fetion"

    aput-object v1, v0, v5

    const-string v1, "cn.etouch.ecalendar"

    aput-object v1, v0, v6

    const-string v1, "com.alibaba.mobileim"

    aput-object v1, v0, v7

    const-string v1, "com.corp21cn.mail189"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "com.duowan.mobile"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.google.android.gm"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.google.android.talk"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.hy.minifetion"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.immomo.momo"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.miui.weather2"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.moji.mjweather"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.netease.mobimail"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.skype.raider"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.skype.rover"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.taobao.wwseller"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.tencent.minihd.qq"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.tencent.mm"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.tencent.mobileqq"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.whatsapp"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.when.android.calendar365"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.xiaomi.channel"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.zdworks.android.zdcalendar"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.zdworks.android.zdclock"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "jp.naver.line.android"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "sina.mobile.tianqitong"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/pm/ExtraPackageManagerServices;->WHITE_LIST:[Ljava/lang/String;

    .line 387
    new-array v0, v6, [[Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.jeejen.home"

    aput-object v2, v1, v4

    const-string v2, "com.jeejen.contact"

    aput-object v2, v1, v5

    const-string v2, "com.jeejen.jjbox"

    aput-object v2, v1, v6

    const-string v2, "com.jeejen.helper"

    aput-object v2, v1, v7

    const-string v2, "com.jeejen.family.miui"

    aput-object v2, v1, v3

    const/4 v2, 0x5

    const-string v3, "com.jeejen.family.miui.mms"

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "com.miui.home"

    aput-object v2, v1, v4

    const-string v2, "com.android.mms"

    aput-object v2, v1, v5

    const-string v2, "com.android.contacts"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/pm/ExtraPackageManagerServices;->BLOCK_APPS:[[Ljava/lang/String;

    .line 411
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/ExtraPackageManagerServices;->sIgnoreApks:Ljava/util/Set;

    .line 413
    invoke-static {}, Lcom/android/server/pm/ExtraPackageManagerServices;->readIgnoreApks()V

    .line 414
    return-void

    .line 46
    :cond_0
    sget-object v0, Lcom/android/server/pm/ExtraPackageManagerServices;->sIgnorePreinstallApks:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getMIUIAppDirectoryPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "partner-XMRemoteController.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addIgnoreApk(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 417
    sget-object v0, Lcom/android/server/pm/ExtraPackageManagerServices;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 418
    return-void
.end method

.method public static blockAutoStartedApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/Settings;)V
    .locals 2
    .parameter "context"
    .parameter "info"
    .parameter "curPkgSettings"

    .prologue
    const/4 v0, 0x0

    .line 374
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    const-string v1, "persist.sys.auto-start.once"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/pm/ExtraPackageManagerServices;->blockAutoStartedAppInternal(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/Settings;Z)V

    goto :goto_0
.end method

.method private static blockAutoStartedAppInternal(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/Settings;Z)V
    .locals 8
    .parameter "context"
    .parameter "info"
    .parameter "curPkgSettings"
    .parameter "forceApply"

    .prologue
    const/4 v2, 0x1

    const/high16 v3, 0x400

    .line 351
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 352
    .local v4, uid:I
    invoke-static {v4}, Landroid/os/UserId;->getUserId(I)I

    move-result v5

    .line 353
    .local v5, userId:I
    const/high16 v6, 0x4000

    .line 354
    .local v6, OLD_BIT:I
    iget-object v0, p2, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 355
    .local v7, pkgSetting:Lcom/android/server/pm/PackageSetting;
    if-eqz v7, :cond_1

    .line 356
    if-eqz p3, :cond_0

    invoke-static {p1}, Lcom/android/server/pm/ExtraPackageManagerServices;->isThirdPartyApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/pm/ExtraPackageManagerServices;->inNameWhiteList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v0, v3

    iput v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 358
    iget v0, v7, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    or-int/2addr v0, v3

    iput v0, v7, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 362
    :cond_0
    invoke-static {p1}, Lcom/android/server/pm/ExtraPackageManagerServices;->isThirdPartyApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 363
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v0, v3

    iput v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 364
    iget v0, v7, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    or-int/2addr v0, v3

    iput v0, v7, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 368
    :cond_1
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 369
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v0, p2

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->setPackageStoppedStateLPw(Ljava/lang/String;ZZII)Z

    .line 371
    :cond_2
    return-void
.end method

.method public static checkPackageForUserModeLPw(Lcom/android/server/pm/PackageSetting;)V
    .locals 8
    .parameter "ps"

    .prologue
    .line 394
    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v5

    .line 395
    .local v5, userMode:I
    const/4 v4, 0x0

    .local v4, mode:I
    :goto_0
    sget-object v6, Lcom/android/server/pm/ExtraPackageManagerServices;->BLOCK_APPS:[[Ljava/lang/String;

    array-length v6, v6

    if-ge v4, v6, :cond_4

    .line 396
    sget-object v6, Lcom/android/server/pm/ExtraPackageManagerServices;->BLOCK_APPS:[[Ljava/lang/String;

    aget-object v1, v6, v4

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .line 397
    .local v0, app:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 398
    :cond_0
    if-eq v5, v4, :cond_2

    const/4 v6, 0x1

    :goto_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 396
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 398
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 395
    .end local v0           #app:Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 402
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_4
    return-void
.end method

.method private static deleteOdexFile(Ljava/lang/String;)V
    .locals 4
    .parameter "apkName"

    .prologue
    .line 135
    const-string v2, ".apk"

    const-string v3, ".odex"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, odexName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/app/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, installOdex:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 140
    :cond_0
    return-void
.end method

.method static ignoreApk(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 459
    sget-object v0, Lcom/android/server/pm/ExtraPackageManagerServices;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static inCloudWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 404
    sget-object v0, Lmiui/provider/CloudAppControll$TAG;->TAG_AUTO_START:Lmiui/provider/CloudAppControll$TAG;

    invoke-static {p0, v0, p1}, Lmiui/provider/CloudAppControll;->get(Landroid/content/Context;Lmiui/provider/CloudAppControll$TAG;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static inNameWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 384
    invoke-static {p1}, Lcom/android/server/pm/ExtraPackageManagerServices;->inWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/server/pm/ExtraPackageManagerServices;->inCloudWhiteList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static inWhiteList(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    .line 344
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/server/pm/ExtraPackageManagerServices;->WHITE_LIST:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 345
    sget-object v1, Lcom/android/server/pm/ExtraPackageManagerServices;->WHITE_LIST:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 347
    :goto_1
    return v1

    .line 344
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static installPreinstallApp(Ljava/io/File;)V
    .locals 4
    .parameter "apkFile"

    .prologue
    .line 143
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, apkName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/app/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, installApk:Ljava/io/File;
    invoke-static {p0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 146
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 147
    invoke-static {v0}, Lcom/android/server/pm/ExtraPackageManagerServices;->deleteOdexFile(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method private static final isPackageFilename(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 151
    if-eqz p0, :cond_0

    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isThirdPartyApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    const/4 v0, 0x1

    .line 335
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return v0

    .line 337
    :cond_1
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 340
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static packagePermissionsUpdate(Lcom/android/server/pm/Settings;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    .locals 8
    .parameter "curPkgSettings"
    .parameter "ps"
    .parameter "pkg"

    .prologue
    .line 167
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v6, :cond_1

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 168
    .local v2, gp:Lcom/android/server/pm/GrantedPermissions;
    :goto_0
    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 169
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 170
    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 171
    .local v4, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/BasePermission;

    .line 172
    .local v1, bp:Lcom/android/server/pm/BasePermission;
    if-eqz v1, :cond_0

    .line 173
    iget-object v5, v1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    .line 174
    .local v5, perm:Ljava/lang/String;
    iget-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 175
    iget-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    iget-object v7, v1, Lcom/android/server/pm/BasePermission;->gids:[I

    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->appendInts([I[I)[I

    move-result-object v6

    iput-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    .line 169
    .end local v5           #perm:Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #N:I
    .end local v1           #bp:Lcom/android/server/pm/BasePermission;
    .end local v2           #gp:Lcom/android/server/pm/GrantedPermissions;
    .end local v3           #i:I
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    move-object v2, p1

    .line 167
    goto :goto_0

    .line 177
    .restart local v0       #N:I
    .restart local v1       #bp:Lcom/android/server/pm/BasePermission;
    .restart local v2       #gp:Lcom/android/server/pm/GrantedPermissions;
    .restart local v3       #i:I
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #perm:Ljava/lang/String;
    :cond_2
    iget-boolean v6, p1, Lcom/android/server/pm/PackageSetting;->haveGids:Z

    if-nez v6, :cond_0

    .line 178
    iget-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    iget-object v7, v1, Lcom/android/server/pm/BasePermission;->gids:[I

    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->appendInts([I[I)[I

    move-result-object v6

    iput-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    goto :goto_2

    .line 182
    .end local v1           #bp:Lcom/android/server/pm/BasePermission;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #perm:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static parsePackage(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;
    .locals 5
    .parameter "apkFile"

    .prologue
    .line 155
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, apkPath:Ljava/lang/String;
    const/4 v1, 0x4

    .line 157
    .local v1, parseFlags:I
    new-instance v3, Landroid/content/pm/PackageParser;

    invoke-direct {v3, v0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 158
    .local v3, pp:Landroid/content/pm/PackageParser;
    const/4 v4, 0x0

    invoke-virtual {v3, p0, v0, v4, v1}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 159
    .local v2, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_0

    .line 160
    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z

    .line 162
    :cond_0
    return-object v2
.end method

.method public static performPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V
    .locals 32
    .parameter "pm"
    .parameter "curPkgSettings"

    .prologue
    .line 209
    invoke-static {}, Lmiui/os/Environment;->getMIUIAppDirectory()Ljava/io/File;

    move-result-object v21

    .line 210
    .local v21, preinstallAppDir:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lmiui/os/Environment;->getMIUIAppDirectory()Ljava/io/File;

    move-result-object v28

    const-string v29, "custapplist"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    .local v3, allCustomizedPreinstallAppListFile:Ljava/io/File;
    new-instance v10, Ljava/io/File;

    invoke-static {}, Lmiui/os/Environment;->getMIUICustomizedDirectory()Ljava/io/File;

    move-result-object v28

    const-string v29, "applist"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    .local v10, customizedPreinstallAppListFile:Ljava/io/File;
    new-instance v26, Ljava/io/File;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getMIUIDataDirectoryPath()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "reinstall_apps"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v26, reinstallMarkFile:Ljava/io/File;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 217
    .local v4, allCustomizedPreinstallAppSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 220
    .local v11, customizedPreinstallAppSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 222
    .local v24, preinstallHistoryMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 223
    .local v8, currentTime:J
    const-string v28, "ExtraPackageManagerServices"

    const-string v29, "preinstall app start"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {v3, v4}, Lcom/android/server/pm/ExtraPackageManagerServices;->readLineToSet(Ljava/io/File;Ljava/util/Set;)V

    .line 228
    invoke-static {v10, v11}, Lcom/android/server/pm/ExtraPackageManagerServices;->readLineToSet(Ljava/io/File;Ljava/util/Set;)V

    .line 231
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v23, preinstallAppFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 233
    .local v6, apps:[Ljava/io/File;
    if-eqz v6, :cond_3

    .line 234
    move-object v7, v6

    .local v7, arr$:[Ljava/io/File;
    array-length v0, v7

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_3

    aget-object v5, v7, v14

    .line 235
    .local v5, app:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    .line 236
    .local v12, fn:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/pm/ExtraPackageManagerServices;->isPackageFilename(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_1

    .line 234
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 239
    :cond_1
    invoke-interface {v4, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 241
    :cond_2
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 246
    .end local v5           #app:Ljava/io/File;
    .end local v7           #arr$:[Ljava/io/File;
    .end local v12           #fn:Ljava/lang/String;
    .end local v14           #i$:I
    .end local v16           #len$:I
    :cond_3
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_4

    .line 247
    const-string v28, "ExtraPackageManagerServices"

    const-string v29, "No apps need preinstall"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_2
    return-void

    .line 251
    :cond_4
    const-string v28, "/data/system/preinstall_history"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/pm/ExtraPackageManagerServices;->readPreinstallAppHistory(Ljava/lang/String;Ljava/util/Map;)V

    .line 253
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v15

    .line 254
    .local v15, isNeedReinstall:Z
    const/16 v18, 0x0

    .line 255
    .local v18, needRewriteHistrory:Z
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/io/File;

    .line 256
    .local v22, preinstallAppFile:Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/pm/ExtraPackageManagerServices;->isPackageFilename(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_5

    sget-object v28, Lcom/android/server/pm/ExtraPackageManagerServices;->sIgnorePreinstallApks:Ljava/util/Set;

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_5

    .line 262
    const/4 v13, 0x0

    .line 263
    .local v13, hasRecorded:Z
    const-wide/16 v19, -0x1

    .line 264
    .local v19, preMtime:J
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 265
    const/4 v13, 0x1

    .line 266
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Long;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 271
    :cond_6
    if-nez v15, :cond_7

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->lastModified()J

    move-result-wide v28

    cmp-long v28, v19, v28

    if-eqz v28, :cond_5

    .line 275
    :cond_7
    invoke-static/range {v22 .. v22}, Lcom/android/server/pm/ExtraPackageManagerServices;->parsePackage(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v25

    .line 276
    .local v25, preinstallPkg:Landroid/content/pm/PackageParser$Package;
    if-nez v25, :cond_8

    .line 277
    const-string v28, "ExtraPackageManagerServices"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "preinstall app "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " package parser fail!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 281
    :cond_8
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->peekPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v27

    .line 284
    .local v27, userPkgSetting:Lcom/android/server/pm/PackageSetting;
    if-eqz v27, :cond_e

    .line 286
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v28

    if-nez v28, :cond_b

    const/16 v17, 0x1

    .line 288
    .local v17, match:Z
    :goto_4
    if-nez v17, :cond_9

    .line 289
    const-string v28, "ExtraPackageManagerServices"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " mismatch signature with "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_9
    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    move/from16 v28, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/PackageSetting;->versionCode:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_a

    if-nez v17, :cond_d

    .line 294
    :cond_a
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x1

    if-nez v28, :cond_c

    .line 295
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->deleteDataPackage(Ljava/lang/String;Z)Z

    move-result v28

    if-nez v28, :cond_c

    .line 296
    const-string v28, "ExtraPackageManagerServices"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "delete "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " failed"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 286
    .end local v17           #match:Z
    :cond_b
    const/16 v17, 0x0

    goto :goto_4

    .line 300
    .restart local v17       #match:Z
    :cond_c
    invoke-static/range {v22 .. v22}, Lcom/android/server/pm/ExtraPackageManagerServices;->installPreinstallApp(Ljava/io/File;)V

    .line 304
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/ExtraPackageManagerServices;->packagePermissionsUpdate(Lcom/android/server/pm/Settings;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)V

    .line 306
    :cond_d
    const/16 v18, 0x1

    .line 307
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->lastModified()J

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v28, "ExtraPackageManagerServices"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "update preinstall app ["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "] mtime["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->lastModified()J

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 311
    .end local v17           #match:Z
    :cond_e
    if-eqz v13, :cond_f

    if-eqz v15, :cond_5

    .line 312
    :cond_f
    invoke-static/range {v22 .. v22}, Lcom/android/server/pm/ExtraPackageManagerServices;->installPreinstallApp(Ljava/io/File;)V

    .line 313
    const/16 v18, 0x1

    .line 314
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->lastModified()J

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v28, "ExtraPackageManagerServices"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "new preinstall app ["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "] mtime["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->lastModified()J

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 320
    .end local v13           #hasRecorded:Z
    .end local v19           #preMtime:J
    .end local v22           #preinstallAppFile:Ljava/io/File;
    .end local v25           #preinstallPkg:Landroid/content/pm/PackageParser$Package;
    .end local v27           #userPkgSetting:Lcom/android/server/pm/PackageSetting;
    :cond_10
    if-eqz v18, :cond_11

    .line 321
    const-string v28, "/data/system/preinstall_history"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/pm/ExtraPackageManagerServices;->writePreinstallAppHistory(Ljava/lang/String;Ljava/util/Map;)V

    .line 324
    :cond_11
    if-eqz v15, :cond_12

    .line 325
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 327
    :cond_12
    const-string v28, "ExtraPackageManagerServices"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "preinstall app end, consume "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    sub-long v30, v30, v8

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public static postProcessNewInstall(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/Settings;)V
    .locals 1
    .parameter "context"
    .parameter "info"
    .parameter "curPkgSettings"

    .prologue
    .line 379
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/pm/ExtraPackageManagerServices;->blockAutoStartedAppInternal(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/Settings;Z)V

    goto :goto_0
.end method

.method public static postScanPackages()V
    .locals 2

    .prologue
    .line 331
    const-string v0, "persist.sys.auto-start.once"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method static readIgnoreApks()V
    .locals 10

    .prologue
    .line 421
    new-instance v5, Ljava/io/File;

    const-string v8, "/system/etc/ignore_app_list"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 422
    .local v5, installHistoryFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 456
    :goto_0
    return-void

    .line 425
    :cond_0
    const/4 v3, 0x0

    .line 426
    .local v3, fileReader:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 428
    .local v0, bufferReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    .line 429
    .end local v3           #fileReader:Ljava/io/FileReader;
    .local v4, fileReader:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 430
    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .local v1, bufferReader:Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 432
    .local v6, line:Ljava/lang/String;
    :try_start_2
    invoke-static {}, Lmiui/os/Build;->getCustVariant()Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, custVariant:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v8

    if-eqz v8, :cond_1

    .line 448
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 452
    :goto_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 453
    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .end local v2           #custVariant:Ljava/lang/String;
    .end local v4           #fileReader:Ljava/io/FileReader;
    .end local v6           #line:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_0

    .line 436
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    .restart local v2       #custVariant:Ljava/lang/String;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    .restart local v6       #line:Ljava/lang/String;
    :cond_1
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 437
    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 438
    .local v7, ss:[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 441
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 442
    sget-object v8, Lcom/android/server/pm/ExtraPackageManagerServices;->sIgnoreApks:Ljava/util/Set;

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 445
    .end local v2           #custVariant:Ljava/lang/String;
    .end local v7           #ss:[Ljava/lang/String;
    :catch_1
    move-exception v8

    move-object v0, v1

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    move-object v3, v4

    .line 448
    .end local v4           #fileReader:Ljava/io/FileReader;
    .end local v6           #line:Ljava/lang/String;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 452
    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 448
    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    .restart local v2       #custVariant:Ljava/lang/String;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    .restart local v6       #line:Ljava/lang/String;
    :cond_2
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 452
    :goto_5
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :goto_6
    move-object v0, v1

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    move-object v3, v4

    .line 455
    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_0

    .line 447
    .end local v2           #custVariant:Ljava/lang/String;
    .end local v6           #line:Ljava/lang/String;
    :catchall_0
    move-exception v8

    .line 448
    :goto_7
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 452
    :goto_8
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 447
    :goto_9
    throw v8

    .line 449
    :catch_2
    move-exception v8

    goto :goto_4

    :catch_3
    move-exception v9

    goto :goto_8

    .line 453
    :catch_4
    move-exception v9

    goto :goto_9

    .line 449
    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    .restart local v2       #custVariant:Ljava/lang/String;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    .restart local v6       #line:Ljava/lang/String;
    :catch_5
    move-exception v8

    goto :goto_1

    :catch_6
    move-exception v8

    goto :goto_5

    .line 453
    :catch_7
    move-exception v8

    goto :goto_6

    .line 447
    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .end local v2           #custVariant:Ljava/lang/String;
    .end local v6           #line:Ljava/lang/String;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_7

    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    .restart local v6       #line:Ljava/lang/String;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_7

    .line 445
    .end local v6           #line:Ljava/lang/String;
    :catch_8
    move-exception v8

    goto :goto_3

    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :catch_9
    move-exception v8

    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_3
.end method

.method private static readLineToSet(Ljava/io/File;Ljava/util/Set;)V
    .locals 6
    .parameter "file"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 188
    .local v0, buffer:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    .end local v0           #buffer:Ljava/io/BufferedReader;
    .local v1, buffer:Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 192
    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 194
    .end local v3           #line:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 195
    .end local v1           #buffer:Ljava/io/BufferedReader;
    .restart local v0       #buffer:Ljava/io/BufferedReader;
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 206
    .end local v0           #buffer:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    return-void

    .line 196
    .restart local v0       #buffer:Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 197
    .local v2, e:Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 200
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 201
    :catch_2
    move-exception v2

    .line 202
    .end local v0           #buffer:Ljava/io/BufferedReader;
    :goto_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 199
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #buffer:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v4

    .line 200
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 199
    :goto_6
    throw v4

    .line 201
    :catch_3
    move-exception v2

    .line 202
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 201
    .local v2, e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    goto :goto_4

    .line 200
    .end local v0           #buffer:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #buffer:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_1
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_2

    .line 201
    :catch_5
    move-exception v2

    goto :goto_4

    .line 199
    .end local v3           #line:Ljava/lang/String;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #buffer:Ljava/io/BufferedReader;
    .restart local v0       #buffer:Ljava/io/BufferedReader;
    goto :goto_5

    .line 196
    .end local v0           #buffer:Ljava/io/BufferedReader;
    .restart local v1       #buffer:Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #buffer:Ljava/io/BufferedReader;
    .restart local v0       #buffer:Ljava/io/BufferedReader;
    goto :goto_3

    .line 194
    :catch_7
    move-exception v2

    goto :goto_1
.end method

.method private static readPreinstallAppHistory(Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .parameter "filePath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, preinstallHistoryMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v3, installHistoryFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 110
    .end local v3           #installHistoryFile:Ljava/io/File;
    :goto_0
    return-void

    .line 87
    .restart local v3       #installHistoryFile:Ljava/io/File;
    :cond_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 88
    .local v2, fileReader:Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 89
    .local v0, bufferReader:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 91
    .local v4, line:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 92
    const-string v8, ":"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 93
    .local v7, ss:[Ljava/lang/String;
    if-eqz v7, :cond_1

    array-length v8, v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 97
    const-wide/16 v5, 0x0

    .line 99
    .local v5, mtime:J
    const/4 v8, 0x1

    :try_start_1
    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v5

    .line 103
    const/4 v8, 0x0

    :try_start_2
    aget-object v8, v7, v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {p1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 108
    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .end local v2           #fileReader:Ljava/io/FileReader;
    .end local v3           #installHistoryFile:Ljava/io/File;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #mtime:J
    .end local v7           #ss:[Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_0

    .line 100
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    .restart local v2       #fileReader:Ljava/io/FileReader;
    .restart local v3       #installHistoryFile:Ljava/io/File;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #mtime:J
    .restart local v7       #ss:[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 101
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 106
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v5           #mtime:J
    .end local v7           #ss:[Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 107
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private static writePreinstallAppHistory(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .parameter "filePath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, preinstallHistoryMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v3, installHistoryFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 117
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 120
    :cond_0
    new-instance v1, Ljava/io/FileWriter;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 121
    .local v1, fileWriter:Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 123
    .local v0, bufferWriter:Ljava/io/BufferedWriter;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 124
    .local v4, r:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 125
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    .end local v0           #bufferWriter:Ljava/io/BufferedWriter;
    .end local v1           #fileWriter:Ljava/io/FileWriter;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #installHistoryFile:Ljava/io/File;
    .end local v4           #r:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :catch_0
    move-exception v5

    .line 132
    :goto_1
    return-void

    .line 128
    .restart local v0       #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v1       #fileWriter:Ljava/io/FileWriter;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #installHistoryFile:Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 129
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
