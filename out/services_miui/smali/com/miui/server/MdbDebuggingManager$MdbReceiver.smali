.class Lcom/miui/server/MdbDebuggingManager$MdbReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/MdbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MdbReceiver"
.end annotation


# instance fields
.field private mPreRotation:I

.field final synthetic this$0:Lcom/miui/server/MdbDebuggingManager;


# direct methods
.method private constructor <init>(Lcom/miui/server/MdbDebuggingManager;)V
    .locals 1
    .parameter

    .prologue
    .line 854
    iput-object p1, p0, Lcom/miui/server/MdbDebuggingManager$MdbReceiver;->this$0:Lcom/miui/server/MdbDebuggingManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 855
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/server/MdbDebuggingManager$MdbReceiver;->mPreRotation:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/server/MdbDebuggingManager;Lcom/miui/server/MdbDebuggingManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 854
    invoke-direct {p0, p1}, Lcom/miui/server/MdbDebuggingManager$MdbReceiver;-><init>(Lcom/miui/server/MdbDebuggingManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 858
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 859
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 861
    .local v7, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v0, 0x9

    invoke-virtual {v7, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 863
    .local v8, netInfo:Landroid/net/NetworkInfo;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/miui/server/MdbDebuggingManager$MdbReceiver;->this$0:Lcom/miui/server/MdbDebuggingManager;

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    #calls: Lcom/miui/server/MdbDebuggingManager;->notifyConnectState(Landroid/net/NetworkInfo$State;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/miui/server/MdbDebuggingManager;->access$1500(Lcom/miui/server/MdbDebuggingManager;Landroid/net/NetworkInfo$State;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/miui/server/MdbDebuggingManager$MdbReceiver;->this$0:Lcom/miui/server/MdbDebuggingManager;

    #calls: Lcom/miui/server/MdbDebuggingManager;->restoreOtherConnectState()V
    invoke-static {v0}, Lcom/miui/server/MdbDebuggingManager;->access$1600(Lcom/miui/server/MdbDebuggingManager;)V

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/miui/server/MdbDebuggingManager$MdbReceiver;->this$0:Lcom/miui/server/MdbDebuggingManager;

    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    #calls: Lcom/miui/server/MdbDebuggingManager;->updateShareNetNotificationBar(Landroid/net/NetworkInfo$State;)V
    invoke-static {v0, v1}, Lcom/miui/server/MdbDebuggingManager;->access$1700(Lcom/miui/server/MdbDebuggingManager;Landroid/net/NetworkInfo$State;)V

    .line 870
    iget-object v0, p0, Lcom/miui/server/MdbDebuggingManager$MdbReceiver;->this$0:Lcom/miui/server/MdbDebuggingManager;

    invoke-virtual {v0}, Lcom/miui/server/MdbDebuggingManager;->disableRemoteCtrl()V

    .line 882
    .end local v7           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v8           #netInfo:Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    return-void

    .line 871
    :cond_2
    const-string v0, "miui.usb.action.USB_SHARENET_CONTROL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 872
    iget-object v0, p0, Lcom/miui/server/MdbDebuggingManager$MdbReceiver;->this$0:Lcom/miui/server/MdbDebuggingManager;

    const-string v1, "usb_sharenet_control"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/server/MdbDebuggingManager;->setUsbShareNetState(Z)V

    goto :goto_0

    .line 873
    :cond_3
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 874
    iget-object v0, p0, Lcom/miui/server/MdbDebuggingManager$MdbReceiver;->this$0:Lcom/miui/server/MdbDebuggingManager;

    const/4 v1, 0x1

    #setter for: Lcom/miui/server/MdbDebuggingManager;->mBootCompleted:Z
    invoke-static {v0, v1}, Lcom/miui/server/MdbDebuggingManager;->access$1802(Lcom/miui/server/MdbDebuggingManager;Z)Z

    goto :goto_0

    .line 875
    :cond_4
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p0, Lcom/miui/server/MdbDebuggingManager$MdbReceiver;->this$0:Lcom/miui/server/MdbDebuggingManager;

    #calls: Lcom/miui/server/MdbDebuggingManager;->getDisplayRotation()I
    invoke-static {v0}, Lcom/miui/server/MdbDebuggingManager;->access$1900(Lcom/miui/server/MdbDebuggingManager;)I

    move-result v9

    .line 877
    .local v9, rotation:I
    iget v0, p0, Lcom/miui/server/MdbDebuggingManager$MdbReceiver;->mPreRotation:I

    if-eq v0, v9, :cond_1

    .line 878
    iput v9, p0, Lcom/miui/server/MdbDebuggingManager$MdbReceiver;->mPreRotation:I

    .line 879
    iget-object v0, p0, Lcom/miui/server/MdbDebuggingManager$MdbReceiver;->this$0:Lcom/miui/server/MdbDebuggingManager;

    invoke-virtual {v0, v9}, Lcom/miui/server/MdbDebuggingManager;->updateRotation(I)V

    goto :goto_0
.end method
