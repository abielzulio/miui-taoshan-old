.class public abstract Landroid/printservice/IPrintService$Stub;
.super Landroid/os/Binder;
.source "IPrintService.java"

# interfaces
.implements Landroid/printservice/IPrintService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/IPrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/IPrintService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.printservice.IPrintService"

.field static final TRANSACTION_createPrinterDiscoverySession:I = 0x4

.field static final TRANSACTION_destroyPrinterDiscoverySession:I = 0xa

.field static final TRANSACTION_onPrintJobQueued:I = 0x3

.field static final TRANSACTION_requestCancelPrintJob:I = 0x2

.field static final TRANSACTION_setClient:I = 0x1

.field static final TRANSACTION_startPrinterDiscovery:I = 0x5

.field static final TRANSACTION_startPrinterStateTracking:I = 0x8

.field static final TRANSACTION_stopPrinterDiscovery:I = 0x6

.field static final TRANSACTION_stopPrinterStateTracking:I = 0x9

.field static final TRANSACTION_validatePrinters:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.printservice.IPrintService"

    invoke-virtual {p0, p0, v0}, Landroid/printservice/IPrintService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintService;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.printservice.IPrintService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/printservice/IPrintService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/printservice/IPrintService;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/printservice/IPrintService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/printservice/IPrintService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string v3, "android.printservice.IPrintService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v3, "android.printservice.IPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/printservice/IPrintServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintServiceClient;

    move-result-object v0

    .local v0, _arg0:Landroid/printservice/IPrintServiceClient;
    invoke-virtual {p0, v0}, Landroid/printservice/IPrintService$Stub;->setClient(Landroid/printservice/IPrintServiceClient;)V

    goto :goto_0

    .end local v0           #_arg0:Landroid/printservice/IPrintServiceClient;
    :sswitch_2
    const-string v3, "android.printservice.IPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobInfo;

    .local v0, _arg0:Landroid/print/PrintJobInfo;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/printservice/IPrintService$Stub;->requestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    goto :goto_0

    .end local v0           #_arg0:Landroid/print/PrintJobInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/print/PrintJobInfo;
    goto :goto_1

    .end local v0           #_arg0:Landroid/print/PrintJobInfo;
    :sswitch_3
    const-string v3, "android.printservice.IPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobInfo;

    .restart local v0       #_arg0:Landroid/print/PrintJobInfo;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/printservice/IPrintService$Stub;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V

    goto :goto_0

    .end local v0           #_arg0:Landroid/print/PrintJobInfo;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/print/PrintJobInfo;
    goto :goto_2

    .end local v0           #_arg0:Landroid/print/PrintJobInfo;
    :sswitch_4
    const-string v3, "android.printservice.IPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/printservice/IPrintService$Stub;->createPrinterDiscoverySession()V

    goto :goto_0

    :sswitch_5
    const-string v3, "android.printservice.IPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v3, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {p0, v1}, Landroid/printservice/IPrintService$Stub;->startPrinterDiscovery(Ljava/util/List;)V

    goto :goto_0

    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    :sswitch_6
    const-string v3, "android.printservice.IPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/printservice/IPrintService$Stub;->stopPrinterDiscovery()V

    goto :goto_0

    :sswitch_7
    const-string v3, "android.printservice.IPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v3, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {p0, v1}, Landroid/printservice/IPrintService$Stub;->validatePrinters(Ljava/util/List;)V

    goto :goto_0

    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    :sswitch_8
    const-string v3, "android.printservice.IPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterId;

    .local v0, _arg0:Landroid/print/PrinterId;
    :goto_3
    invoke-virtual {p0, v0}, Landroid/printservice/IPrintService$Stub;->startPrinterStateTracking(Landroid/print/PrinterId;)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/print/PrinterId;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/print/PrinterId;
    goto :goto_3

    .end local v0           #_arg0:Landroid/print/PrinterId;
    :sswitch_9
    const-string v3, "android.printservice.IPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterId;

    .restart local v0       #_arg0:Landroid/print/PrinterId;
    :goto_4
    invoke-virtual {p0, v0}, Landroid/printservice/IPrintService$Stub;->stopPrinterStateTracking(Landroid/print/PrinterId;)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/print/PrinterId;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/print/PrinterId;
    goto :goto_4

    .end local v0           #_arg0:Landroid/print/PrinterId;
    :sswitch_a
    const-string v3, "android.printservice.IPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/printservice/IPrintService$Stub;->destroyPrinterDiscoverySession()V

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
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
