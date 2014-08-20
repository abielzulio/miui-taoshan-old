.class Lcom/android/server/Injector$AppWidgetServiceHook;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppWidgetServiceHook"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Injector$AppWidgetServiceHook$RestoreFinishReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppWidgetService"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static after_systemRunning(Lcom/android/server/AppWidgetService;)V
    .locals 5
    .parameter "service"

    .prologue
    const/4 v4, 0x0

    .line 75
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/Injector$AppWidgetServiceHook$RestoreFinishReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/Injector$AppWidgetServiceHook$RestoreFinishReceiver;-><init>(Lcom/android/server/AppWidgetService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.RESTORE_FINISH"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 77
    return-void
.end method
