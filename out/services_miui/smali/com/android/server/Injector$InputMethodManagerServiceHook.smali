.class Lcom/android/server/Injector$InputMethodManagerServiceHook;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputMethodManagerServiceHook"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static after_handleMessage(Landroid/content/Intent;Landroid/os/Message;)Z
    .locals 4
    .parameter "intent"
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 171
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x3fc

    if-ne v2, v3, :cond_0

    .line 172
    invoke-static {p0, v0}, Lcom/android/server/Injector$InputMethodManagerServiceHook;->updateUsageStats(Landroid/content/Intent;Z)V

    .line 178
    :goto_0
    return v0

    .line 174
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x406

    if-ne v2, v3, :cond_1

    .line 175
    invoke-static {p0, v1}, Lcom/android/server/Injector$InputMethodManagerServiceHook;->updateUsageStats(Landroid/content/Intent;Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 178
    goto :goto_0
.end method

.method static updateUsageStats(Landroid/content/Intent;Z)V
    .locals 2
    .parameter "intent"
    .parameter "start"

    .prologue
    .line 182
    if-eqz p0, :cond_0

    .line 184
    if-eqz p1, :cond_1

    .line 185
    :try_start_0
    invoke-static {}, Lcom/android/server/am/UsageStatsService;->getService()Lcom/android/internal/app/IUsageStats;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IUsageStats;->noteResumeComponent(Landroid/content/ComponentName;)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-static {}, Lcom/android/server/am/UsageStatsService;->getService()Lcom/android/internal/app/IUsageStats;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IUsageStats;->notePauseComponent(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    goto :goto_0
.end method
