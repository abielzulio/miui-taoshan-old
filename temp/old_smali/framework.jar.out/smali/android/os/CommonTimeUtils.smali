.class Landroid/os/CommonTimeUtils;
.super Ljava/lang/Object;
.source "CommonTimeUtils.java"


# static fields
.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x4

.field public static final ERROR_DEAD_OBJECT:I = -0x7

.field public static final SUCCESS:I


# instance fields
.field private mInterfaceDesc:Ljava/lang/String;

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0
    .parameter "remote"
    .parameter "interfaceDesc"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    iput-object p2, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public transactGetInt(II)I
    .locals 6
    .parameter "method_code"
    .parameter "error_ret_val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, reply:Landroid/os/Parcel;
    :try_start_0
    iget-object v4, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, res:I
    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .local v3, ret_val:I
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    .end local v3           #ret_val:I
    :cond_0
    move v3, p2

    goto :goto_0

    .end local v2           #res:I
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public transactGetLong(IJ)J
    .locals 7
    .parameter "method_code"
    .parameter "error_ret_val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, reply:Landroid/os/Parcel;
    :try_start_0
    iget-object v5, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x0

    invoke-interface {v5, p1, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, res:I
    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    .local v3, ret_val:J
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v3

    .end local v3           #ret_val:J
    :cond_0
    move-wide v3, p2

    goto :goto_0

    .end local v2           #res:I
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public transactGetSockaddr(I)Ljava/net/InetSocketAddress;
    .locals 23
    .parameter "method_code"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .local v9, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    .local v12, reply:Landroid/os/Parcel;
    const/4 v14, 0x0

    .local v14, ret_val:Ljava/net/InetSocketAddress;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-interface {v0, v1, v9, v12, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, res:I
    if-nez v13, :cond_1

    const/4 v11, 0x0

    .local v11, port:I
    const/4 v8, 0x0

    .local v8, addrStr:Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .local v16, type:I
    sget v17, Llibcore/io/OsConstants;->AF_INET:I

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, addr:I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v11

    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v18, "%d.%d.%d.%d"

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    shr-int/lit8 v21, v3, 0x18

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    shr-int/lit8 v21, v3, 0x10

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    shr-int/lit8 v21, v3, 0x8

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    and-int/lit16 v0, v3, 0xff

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .end local v3           #addr:I
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    new-instance v14, Ljava/net/InetSocketAddress;

    .end local v14           #ret_val:Ljava/net/InetSocketAddress;
    invoke-direct {v14, v8, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v8           #addrStr:Ljava/lang/String;
    .end local v11           #port:I
    .end local v16           #type:I
    .restart local v14       #ret_val:Ljava/net/InetSocketAddress;
    :cond_1
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return-object v14

    .restart local v8       #addrStr:Ljava/lang/String;
    .restart local v11       #port:I
    .restart local v16       #type:I
    :cond_2
    :try_start_1
    sget v17, Llibcore/io/OsConstants;->AF_INET6:I

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, addr1:I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, addr2:I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, addr3:I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, addr4:I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, flowinfo:I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .local v15, scope_id:I
    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v18, "[%04X:%04X:%04X:%04X:%04X:%04X:%04X:%04X]"

    const/16 v19, 0x8

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    shr-int/lit8 v21, v4, 0x10

    const v22, 0xffff

    and-int v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const v21, 0xffff

    and-int v21, v21, v4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    shr-int/lit8 v21, v5, 0x10

    const v22, 0xffff

    and-int v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    const v21, 0xffff

    and-int v21, v21, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x4

    shr-int/lit8 v21, v6, 0x10

    const v22, 0xffff

    and-int v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x5

    const v21, 0xffff

    and-int v21, v21, v6

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x6

    shr-int/lit8 v21, v7, 0x10

    const v22, 0xffff

    and-int v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x7

    const v21, 0xffff

    and-int v21, v21, v7

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    goto/16 :goto_0

    .end local v4           #addr1:I
    .end local v5           #addr2:I
    .end local v6           #addr3:I
    .end local v7           #addr4:I
    .end local v8           #addrStr:Ljava/lang/String;
    .end local v10           #flowinfo:I
    .end local v11           #port:I
    .end local v13           #res:I
    .end local v14           #ret_val:Ljava/net/InetSocketAddress;
    .end local v15           #scope_id:I
    .end local v16           #type:I
    :catchall_0
    move-exception v17

    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    throw v17
.end method

.method public transactGetString(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "method_code"
    .parameter "error_ret_val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, reply:Landroid/os/Parcel;
    :try_start_0
    iget-object v4, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, res:I
    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .local v3, ret_val:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v3

    .end local v3           #ret_val:Ljava/lang/String;
    :cond_0
    move-object v3, p2

    goto :goto_0

    .end local v2           #res:I
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public transactSetInt(II)I
    .locals 5
    .parameter "method_code"
    .parameter "val"

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    iget-object v3, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v0, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :goto_0
    return v3

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const/4 v3, -0x7

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public transactSetLong(IJ)I
    .locals 5
    .parameter "method_code"
    .parameter "val"

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    iget-object v3, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v3, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v0, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :goto_0
    return v3

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const/4 v3, -0x7

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public transactSetSockaddr(ILjava/net/InetSocketAddress;)I
    .locals 14
    .parameter "method_code"
    .parameter "addr"

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .local v4, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .local v8, reply:Landroid/os/Parcel;
    const/4 v9, -0x1

    .local v9, ret_val:I
    :try_start_0
    iget-object v12, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v12, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    const/4 v13, 0x0

    invoke-interface {v12, p1, v4, v8, v13}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    :goto_1
    move v12, v9

    :goto_2
    return v12

    :cond_0
    const/4 v12, 0x1

    :try_start_1
    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .local v1, a:Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    .local v3, b:[B
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    .local v7, p:I
    instance-of v12, v1, Ljava/net/Inet4Address;

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    aget-byte v12, v3, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    const/4 v13, 0x1

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    const/4 v13, 0x2

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    const/4 v13, 0x3

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    or-int v10, v12, v13

    .local v10, v4addr:I
    sget v12, Llibcore/io/OsConstants;->AF_INET:I

    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v1           #a:Ljava/net/InetAddress;
    .end local v3           #b:[B
    .end local v7           #p:I
    .end local v10           #v4addr:I
    :catch_0
    move-exception v5

    .local v5, e:Landroid/os/RemoteException;
    const/4 v9, -0x7

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .end local v5           #e:Landroid/os/RemoteException;
    .restart local v1       #a:Ljava/net/InetAddress;
    .restart local v3       #b:[B
    .restart local v7       #p:I
    :cond_1
    :try_start_2
    instance-of v12, v1, Ljava/net/Inet6Address;

    if-eqz v12, :cond_3

    move-object v0, v1

    check-cast v0, Ljava/net/Inet6Address;

    move-object v11, v0

    .local v11, v6:Ljava/net/Inet6Address;
    sget v12, Llibcore/io/OsConstants;->AF_INET6:I

    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    const/4 v12, 0x4

    if-ge v6, v12, :cond_2

    mul-int/lit8 v12, v6, 0x4

    add-int/lit8 v12, v12, 0x0

    aget-byte v12, v3, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    mul-int/lit8 v13, v6, 0x4

    add-int/lit8 v13, v13, 0x1

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    mul-int/lit8 v13, v6, 0x4

    add-int/lit8 v13, v13, 0x2

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    mul-int/lit8 v13, v6, 0x4

    add-int/lit8 v13, v13, 0x3

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    or-int v2, v12, v13

    .local v2, aword:I
    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .end local v2           #aword:I
    :cond_2
    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v11}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .end local v1           #a:Ljava/net/InetAddress;
    .end local v3           #b:[B
    .end local v6           #i:I
    .end local v7           #p:I
    .end local v11           #v6:Ljava/net/Inet6Address;
    :catchall_0
    move-exception v12

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw v12

    .restart local v1       #a:Ljava/net/InetAddress;
    .restart local v3       #b:[B
    .restart local v7       #p:I
    :cond_3
    const/4 v12, -0x4

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_2
.end method

.method public transactSetString(ILjava/lang/String;)I
    .locals 5
    .parameter "method_code"
    .parameter "val"

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    iget-object v3, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v0, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :goto_0
    return v3

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const/4 v3, -0x7

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
