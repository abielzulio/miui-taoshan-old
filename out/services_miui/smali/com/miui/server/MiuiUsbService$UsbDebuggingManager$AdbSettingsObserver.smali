.class Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$AdbSettingsObserver;
.super Landroid/database/ContentObserver;
.source "MiuiUsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdbSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;


# direct methods
.method public constructor <init>(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;)V
    .locals 1
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$AdbSettingsObserver;->this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 200
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    .line 204
    iget-object v1, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$AdbSettingsObserver;->this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    #getter for: Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->access$300(Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 206
    .local v0, enable:Z
    :cond_0
    iget-object v1, p0, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager$AdbSettingsObserver;->this$1:Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;

    invoke-virtual {v1, v0}, Lcom/miui/server/MiuiUsbService$UsbDebuggingManager;->setAdbEnabled(Z)V

    .line 207
    return-void
.end method
