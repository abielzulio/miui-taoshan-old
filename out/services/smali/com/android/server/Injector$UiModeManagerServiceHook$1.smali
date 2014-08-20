.class final Lcom/android/server/Injector$UiModeManagerServiceHook$1;
.super Landroid/database/ContentObserver;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/Injector$UiModeManagerServiceHook;->registerUIModeScaleChangedOjbserver(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$service:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/android/server/UiModeManagerService;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 327
    iput-object p2, p0, Lcom/android/server/Injector$UiModeManagerServiceHook$1;->val$service:Lcom/android/server/UiModeManagerService;

    iput-object p3, p0, Lcom/android/server/Injector$UiModeManagerServiceHook$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    .line 330
    iget-object v1, p0, Lcom/android/server/Injector$UiModeManagerServiceHook$1;->val$service:Lcom/android/server/UiModeManagerService;

    iget-object v2, v1, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/android/server/Injector$UiModeManagerServiceHook$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "ui_mode_scale"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 335
    .local v0, type:I
    iget-object v1, p0, Lcom/android/server/Injector$UiModeManagerServiceHook$1;->val$service:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/UiModeManagerService;->setDefaultUiModeType(I)V

    .line 336
    monitor-exit v2

    .line 337
    return-void

    .line 336
    .end local v0           #type:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
