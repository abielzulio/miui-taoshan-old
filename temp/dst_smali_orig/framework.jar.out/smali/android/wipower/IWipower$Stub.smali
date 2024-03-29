.class public abstract Landroid/wipower/IWipower$Stub;
.super Landroid/os/Binder;
.source "IWipower.java"

# interfaces
.implements Landroid/wipower/IWipower;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/wipower/IWipower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/wipower/IWipower$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.wipower.IWipower"

.field static final TRANSACTION_enableAlert:I = 0x6

.field static final TRANSACTION_enableData:I = 0x7

.field static final TRANSACTION_getCurrentLimit:I = 0x5

.field static final TRANSACTION_getState:I = 0x1

.field static final TRANSACTION_registerCallback:I = 0x8

.field static final TRANSACTION_setCurrentLimit:I = 0x4

.field static final TRANSACTION_startCharging:I = 0x2

.field static final TRANSACTION_stopCharging:I = 0x3

.field static final TRANSACTION_unregisterCallback:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.wipower.IWipower"

    invoke-virtual {p0, p0, v0}, Landroid/wipower/IWipower$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/wipower/IWipower;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.wipower.IWipower"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/wipower/IWipower;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/wipower/IWipower;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/wipower/IWipower$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/wipower/IWipower$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v2, "android.wipower.IWipower"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "android.wipower.IWipower"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/wipower/IWipower$Stub;->getState()I

    move-result v1

    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1           #_result:I
    :sswitch_2
    const-string v4, "android.wipower.IWipower"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/wipower/IWipower$Stub;->startCharging()Z

    move-result v1

    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1           #_result:Z
    :sswitch_3
    const-string v4, "android.wipower.IWipower"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/wipower/IWipower$Stub;->stopCharging()Z

    move-result v1

    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1           #_result:Z
    :sswitch_4
    const-string v4, "android.wipower.IWipower"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .local v0, _arg0:B
    invoke-virtual {p0, v0}, Landroid/wipower/IWipower$Stub;->setCurrentLimit(B)Z

    move-result v1

    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:B
    .end local v1           #_result:Z
    :sswitch_5
    const-string v2, "android.wipower.IWipower"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/wipower/IWipower$Stub;->getCurrentLimit()B

    move-result v1

    .local v1, _result:B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .end local v1           #_result:B
    :sswitch_6
    const-string v4, "android.wipower.IWipower"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v0, v3

    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/wipower/IWipower$Stub;->enableAlert(Z)Z

    move-result v1

    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_4
    move v0, v2

    goto :goto_1

    :sswitch_7
    const-string v4, "android.wipower.IWipower"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    move v0, v3

    .restart local v0       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Landroid/wipower/IWipower$Stub;->enableData(Z)Z

    move-result v1

    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_6
    move v0, v2

    goto :goto_2

    :sswitch_8
    const-string v2, "android.wipower.IWipower"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/wipower/IWipowerManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/wipower/IWipowerManagerCallback;

    move-result-object v0

    .local v0, _arg0:Landroid/wipower/IWipowerManagerCallback;
    invoke-virtual {p0, v0}, Landroid/wipower/IWipower$Stub;->registerCallback(Landroid/wipower/IWipowerManagerCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/wipower/IWipowerManagerCallback;
    :sswitch_9
    const-string v2, "android.wipower.IWipower"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/wipower/IWipowerManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/wipower/IWipowerManagerCallback;

    move-result-object v0

    .restart local v0       #_arg0:Landroid/wipower/IWipowerManagerCallback;
    invoke-virtual {p0, v0}, Landroid/wipower/IWipower$Stub;->unregisterCallback(Landroid/wipower/IWipowerManagerCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
