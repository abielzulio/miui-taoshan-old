.class public abstract Landroid/print/IPrinterDiscoveryObserver$Stub;
.super Landroid/os/Binder;
.source "IPrinterDiscoveryObserver.java"

# interfaces
.implements Landroid/print/IPrinterDiscoveryObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrinterDiscoveryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrinterDiscoveryObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.print.IPrinterDiscoveryObserver"

.field static final TRANSACTION_onPrintersAdded:I = 0x1

.field static final TRANSACTION_onPrintersRemoved:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.print.IPrinterDiscoveryObserver"

    invoke-virtual {p0, p0, v0}, Landroid/print/IPrinterDiscoveryObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.print.IPrinterDiscoveryObserver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/print/IPrinterDiscoveryObserver;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/print/IPrinterDiscoveryObserver;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/print/IPrinterDiscoveryObserver$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/print/IPrinterDiscoveryObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string v2, "android.print.IPrinterDiscoveryObserver"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "android.print.IPrinterDiscoveryObserver"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .local v0, _arg0:Landroid/content/pm/ParceledListSlice;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/print/IPrinterDiscoveryObserver$Stub;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V

    goto :goto_0

    .end local v0           #_arg0:Landroid/content/pm/ParceledListSlice;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/pm/ParceledListSlice;
    goto :goto_1

    .end local v0           #_arg0:Landroid/content/pm/ParceledListSlice;
    :sswitch_2
    const-string v2, "android.print.IPrinterDiscoveryObserver"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .restart local v0       #_arg0:Landroid/content/pm/ParceledListSlice;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/print/IPrinterDiscoveryObserver$Stub;->onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V

    goto :goto_0

    .end local v0           #_arg0:Landroid/content/pm/ParceledListSlice;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/pm/ParceledListSlice;
    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
