.class public Lcom/miui/server/SecurityManagerService;
.super Lmiui/security/ISecurityManager$Stub;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/SecurityManagerService$MyPackageMonitor;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SecurityManagerService"


# instance fields
.field private mAdSettings:Lmiui/security/adfirewall/AdFireWallSettings;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPackageMonitor:Lcom/miui/server/SecurityManagerService$MyPackageMonitor;

.field private mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const-string v0, "miui_security"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0}, Lmiui/security/ISecurityManager$Stub;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->initForKK()V

    .line 61
    sget-boolean v0, Lmiui/security/adfirewall/AdFireWall;->FEATURE_DISABLED:Z

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;-><init>(Lcom/miui/server/SecurityManagerService;)V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mPackageMonitor:Lcom/miui/server/SecurityManagerService$MyPackageMonitor;

    .line 63
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mPackageMonitor:Lcom/miui/server/SecurityManagerService$MyPackageMonitor;

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 65
    :cond_0
    new-instance v0, Lmiui/security/adfirewall/AdFireWallSettings;

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lmiui/security/adfirewall/AdFireWallSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAdSettings:Lmiui/security/adfirewall/AdFireWallSettings;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/miui/server/SecurityManagerService;)Lmiui/security/adfirewall/AdFireWallSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAdSettings:Lmiui/security/adfirewall/AdFireWallSettings;

    return-object v0
.end method

.method private initForKK()V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SecurityManagerService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 70
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 71
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mHandler:Landroid/os/Handler;

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 73
    new-instance v0, Lcom/miui/server/SecuritySmsHandler;

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/miui/server/SecuritySmsHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    .line 75
    :cond_0
    return-void
.end method

.method private native nativeKillPackageProcesses(ILjava/lang/String;)V
.end method


# virtual methods
.method public checkSmsBlocked(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    invoke-virtual {v0, p1}, Lcom/miui/server/SecuritySmsHandler;->checkSmsBlocked(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public getAdAppForPackage(Ljava/lang/String;)Lmiui/security/adfirewall/AdApp;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAdSettings:Lmiui/security/adfirewall/AdFireWallSettings;

    invoke-virtual {v0, p1}, Lmiui/security/adfirewall/AdFireWallSettings;->getAdAppForPackage(Ljava/lang/String;)Lmiui/security/adfirewall/AdApp;

    move-result-object v0

    return-object v0
.end method

.method public getAdApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/security/adfirewall/AdApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAdSettings:Lmiui/security/adfirewall/AdFireWallSettings;

    invoke-virtual {v0}, Lmiui/security/adfirewall/AdFireWallSettings;->getAdApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdCount(Ljava/lang/String;)I
    .locals 1
    .parameter "packageName"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAdSettings:Lmiui/security/adfirewall/AdFireWallSettings;

    invoke-virtual {v0, p1}, Lmiui/security/adfirewall/AdFireWallSettings;->getAdCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAdRule(Ljava/lang/String;)Lmiui/security/adfirewall/AdRule;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAdSettings:Lmiui/security/adfirewall/AdFireWallSettings;

    invoke-virtual {v0, p1}, Lmiui/security/adfirewall/AdFireWallSettings;->getAdRule(Ljava/lang/String;)Lmiui/security/adfirewall/AdRule;

    move-result-object v0

    return-object v0
.end method

.method public getAdSdks(I)Ljava/util/List;
    .locals 1
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lmiui/security/adfirewall/AdSdk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAdSettings:Lmiui/security/adfirewall/AdFireWallSettings;

    invoke-virtual {v0, p1}, Lmiui/security/adfirewall/AdFireWallSettings;->getAdSdk(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdSdksForPackage(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .parameter "packageName"
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lmiui/security/adfirewall/AdSdk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAdSettings:Lmiui/security/adfirewall/AdFireWallSettings;

    invoke-virtual {v0, p1, p2}, Lmiui/security/adfirewall/AdFireWallSettings;->getAdSdkForPackage(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdVersions([I)V
    .locals 1
    .parameter "versions"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAdSettings:Lmiui/security/adfirewall/AdFireWallSettings;

    invoke-virtual {v0, p1}, Lmiui/security/adfirewall/AdFireWallSettings;->getAdVersions([I)V

    .line 153
    return-void
.end method

.method public getPackageNameByPid(I)Ljava/lang/String;
    .locals 1
    .parameter "pid"

    .prologue
    .line 85
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public killNativePackageProcesses(ILjava/lang/String;)V
    .locals 1
    .parameter "uid"
    .parameter "pkgName"

    .prologue
    .line 79
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecurityManagerService;->nativeKillPackageProcesses(ILjava/lang/String;)V

    .line 81
    :cond_0
    return-void
.end method

.method public registerAdCallback(Ljava/lang/String;Lmiui/security/adfirewall/IAdFireWallCallback;)V
    .locals 1
    .parameter "packageName"
    .parameter "callback"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAdSettings:Lmiui/security/adfirewall/AdFireWallSettings;

    invoke-virtual {v0, p1, p2}, Lmiui/security/adfirewall/AdFireWallSettings;->registerAdCallback(Ljava/lang/String;Lmiui/security/adfirewall/IAdFireWallCallback;)V

    .line 113
    return-void
.end method

.method public setAdBlockState(Z)V
    .locals 1
    .parameter "block"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAdSettings:Lmiui/security/adfirewall/AdFireWallSettings;

    invoke-virtual {v0, p1}, Lmiui/security/adfirewall/AdFireWallSettings;->setAdBlockState(Z)V

    .line 145
    return-void
.end method

.method public setAdBlockStateForPackage(Ljava/lang/String;Z)V
    .locals 1
    .parameter "packageName"
    .parameter "block"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAdSettings:Lmiui/security/adfirewall/AdFireWallSettings;

    invoke-virtual {v0, p1, p2}, Lmiui/security/adfirewall/AdFireWallSettings;->setAdBlockStateForPackage(Ljava/lang/String;Z)V

    .line 141
    return-void
.end method

.method public setAdDisabled(Z)V
    .locals 1
    .parameter "disabled"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAdSettings:Lmiui/security/adfirewall/AdFireWallSettings;

    invoke-virtual {v0, p1}, Lmiui/security/adfirewall/AdFireWallSettings;->setAdDisabled(Z)V

    .line 157
    return-void
.end method

.method public startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "pkgName"
    .parameter "sender"
    .parameter "count"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/server/SecuritySmsHandler;->startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public stopInterceptSmsBySender()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    invoke-virtual {v0}, Lcom/miui/server/SecuritySmsHandler;->stopInterceptSmsBySender()Z

    move-result v0

    return v0
.end method

.method public updateAdData(Ljava/util/Map;ILjava/util/Map;IZ)V
    .locals 6
    .parameter "sdks"
    .parameter "version"
    .parameter "wlist"
    .parameter "wversion"
    .parameter "isDiff"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAdSettings:Lmiui/security/adfirewall/AdFireWallSettings;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lmiui/security/adfirewall/AdFireWallSettings;->updateAdData(Ljava/util/Map;ILjava/util/Map;IZ)V

    .line 149
    return-void
.end method
