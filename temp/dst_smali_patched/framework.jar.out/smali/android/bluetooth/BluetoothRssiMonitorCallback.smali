.class public abstract Landroid/bluetooth/BluetoothRssiMonitorCallback;
.super Ljava/lang/Object;
.source "BluetoothRssiMonitorCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlert(II)V
    .locals 0
    .parameter "evtType"
    .parameter "rssi"

    .prologue
    return-void
.end method

.method public onReadRssiThreshold(IIII)V
    .locals 0
    .parameter "thresh_min"
    .parameter "thresh_max"
    .parameter "alert"
    .parameter "status"

    .prologue
    return-void
.end method

.method public onStarted()V
    .locals 0

    .prologue
    return-void
.end method

.method public onStopped()V
    .locals 0

    .prologue
    return-void
.end method
