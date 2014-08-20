.class Lcom/android/server/Injector$StatusBarManagerServiceHook;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StatusBarManagerServiceHook"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Injector$StatusBarManagerServiceHook$StatusRecord;
    }
.end annotation


# static fields
.field static mStatusRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Injector$StatusBarManagerServiceHook$StatusRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/Injector$StatusBarManagerServiceHook;->mStatusRecords:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    return-void
.end method

.method static manageStatusListLocked(Lcom/android/server/StatusBarManagerService;ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 7
    .parameter "service"
    .parameter "what"
    .parameter "token"
    .parameter "pkg"

    .prologue
    const/4 v6, 0x0

    .line 280
    sget-object v5, Lcom/android/server/Injector$StatusBarManagerServiceHook;->mStatusRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 281
    .local v0, N:I
    const/4 v4, 0x0

    .line 283
    .local v4, tok:Lcom/android/server/Injector$StatusBarManagerServiceHook$StatusRecord;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 284
    sget-object v5, Lcom/android/server/Injector$StatusBarManagerServiceHook;->mStatusRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/Injector$StatusBarManagerServiceHook$StatusRecord;

    .line 285
    .local v3, t:Lcom/android/server/Injector$StatusBarManagerServiceHook$StatusRecord;
    iget-object v5, v3, Lcom/android/server/Injector$StatusBarManagerServiceHook$StatusRecord;->token:Landroid/os/IBinder;

    if-ne v5, p2, :cond_3

    .line 286
    move-object v4, v3

    .line 290
    .end local v3           #t:Lcom/android/server/Injector$StatusBarManagerServiceHook$StatusRecord;
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-nez v5, :cond_4

    .line 291
    :cond_1
    if-eqz v4, :cond_2

    .line 292
    sget-object v5, Lcom/android/server/Injector$StatusBarManagerServiceHook;->mStatusRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 293
    iget-object v5, v4, Lcom/android/server/Injector$StatusBarManagerServiceHook$StatusRecord;->token:Landroid/os/IBinder;

    invoke-interface {v5, v4, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 310
    :cond_2
    :goto_1
    return-void

    .line 283
    .restart local v3       #t:Lcom/android/server/Injector$StatusBarManagerServiceHook$StatusRecord;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 296
    .end local v3           #t:Lcom/android/server/Injector$StatusBarManagerServiceHook$StatusRecord;
    :cond_4
    if-nez v4, :cond_5

    .line 297
    new-instance v4, Lcom/android/server/Injector$StatusBarManagerServiceHook$StatusRecord;

    .end local v4           #tok:Lcom/android/server/Injector$StatusBarManagerServiceHook$StatusRecord;
    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/Injector$StatusBarManagerServiceHook$StatusRecord;-><init>(Lcom/android/server/Injector$1;)V

    .line 299
    .restart local v4       #tok:Lcom/android/server/Injector$StatusBarManagerServiceHook$StatusRecord;
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p2, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    sget-object v5, Lcom/android/server/Injector$StatusBarManagerServiceHook;->mStatusRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_5
    iput-object p2, v4, Lcom/android/server/Injector$StatusBarManagerServiceHook$StatusRecord;->token:Landroid/os/IBinder;

    .line 307
    iput-object p3, v4, Lcom/android/server/Injector$StatusBarManagerServiceHook$StatusRecord;->pkg:Ljava/lang/String;

    .line 308
    iput-object p0, v4, Lcom/android/server/Injector$StatusBarManagerServiceHook$StatusRecord;->service:Lcom/android/server/StatusBarManagerService;

    goto :goto_1

    .line 301
    :catch_0
    move-exception v1

    .line 302
    .local v1, ex:Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public static setStatus(Lcom/android/server/StatusBarManagerService;ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "service"
    .parameter "what"
    .parameter "token"
    .parameter "action"
    .parameter "ext"

    .prologue
    .line 313
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 314
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/Injector$StatusBarManagerServiceHook;->manageStatusListLocked(Lcom/android/server/StatusBarManagerService;ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 317
    :try_start_1
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p3, p4}, Lcom/android/internal/statusbar/IStatusBar;->setStatus(ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 321
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 322
    return-void

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 318
    :catch_0
    move-exception v0

    goto :goto_0
.end method
