.class public Lcom/android/server/am/Injector$ActivityStackHook;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityStackHook"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;
    }
.end annotation


# static fields
.field private static mCpuBooster:Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/Injector$ActivityStackHook;->mCpuBooster:Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    return-void
.end method

.method public static after_ActivityStack(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .parameter "stack"
    .parameter "service"

    .prologue
    .line 220
    new-instance v0, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V

    sput-object v0, Lcom/android/server/am/Injector$ActivityStackHook;->mCpuBooster:Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;

    .line 221
    return-void
.end method

.method public static before_startActivityLocked()V
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/android/server/am/Injector$ActivityStackHook;->mCpuBooster:Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;

    invoke-virtual {v0}, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;->start()V

    .line 225
    return-void
.end method

.method static checkAccessControl(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "aInfo"
    .parameter "intent"

    .prologue
    .line 299
    if-eqz p1, :cond_0

    .line 300
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v1, p2}, Lmiui/net/FirewallManager;->getCheckIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 302
    .local v0, checkIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 303
    move-object p2, v0

    .line 306
    .end local v0           #checkIntent:Landroid/content/Intent;
    :cond_0
    return-object p2
.end method

.method static checkRunningCompatibility(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .parameter "service"
    .parameter "context"
    .parameter "info"

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :goto_0
    invoke-static {p1, v0}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 327
    const/4 v0, 0x0

    .line 329
    :goto_1
    return v0

    .line 324
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 329
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static destroyHomeOrFinishing(Ljava/lang/String;Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .parameter "reason"
    .parameter "record"

    .prologue
    .line 236
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    const-string v0, "always-finish"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.miui.home"

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method static needRestartActivity(Lcom/android/server/am/ActivityRecord;I)Z
    .locals 2
    .parameter "r"
    .parameter "changes"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    invoke-static {v0, p1, v1}, Landroid/app/MiuiThemeHelper;->needRestartActivity(Ljava/lang/String;ILandroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method static resolveCheckIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;
    .locals 7
    .parameter "aInfo"
    .parameter "intent"
    .parameter "stack"
    .parameter "profileFile"
    .parameter "profileFd"
    .parameter "userId"

    .prologue
    .line 312
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "android.app.action.CHECK_ACCESS_CONTROL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    .line 316
    :cond_0
    return-object p0
.end method

.method public static setForegroundProcess(Lcom/android/server/am/ActivityStack;Z)Z
    .locals 3
    .parameter "stack"
    .parameter "resumed"

    .prologue
    .line 228
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 229
    .local v0, next:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x5b

    if-gt v1, v2, :cond_0

    if-eqz p1, :cond_0

    .line 230
    const-string v1, "sys.foreground_process"

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    return p1
.end method
