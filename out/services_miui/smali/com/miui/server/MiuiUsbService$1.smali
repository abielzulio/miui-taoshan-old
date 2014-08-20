.class Lcom/miui/server/MiuiUsbService$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiUsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/MiuiUsbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/MiuiUsbService;


# direct methods
.method constructor <init>(Lcom/miui/server/MiuiUsbService;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/miui/server/MiuiUsbService$1;->this$0:Lcom/miui/server/MiuiUsbService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/server/MiuiUsbService$1;->this$0:Lcom/miui/server/MiuiUsbService;

    #getter for: Lcom/miui/server/MiuiUsbService;->mMdbDebuggingManager:Lcom/miui/server/MdbDebuggingManager;
    invoke-static {v0}, Lcom/miui/server/MiuiUsbService;->access$000(Lcom/miui/server/MiuiUsbService;)Lcom/miui/server/MdbDebuggingManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/miui/server/MiuiUsbService$1;->this$0:Lcom/miui/server/MiuiUsbService;

    #getter for: Lcom/miui/server/MiuiUsbService;->mMdbDebuggingManager:Lcom/miui/server/MdbDebuggingManager;
    invoke-static {v1}, Lcom/miui/server/MiuiUsbService;->access$000(Lcom/miui/server/MiuiUsbService;)Lcom/miui/server/MdbDebuggingManager;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/miui/server/MiuiUsbService$1;->this$0:Lcom/miui/server/MiuiUsbService;

    #getter for: Lcom/miui/server/MiuiUsbService;->mUsbDebuggingManager:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;
    invoke-static {v0}, Lcom/miui/server/MiuiUsbService;->access$100(Lcom/miui/server/MiuiUsbService;)Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/miui/server/MiuiUsbService$1;->this$0:Lcom/miui/server/MiuiUsbService;

    #getter for: Lcom/miui/server/MiuiUsbService;->mUsbDebuggingManager:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;
    invoke-static {v0}, Lcom/miui/server/MiuiUsbService;->access$100(Lcom/miui/server/MiuiUsbService;)Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    move-result-object v0

    const-string v1, "persist.sys.usb.config"

    const-string v2, "adb"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "adb"

    #calls: Lcom/miui/server/MiuiUsbService;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/miui/server/MiuiUsbService;->access$200(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->setAdbEnabled(Z)V

    .line 58
    :cond_1
    return-void
.end method
