.class public Landroid/ddm/DdmHandleViewDebug;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "DdmHandleViewDebug.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final CHUNK_VUGL:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CHUNK_VULW:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CHUNK_VUOP:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CHUNK_VURT:I = 0x0

.field private static final ERR_EXCEPTION:I = -0x3

.field private static final ERR_INVALID_OP:I = -0x1

.field private static final ERR_INVALID_PARAM:I = -0x2

.field private static final TAG:Ljava/lang/String; = "DdmViewDebug"

.field private static final VUOP_CAPTURE_VIEW:I = 0x1

.field private static final VUOP_DUMP_DISPLAYLIST:I = 0x2

.field private static final VUOP_INVOKE_VIEW_METHOD:I = 0x4

.field private static final VUOP_PROFILE_VIEW:I = 0x3

.field private static final VUOP_SET_LAYOUT_PARAMETER:I = 0x5

.field private static final VURT_CAPTURE_LAYERS:I = 0x2

.field private static final VURT_DUMP_HIERARCHY:I = 0x1

.field private static final sInstance:Landroid/ddm/DdmHandleViewDebug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "VUGL"

    invoke-static {v0}, Landroid/ddm/DdmHandleViewDebug;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUGL:I

    const-string v0, "VULW"

    invoke-static {v0}, Landroid/ddm/DdmHandleViewDebug;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VULW:I

    const-string v0, "VURT"

    invoke-static {v0}, Landroid/ddm/DdmHandleViewDebug;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    const-string v0, "VUOP"

    invoke-static {v0}, Landroid/ddm/DdmHandleViewDebug;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUOP:I

    new-instance v0, Landroid/ddm/DdmHandleViewDebug;

    invoke-direct {v0}, Landroid/ddm/DdmHandleViewDebug;-><init>()V

    sput-object v0, Landroid/ddm/DdmHandleViewDebug;->sInstance:Landroid/ddm/DdmHandleViewDebug;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    return-void
.end method

