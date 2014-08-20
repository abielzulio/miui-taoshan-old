.class Lcom/android/server/Injector$AppWidgetServiceHook$RestoreFinishReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Injector$AppWidgetServiceHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RestoreFinishReceiver"
.end annotation


# instance fields
.field private mService:Lcom/android/server/AppWidgetService;


# direct methods
.method public constructor <init>(Lcom/android/server/AppWidgetService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/Injector$AppWidgetServiceHook$RestoreFinishReceiver;->mService:Lcom/android/server/AppWidgetService;

    .line 61
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 65
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 66
    .local v0, userId:I
    if-ltz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/server/Injector$AppWidgetServiceHook$RestoreFinishReceiver;->mService:Lcom/android/server/AppWidgetService;

    invoke-virtual {v1, v0}, Lcom/android/server/AppWidgetService;->callGetImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/Injector$AppWidgetServiceImplHook;->reload(Lcom/android/server/AppWidgetServiceImpl;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    const-string v1, "AppWidgetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect user handle supplied in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
