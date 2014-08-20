.class public Lcom/android/server/am/Injector$ActivityManagerServiceHook;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityManagerServiceHook"
.end annotation


# static fields
.field static final sMonitorPrivacyPackage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/Injector$ActivityManagerServiceHook;->sMonitorPrivacyPackage:Ljava/util/HashSet;

    .line 73
    sget-object v0, Lcom/android/server/am/Injector$ActivityManagerServiceHook;->sMonitorPrivacyPackage:Ljava/util/HashSet;

    const-string v1, "com.miui.backup"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/android/server/am/Injector$ActivityManagerServiceHook;->sMonitorPrivacyPackage:Ljava/util/HashSet;

    const-string v1, "com.miui.notes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/android/server/am/Injector$ActivityManagerServiceHook;->sMonitorPrivacyPackage:Ljava/util/HashSet;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustMediaButtonReceivers(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;Landroid/content/Intent;)V
    .locals 0
    .parameter "ams"
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, receivers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    return-void
.end method

.method public static after_finishBooting(Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .parameter "ams"

    .prologue
    .line 120
    iget v0, p0, Lcom/android/server/am/ActivityManagerService;->mFactoryTest:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/ExtraActivityManagerService;->finishBooting(Landroid/content/Context;)V

    .line 122
    invoke-static {p0}, Lcom/android/server/am/Injector$ActivityManagerServiceHook;->monitorPrivacyModeChange(Lcom/android/server/am/ActivityManagerService;)V

    .line 124
    :cond_0
    return-void
.end method

.method public static before_ActivityManagerService()V
    .locals 0

    .prologue
    .line 116
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->init()V

    .line 117
    return-void
.end method

.method public static before_finishActivity(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;ILandroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .parameter "service"
    .parameter "token"
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 158
    if-nez p1, :cond_1

    .line 159
    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 161
    .local v1, top:Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lmiui/net/FirewallManager;->isAccessControlProtected(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmiui/net/FirewallManager;->checkAccessControlPass(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    iget-object p1, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    monitor-exit p0

    move-object v0, p1

    .line 168
    .end local v1           #top:Lcom/android/server/am/ActivityRecord;
    .end local p1
    .local v0, token:Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 166
    .end local v0           #token:Ljava/lang/Object;
    .restart local v1       #top:Lcom/android/server/am/ActivityRecord;
    .restart local p1
    :cond_0
    monitor-exit p0

    .end local v1           #top:Lcom/android/server/am/ActivityRecord;
    :cond_1
    move-object v0, p1

    .line 168
    .restart local v0       #token:Ljava/lang/Object;
    goto :goto_0

    .line 166
    .end local v0           #token:Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static before_forceStopPackageLocked(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)Z
    .locals 2
    .parameter "ams"
    .parameter "name"

    .prologue
    .line 127
    const-string v1, "android"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "who want force stop system_process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, ex:Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lmiui/util/ErrorReportUtils;->sendExceptionErrorReport(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 130
    const/4 v1, 0x0

    .line 132
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static getCallingUidPackage(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;)Ljava/lang/String;
    .locals 5
    .parameter "service"
    .parameter "token"

    .prologue
    const/4 v3, 0x0

    .line 198
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 199
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    if-nez v2, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-object v3

    .line 200
    :cond_1
    iget v0, v2, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 203
    .local v0, callingUid:I
    if-lez v0, :cond_0

    .line 205
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, packages:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 207
    const/4 v4, 0x0

    aget-object v3, v1, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    .end local v1           #packages:[Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static handleConfigurationChanges(Lcom/android/server/am/ActivityManagerService;ILandroid/content/res/Configuration;)V
    .locals 1
    .parameter "ams"
    .parameter "changes"
    .parameter "newConfig"

    .prologue
    .line 177
    invoke-static {}, Landroid/content/res/MiuiResources;->isPreloadedCacheEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, Lcom/android/server/AssetAtlasService;->disable()V

    .line 180
    :cond_0
    invoke-static {p1, p2}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V

    .line 181
    return-void
.end method

.method public static isForegroudApp(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .parameter "service"
    .parameter "app"
    .parameter "TOP_APP"

    .prologue
    const/4 v0, 0x1

    .line 190
    if-eq p1, p2, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keep_launcher_in_memory"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static monitorPrivacyModeChange(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 109
    return-void
.end method

.method public static showAppCrashDialog(Lcom/android/server/am/ActivityManagerService;Ljava/util/HashMap;)Z
    .locals 6
    .parameter "ams"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 48
    const-string v1, "app"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 49
    .local v4, proc:Lcom/android/server/am/ProcessRecord;
    const-string v1, "result"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppErrorResult;

    .line 50
    .local v3, res:Lcom/android/server/am/AppErrorResult;
    const-string v1, "crash"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 51
    .local v5, crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/provider/ExtraSettings$Secure;->isForceCloseDialogEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    new-instance v0, Lcom/android/server/am/AppErrorDialog;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 53
    .local v0, d:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 54
    iput-object v0, v4, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 63
    .end local v0           #d:Landroid/app/Dialog;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 56
    :cond_0
    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    .line 57
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, v5, v2}, Lcom/android/server/am/MiuiErrorReport;->sendFcErrorReport(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Z)V

    .line 61
    :cond_1
    invoke-virtual {v3, v2}, Lcom/android/server/am/AppErrorResult;->set(I)V

    goto :goto_0
.end method

.method public static useMiuiTheme(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 112
    const v0, 0x60d003a

    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    .line 113
    return-void
.end method
