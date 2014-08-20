.class Lcom/android/server/am/Injector$AppNotRespondingDialogHook;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppNotRespondingDialogHook"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static sendAnrErrorReport(Lcom/android/server/am/AppNotRespondingDialog;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/am/MiuiErrorReport;->sendAnrErrorReport(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Z)V

    .line 336
    return-void
.end method