.method private captureLayers(Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 8
    .parameter "rootView"

    .prologue
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x400

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v0, b:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v2, dos:Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {p1, v2}, Landroid/view/ViewDebug;->captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .local v1, data:[B
    new-instance v4, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v5, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    const/4 v6, 0x0

    array-length v7, v1

    invoke-direct {v4, v5, v1, v6, v7}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .end local v1           #data:[B
    :goto_1
    return-object v4

    :catch_0
    move-exception v3

    .local v3, e:Ljava/io/IOException;
    const/4 v4, 0x1

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected error while obtaining view hierarchy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_1

    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    throw v4

    :catch_2
    move-exception v4

    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_2
.end method

.method private captureView(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 7
    .parameter "rootView"
    .parameter "targetView"

    .prologue
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x400

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v0, b:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p1, v0, p2}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .local v1, data:[B
    new-instance v3, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v4, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUOP:I

    const/4 v5, 0x0

    array-length v6, v1

    invoke-direct {v3, v4, v1, v5, v6}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .end local v1           #data:[B
    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected error while capturing view: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v3

    goto :goto_0
.end method

.method private dumpDisplayLists(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 1
    .parameter "rootView"
    .parameter "targetView"

    .prologue
    new-instance v0, Landroid/ddm/DdmHandleViewDebug$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/ddm/DdmHandleViewDebug$1;-><init>(Landroid/ddm/DdmHandleViewDebug;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return-object v0
.end method

.method private dumpHierarchy(Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 9
    .parameter "rootView"
    .parameter "in"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    if-lez v7, :cond_0

    move v4, v5

    .local v4, skipChildren:Z
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    if-lez v7, :cond_1

    move v3, v5

    .local v3, includeProperties:Z
    :goto_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x400

    invoke-direct {v0, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v0, b:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p1, v4, v3, v0}, Landroid/view/ViewDebug;->dump(Landroid/view/View;ZZLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .local v1, data:[B
    new-instance v5, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v7, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    array-length v8, v1

    invoke-direct {v5, v7, v1, v6, v8}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .end local v1           #data:[B
    :goto_2
    return-object v5

    .end local v0           #b:Ljava/io/ByteArrayOutputStream;
    .end local v3           #includeProperties:Z
    .end local v4           #skipChildren:Z
    :cond_0
    move v4, v6

    goto :goto_0

    .restart local v4       #skipChildren:Z
    :cond_1
    move v3, v6

    goto :goto_1

    .restart local v0       #b:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #includeProperties:Z
    :catch_0
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected error while obtaining view hierarchy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_2
.end method

.method private getRootView(Ljava/nio/ByteBuffer;)Landroid/view/View;
    .locals 4
    .parameter "in"

    .prologue
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .local v2, viewRootNameLength:I
    invoke-static {p1, v2}, Landroid/ddm/DdmHandleViewDebug;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v1

    .local v1, viewRootName:Ljava/lang/String;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/WindowManagerGlobal;->getRootView(Ljava/lang/String;)Landroid/view/View;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v1           #viewRootName:Ljava/lang/String;
    .end local v2           #viewRootNameLength:I
    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    .local v0, e:Ljava/nio/BufferUnderflowException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getTargetView(Landroid/view/View;Ljava/nio/ByteBuffer;)Landroid/view/View;
    .locals 4
    .parameter "root"
    .parameter "in"

    .prologue
    :try_start_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .local v1, viewLength:I
    invoke-static {p2, v1}, Landroid/ddm/DdmHandleViewDebug;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, viewName:Ljava/lang/String;
    invoke-static {p1, v2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .end local v1           #viewLength:I
    .end local v2           #viewName:Ljava/lang/String;
    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    .local v0, e:Ljava/nio/BufferUnderflowException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleOpenGlTrace(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 2
    .parameter "request"

    .prologue
    invoke-static {p1}, Landroid/ddm/DdmHandleViewDebug;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, in:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->setTracingLevel(I)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private invokeViewMethod(Landroid/view/View;Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 14
    .parameter "rootView"
    .parameter "targetView"
    .parameter "in"

    .prologue
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .local v6, l:I
    move-object/from16 v0, p3

    invoke-static {v0, v6}, Landroid/ddm/DdmHandleViewDebug;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v8

    .local v8, methodName:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v11

    if-nez v11, :cond_1

    const/4 v11, 0x0

    new-array v1, v11, [Ljava/lang/Class;

    .local v1, argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v11, 0x0

    new-array v2, v11, [Ljava/lang/Object;

    .local v2, args:[Ljava/lang/Object;
    :cond_0
    const/4 v7, 0x0

    .local v7, method:Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11, v8, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :try_start_1
    move-object/from16 v0, p2

    invoke-static {v0, v7, v2}, Landroid/view/ViewDebug;->invokeViewMethod(Landroid/view/View;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v11, 0x0

    .end local v7           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v11

    .end local v1           #argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v2           #args:[Ljava/lang/Object;
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .local v10, nArgs:I
    new-array v1, v10, [Ljava/lang/Class;

    .restart local v1       #argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    new-array v2, v10, [Ljava/lang/Object;

    .restart local v2       #args:[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v10, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v3

    .local v3, c:C
    sparse-switch v3, :sswitch_data_0

    const-string v11, "DdmViewDebug"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "arg "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", unrecognized type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, -0x2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unsupported parameter type ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") to invoke view method."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v11

    goto :goto_0

    :sswitch_0
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v1, v5

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    if-nez v11, :cond_2

    const/4 v11, 0x0

    :goto_2
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v2, v5

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x1

    goto :goto_2

    :sswitch_1
    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v11, v1, v5

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v2, v5

    goto :goto_3

    :sswitch_2
    sget-object v11, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v11, v1, v5

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    aput-object v11, v2, v5

    goto :goto_3

    :sswitch_3
    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v11, v1, v5

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    aput-object v11, v2, v5

    goto :goto_3

    :sswitch_4
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v1, v5

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v5

    goto :goto_3

    :sswitch_5
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v11, v1, v5

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v2, v5

    goto :goto_3

    :sswitch_6
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v11, v1, v5

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v2, v5

    goto :goto_3

    :sswitch_7
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v11, v1, v5

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v2, v5

    goto :goto_3

    .end local v3           #c:C
    .end local v5           #i:I
    .end local v10           #nArgs:I
    .restart local v7       #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .local v4, e:Ljava/lang/NoSuchMethodException;
    const-string v11, "DdmViewDebug"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No such method: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, -0x2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No such method: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v11

    goto/16 :goto_0

    .end local v4           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v4

    .local v4, e:Ljava/lang/Exception;
    const-string v11, "DdmViewDebug"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception while invoking method: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    .local v9, msg:Ljava/lang/String;
    if-nez v9, :cond_3

    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_3
    const/4 v11, -0x3

    invoke-static {v11, v9}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v11

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x43 -> :sswitch_2
        0x44 -> :sswitch_7
        0x46 -> :sswitch_6
        0x49 -> :sswitch_4
        0x4a -> :sswitch_5
        0x53 -> :sswitch_3
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method private listWindows()Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 9

    .prologue
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/WindowManagerGlobal;->getViewRootNames()[Ljava/lang/String;

    move-result-object v6

    .local v6, windowNames:[Ljava/lang/String;
    const/4 v5, 0x4

    .local v5, responseLength:I
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, name:Ljava/lang/String;
    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #name:Ljava/lang/String;
    :cond_0
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .local v4, out:Ljava/nio/ByteBuffer;
    sget-object v7, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length v7, v6

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-object v0, v6

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .restart local v3       #name:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {v4, v3}, Landroid/ddm/DdmHandleViewDebug;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #name:Ljava/lang/String;
    :cond_1
    new-instance v7, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v8, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VULW:I

    invoke-direct {v7, v8, v4}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v7
.end method

.method private profileView(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 8
    .parameter "rootView"
    .parameter "targetView"

    .prologue
    const v5, 0x8000

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v0, b:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .local v1, bw:Ljava/io/BufferedWriter;
    :try_start_0
    invoke-static {p2, v1}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .local v2, data:[B
    new-instance v4, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v5, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUOP:I

    const/4 v6, 0x0

    array-length v7, v2

    invoke-direct {v4, v5, v2, v6, v7}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .end local v2           #data:[B
    :goto_1
    return-object v4

    :catch_0
    move-exception v3

    .local v3, e:Ljava/io/IOException;
    const/4 v4, 0x1

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected error while profiling view: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_1

    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    throw v4

    :catch_2
    move-exception v4

    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_2
.end method

.method public static register()V
    .locals 2

    .prologue
    sget v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUGL:I

    sget-object v1, Landroid/ddm/DdmHandleViewDebug;->sInstance:Landroid/ddm/DdmHandleViewDebug;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    sget v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VULW:I

    sget-object v1, Landroid/ddm/DdmHandleViewDebug;->sInstance:Landroid/ddm/DdmHandleViewDebug;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    sget v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    sget-object v1, Landroid/ddm/DdmHandleViewDebug;->sInstance:Landroid/ddm/DdmHandleViewDebug;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    sget v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUOP:I

    sget-object v1, Landroid/ddm/DdmHandleViewDebug;->sInstance:Landroid/ddm/DdmHandleViewDebug;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    return-void
.end method

.method private setLayoutParameter(Landroid/view/View;Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 7
    .parameter "rootView"
    .parameter "targetView"
    .parameter "in"

    .prologue
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .local v1, l:I
    invoke-static {p3, v1}, Landroid/ddm/DdmHandleViewDebug;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v2

    .local v2, param:Ljava/lang/String;
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .local v3, value:I
    :try_start_0
    invoke-static {p2, v2, v3}, Landroid/view/ViewDebug;->setLayoutParameter(Landroid/view/View;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DdmViewDebug"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception setting layout parameter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error accessing field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public connected()V
    .locals 0

    .prologue
    return-void
.end method

.method public disconnected()V
    .locals 0

    .prologue
    return-void
.end method

.method public handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 8
    .parameter "request"

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    iget v4, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    .local v4, type:I
    sget v5, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUGL:I

    if-ne v4, v5, :cond_0

    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleViewDebug;->handleOpenGlTrace(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_0
    sget v5, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VULW:I

    if-ne v4, v5, :cond_1

    invoke-direct {p0}, Landroid/ddm/DdmHandleViewDebug;->listWindows()Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/ddm/DdmHandleViewDebug;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, in:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .local v1, op:I
    invoke-direct {p0, v0}, Landroid/ddm/DdmHandleViewDebug;->getRootView(Ljava/nio/ByteBuffer;)Landroid/view/View;

    move-result-object v2

    .local v2, rootView:Landroid/view/View;
    if-nez v2, :cond_2

    const-string v5, "Invalid View Root"

    invoke-static {v6, v5}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_0

    :cond_2
    sget v5, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    if-ne v4, v5, :cond_5

    const/4 v5, 0x1

    if-ne v1, v5, :cond_3

    invoke-direct {p0, v2, v0}, Landroid/ddm/DdmHandleViewDebug;->dumpHierarchy(Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_0

    :cond_3
    const/4 v5, 0x2

    if-ne v1, v5, :cond_4

    invoke-direct {p0, v2}, Landroid/ddm/DdmHandleViewDebug;->captureLayers(Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_0

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown view root operation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_0

    :cond_5
    invoke-direct {p0, v2, v0}, Landroid/ddm/DdmHandleViewDebug;->getTargetView(Landroid/view/View;Ljava/nio/ByteBuffer;)Landroid/view/View;

    move-result-object v3

    .local v3, targetView:Landroid/view/View;
    if-nez v3, :cond_6

    const-string v5, "Invalid target view"

    invoke-static {v6, v5}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_0

    :cond_6
    sget v5, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUOP:I

    if-ne v4, v5, :cond_7

    packed-switch v1, :pswitch_data_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown view operation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v2, v3}, Landroid/ddm/DdmHandleViewDebug;->captureView(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v2, v3}, Landroid/ddm/DdmHandleViewDebug;->dumpDisplayLists(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v2, v3}, Landroid/ddm/DdmHandleViewDebug;->profileView(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0, v2, v3, v0}, Landroid/ddm/DdmHandleViewDebug;->invokeViewMethod(Landroid/view/View;Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0, v2, v3, v0}, Landroid/ddm/DdmHandleViewDebug;->setLayoutParameter(Landroid/view/View;Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto/16 :goto_0

    :cond_7
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown packet "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->name(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
