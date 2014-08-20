.class final Lcom/android/server/power/Injector$ShutdownThreadHook$1;
.super Ljava/lang/Object;
.source "Injector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Injector$ShutdownThreadHook;->setupShutdownConfirmDialog(Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/server/power/Injector$ShutdownThreadHook$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/power/Injector$ShutdownThreadHook$1;->val$context:Landroid/content/Context;

    #calls: Lcom/android/server/power/Injector$ShutdownThreadHook;->disableWakeAlarm(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/server/power/Injector$ShutdownThreadHook;->access$000(Landroid/content/Context;)V

    .line 39
    const-class v0, Lcom/android/server/power/ShutdownThread;

    const-string v1, "beginShutdownSequence"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/power/Injector$ShutdownThreadHook$1;->val$context:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lmiui/dexspy/ReflectionUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method
