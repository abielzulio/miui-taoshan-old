.class public abstract Landroid/print/IPrintDocumentAdapter$Stub;
.super Landroid/os/Binder;
.source "IPrintDocumentAdapter.java"

# interfaces
.implements Landroid/print/IPrintDocumentAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintDocumentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintDocumentAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.print.IPrintDocumentAdapter"

.field static final TRANSACTION_cancel:I = 0x6

.field static final TRANSACTION_finish:I = 0x5

.field static final TRANSACTION_layout:I = 0x3

.field static final TRANSACTION_setObserver:I = 0x1

.field static final TRANSACTION_start:I = 0x2

.field static final TRANSACTION_write:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.print.IPrintDocumentAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/print/IPrintDocumentAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/print/IPrintDocumentAdapter;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.print.IPrintDocumentAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/print/IPrintDocumentAdapter;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/print/IPrintDocumentAdapter;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/print/IPrintDocumentAdapter$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/print/IPrintDocumentAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "android.print.IPrintDocumentAdapter"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0

    :sswitch_1
    const-string v0, "android.print.IPrintDocumentAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/print/IPrintDocumentAdapterObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintDocumentAdapterObserver;

    move-result-object v1

    .local v1, _arg0:Landroid/print/IPrintDocumentAdapterObserver;
    invoke-virtual {p0, v1}, Landroid/print/IPrintDocumentAdapter$Stub;->setObserver(Landroid/print/IPrintDocumentAdapterObserver;)V

    move v0, v6

    goto :goto_0

    .end local v1           #_arg0:Landroid/print/IPrintDocumentAdapterObserver;
    :sswitch_2
    const-string v0, "android.print.IPrintDocumentAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/print/IPrintDocumentAdapter$Stub;->start()V

    move v0, v6

    goto :goto_0

    :sswitch_3
    const-string v0, "android.print.IPrintDocumentAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/print/PrintAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintAttributes;

    .local v1, _arg0:Landroid/print/PrintAttributes;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/print/PrintAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintAttributes;

    .local v2, _arg1:Landroid/print/PrintAttributes;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/print/ILayoutResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/ILayoutResultCallback;

    move-result-object v3

    .local v3, _arg2:Landroid/print/ILayoutResultCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .local v4, _arg3:Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg4:I
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/print/IPrintDocumentAdapter$Stub;->layout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/ILayoutResultCallback;Landroid/os/Bundle;I)V

    move v0, v6

    goto :goto_0

    .end local v1           #_arg0:Landroid/print/PrintAttributes;
    .end local v2           #_arg1:Landroid/print/PrintAttributes;
    .end local v3           #_arg2:Landroid/print/ILayoutResultCallback;
    .end local v4           #_arg3:Landroid/os/Bundle;
    .end local v5           #_arg4:I
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/print/PrintAttributes;
    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/print/PrintAttributes;
    goto :goto_2

    .restart local v3       #_arg2:Landroid/print/ILayoutResultCallback;
    :cond_2
    const/4 v4, 0x0

    .restart local v4       #_arg3:Landroid/os/Bundle;
    goto :goto_3

    .end local v1           #_arg0:Landroid/print/PrintAttributes;
    .end local v2           #_arg1:Landroid/print/PrintAttributes;
    .end local v3           #_arg2:Landroid/print/ILayoutResultCallback;
    .end local v4           #_arg3:Landroid/os/Bundle;
    :sswitch_4
    const-string v0, "android.print.IPrintDocumentAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Landroid/print/PageRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/print/PageRange;

    .local v1, _arg0:[Landroid/print/PageRange;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .local v2, _arg1:Landroid/os/ParcelFileDescriptor;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/print/IWriteResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IWriteResultCallback;

    move-result-object v3

    .local v3, _arg2:Landroid/print/IWriteResultCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/print/IPrintDocumentAdapter$Stub;->write([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/print/IWriteResultCallback;I)V

    move v0, v6

    goto/16 :goto_0

    .end local v2           #_arg1:Landroid/os/ParcelFileDescriptor;
    .end local v3           #_arg2:Landroid/print/IWriteResultCallback;
    .end local v4           #_arg3:I
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/ParcelFileDescriptor;
    goto :goto_4

    .end local v1           #_arg0:[Landroid/print/PageRange;
    .end local v2           #_arg1:Landroid/os/ParcelFileDescriptor;
    :sswitch_5
    const-string v0, "android.print.IPrintDocumentAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/print/IPrintDocumentAdapter$Stub;->finish()V

    move v0, v6

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "android.print.IPrintDocumentAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/print/IPrintDocumentAdapter$Stub;->cancel()V

    move v0, v6

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
