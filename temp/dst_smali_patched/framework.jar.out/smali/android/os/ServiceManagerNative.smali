.class public abstract Landroid/os/ServiceManagerNative;
.super Landroid/os/Binder;
.source "ServiceManagerNative.java"

# interfaces
.implements Landroid/os/IServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IServiceManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/ServiceManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IServiceManager;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "android.os.IServiceManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/os/IServiceManager;

    .local v0, in:Landroid/os/IServiceManager;
    if-nez v0, :cond_0

    new-instance v0, Landroid/os/ServiceManagerProxy;

    .end local v0           #in:Landroid/os/IServiceManager;
    invoke-direct {v0, p0}, Landroid/os/ServiceManagerProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v5, v6

    :goto_1
    return v5

    :pswitch_1
    :try_start_0
    const-string v7, "android.os.IServiceManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, name:Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/ServiceManagerNative;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .local v4, service:Landroid/os/IBinder;
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_1

    .end local v3           #name:Ljava/lang/String;
    .end local v4           #service:Landroid/os/IBinder;
    :catch_0
    move-exception v5

    goto :goto_0

    :pswitch_2
    const-string v7, "android.os.IServiceManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #name:Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/ServiceManagerNative;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .restart local v4       #service:Landroid/os/IBinder;
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_1

    .end local v3           #name:Ljava/lang/String;
    .end local v4           #service:Landroid/os/IBinder;
    :pswitch_3
    const-string v7, "android.os.IServiceManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #name:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .restart local v4       #service:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    move v0, v5

    .local v0, allowIsolated:Z
    :goto_2
    invoke-virtual {p0, v3, v4, v0}, Landroid/os/ServiceManagerNative;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    goto :goto_1

    .end local v0           #allowIsolated:Z
    :cond_0
    move v0, v6

    goto :goto_2

    .end local v3           #name:Ljava/lang/String;
    .end local v4           #service:Landroid/os/IBinder;
    :pswitch_4
    const-string v7, "android.os.IServiceManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ServiceManagerNative;->listServices()[Ljava/lang/String;

    move-result-object v2

    .local v2, list:[Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_1

    .end local v2           #list:[Ljava/lang/String;
    :pswitch_5
    const-string v7, "android.os.IServiceManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IPermissionController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPermissionController;

    move-result-object v1

    .local v1, controller:Landroid/os/IPermissionController;
    invoke-virtual {p0, v1}, Landroid/os/ServiceManagerNative;->setPermissionController(Landroid/os/IPermissionController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
