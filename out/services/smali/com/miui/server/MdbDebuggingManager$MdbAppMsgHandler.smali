.class Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;
.super Landroid/os/Handler;
.source "MdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/MdbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MdbAppMsgHandler"
.end annotation


# static fields
.field private static final MESSAGE_SHARENET_APP:I = 0x0

.field private static final MESSAGE_SHARENET_APP_CMD_INVOKE_METHOD:I = 0x1


# instance fields
.field private mPos:I

.field final synthetic this$0:Lcom/miui/server/MdbDebuggingManager;


# direct methods
.method public constructor <init>(Lcom/miui/server/MdbDebuggingManager;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    .line 974
    iput-object p1, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->this$0:Lcom/miui/server/MdbDebuggingManager;

    .line 975
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 972
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    .line 976
    return-void
.end method

.method private AddParaToList(Ljava/util/ArrayList;ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter "type"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/server/MdbDebuggingManager$Parameter;",
            ">;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1042
    .local p1, paraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/server/MdbDebuggingManager$Parameter;>;"
    new-instance v0, Lcom/miui/server/MdbDebuggingManager$Parameter;

    iget-object v1, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->this$0:Lcom/miui/server/MdbDebuggingManager;

    invoke-direct {v0, v1}, Lcom/miui/server/MdbDebuggingManager$Parameter;-><init>(Lcom/miui/server/MdbDebuggingManager;)V

    .line 1043
    .local v0, para:Lcom/miui/server/MdbDebuggingManager$Parameter;
    iput p2, v0, Lcom/miui/server/MdbDebuggingManager$Parameter;->mType:I

    .line 1044
    iput-object p3, v0, Lcom/miui/server/MdbDebuggingManager$Parameter;->mValue:Ljava/lang/Object;

    .line 1045
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    return-void
.end method

.method private getAppShareNetMsg(Ljava/lang/String;Ljava/lang/String;II)[B
    .locals 13
    .parameter "callbackName"
    .parameter "retInfo"
    .parameter "version"
    .parameter "command"

    .prologue
    .line 1155
    invoke-direct {p0, p1}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->getStringByteItem(Ljava/lang/String;)[B

    move-result-object v0

    .line 1156
    .local v0, callbackDataItem:[B
    invoke-direct {p0, p2}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->getStringByteItem(Ljava/lang/String;)[B

    move-result-object v6

    .line 1157
    .local v6, retDataItem:[B
    const-string v9, "%04x"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 1158
    .local v7, targetHead:[B
    array-length v9, v0

    array-length v10, v6

    add-int v3, v9, v10

    .line 1159
    .local v3, payloadSize:I
    #calls: Lcom/miui/server/MdbDebuggingManager;->intToByteArray(I)[B
    invoke-static/range {p3 .. p3}, Lcom/miui/server/MdbDebuggingManager;->access$2200(I)[B

    move-result-object v8

    .line 1160
    .local v8, versionHead:[B
    #calls: Lcom/miui/server/MdbDebuggingManager;->intToByteArray(I)[B
    invoke-static {v3}, Lcom/miui/server/MdbDebuggingManager;->access$2200(I)[B

    move-result-object v4

    .line 1161
    .local v4, playloadSizeHead:[B
    #calls: Lcom/miui/server/MdbDebuggingManager;->intToByteArray(I)[B
    invoke-static/range {p4 .. p4}, Lcom/miui/server/MdbDebuggingManager;->access$2200(I)[B

    move-result-object v1

    .line 1164
    .local v1, commandHead:[B
    array-length v9, v7

    add-int/lit8 v9, v9, 0x10

    add-int/2addr v9, v3

    new-array v2, v9, [B

    .line 1165
    .local v2, msgBytes:[B
    const/4 v5, 0x0

    .line 1167
    .local v5, pos:I
    const/4 v9, 0x0

    array-length v10, v7

    invoke-static {v7, v9, v2, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1168
    array-length v9, v7

    add-int/2addr v5, v9

    .line 1170
    invoke-static {}, Lcom/miui/server/MdbDebuggingManager;->access$2300()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {}, Lcom/miui/server/MdbDebuggingManager;->access$2300()[B

    move-result-object v11

    array-length v11, v11

    invoke-static {v9, v10, v2, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1171
    invoke-static {}, Lcom/miui/server/MdbDebuggingManager;->access$2300()[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v5, v9

    .line 1172
    const/4 v9, 0x0

    array-length v10, v8

    invoke-static {v8, v9, v2, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1173
    array-length v9, v8

    add-int/2addr v5, v9

    .line 1174
    const/4 v9, 0x0

    array-length v10, v1

    invoke-static {v1, v9, v2, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1175
    array-length v9, v1

    add-int/2addr v5, v9

    .line 1176
    const/4 v9, 0x0

    array-length v10, v4

    invoke-static {v4, v9, v2, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1177
    array-length v9, v4

    add-int/2addr v5, v9

    .line 1179
    const/4 v9, 0x0

    array-length v10, v0

    invoke-static {v0, v9, v2, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1180
    array-length v9, v0

    add-int/2addr v5, v9

    .line 1181
    const/4 v9, 0x0

    array-length v10, v6

    invoke-static {v6, v9, v2, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1182
    return-object v2
.end method

.method private getBoolFromByteItem([B)I
    .locals 5
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x1

    .line 1007
    iget v2, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    array-length v3, p1

    if-lt v2, v3, :cond_0

    .line 1008
    const-string v2, "mdb_rpc_debug"

    const-string v3, "message has proceed end, there is not bool to get."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :goto_0
    return v1

    .line 1011
    :cond_0
    iget v2, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    invoke-direct {p0, p1, v2, v4}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->getInt([BII)I

    move-result v0

    .line 1012
    .local v0, dataType:I
    if-eq v0, v4, :cond_1

    .line 1013
    const-string v2, "mdb_rpc_debug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message format error, data type is not boolean, type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1016
    :cond_1
    iget v2, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    add-int/lit8 v2, v2, 0x5

    iput v2, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    .line 1017
    iget v2, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    invoke-direct {p0, p1, v2, v4}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->getInt([BII)I

    move-result v1

    .line 1018
    .local v1, value:I
    iget v2, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    goto :goto_0
.end method

.method private getInt([BII)I
    .locals 3
    .parameter "data"
    .parameter "startPos"
    .parameter "byteWidth"

    .prologue
    .line 980
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 981
    aget-byte v1, p1, p2

    .line 985
    :goto_0
    return v1

    .line 983
    :cond_0
    new-array v0, p3, [B

    .line 984
    .local v0, intByte:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 985
    #calls: Lcom/miui/server/MdbDebuggingManager;->byteArrayToInt([B)I
    invoke-static {v0}, Lcom/miui/server/MdbDebuggingManager;->access$2000([B)I

    move-result v1

    goto :goto_0
.end method

.method private getIntFromByteItem([B)I
    .locals 6
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 989
    iget v3, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    array-length v4, p1

    if-lt v3, v4, :cond_0

    .line 990
    const-string v3, "mdb_rpc_debug"

    const-string v4, "message has proceed end, there is not int to get."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :goto_0
    return v2

    .line 993
    :cond_0
    iget v3, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, v4}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->getInt([BII)I

    move-result v0

    .line 994
    .local v0, dataType:I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    .line 995
    const-string v3, "mdb_rpc_debug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message format error, data type is not int, type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 998
    :cond_1
    iget v3, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    add-int/lit8 v3, v3, 0x5

    iput v3, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    .line 999
    const/4 v3, 0x4

    new-array v1, v3, [B

    .line 1000
    .local v1, intByte:[B
    iget v3, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {p1, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1001
    #calls: Lcom/miui/server/MdbDebuggingManager;->byteArrayToInt([B)I
    invoke-static {v1}, Lcom/miui/server/MdbDebuggingManager;->access$2000([B)I

    move-result v2

    .line 1002
    .local v2, value:I
    iget v3, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    goto :goto_0
.end method

.method private getParaListFromByteItem([B)Ljava/util/ArrayList;
    .locals 10
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/server/MdbDebuggingManager$Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 1049
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1051
    .local v2, paraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/server/MdbDebuggingManager$Parameter;>;"
    :goto_0
    iget v5, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    array-length v6, p1

    if-lt v5, v6, :cond_1

    .line 1081
    :cond_0
    :goto_1
    return-object v2

    .line 1056
    :cond_1
    iget v5, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    invoke-direct {p0, p1, v5, v8}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->getInt([BII)I

    move-result v1

    .line 1057
    .local v1, itemType:I
    const/4 v5, 0x4

    if-eq v1, v5, :cond_0

    .line 1061
    if-ne v1, v8, :cond_3

    .line 1062
    invoke-direct {p0, p1}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->getBoolFromByteItem([B)I

    move-result v0

    .line 1064
    .local v0, boolValue:I
    if-nez v0, :cond_2

    .line 1065
    const/4 v4, 0x0

    .line 1069
    .local v4, value:I
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v2, v7, v5}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->AddParaToList(Ljava/util/ArrayList;ILjava/lang/Object;)V

    goto :goto_0

    .line 1067
    .end local v4           #value:I
    :cond_2
    const/4 v4, 0x1

    .restart local v4       #value:I
    goto :goto_2

    .line 1070
    .end local v0           #boolValue:I
    .end local v4           #value:I
    :cond_3
    if-ne v1, v7, :cond_4

    .line 1071
    invoke-direct {p0, p1}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->getIntFromByteItem([B)I

    move-result v4

    .line 1072
    .restart local v4       #value:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v2, v7, v5}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->AddParaToList(Ljava/util/ArrayList;ILjava/lang/Object;)V

    goto :goto_0

    .line 1073
    .end local v4           #value:I
    :cond_4
    if-ne v1, v9, :cond_5

    .line 1074
    invoke-direct {p0, p1}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->getStringFromByteItem([B)Ljava/lang/String;

    move-result-object v3

    .line 1075
    .local v3, str:Ljava/lang/String;
    invoke-direct {p0, v2, v9, v3}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->AddParaToList(Ljava/util/ArrayList;ILjava/lang/Object;)V

    goto :goto_0

    .line 1077
    .end local v3           #str:Ljava/lang/String;
    :cond_5
    const-string v5, "mdb_rpc_debug"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown parameter type, anaylse stop! type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getStringByteItem(Ljava/lang/String;)[B
    .locals 6
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 1142
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1143
    .local v0, dataBytes:[B
    array-length v4, v0

    add-int/lit8 v4, v4, 0x5

    new-array v1, v4, [B

    .line 1145
    .local v1, dataItemBytes:[B
    const/4 v4, 0x3

    aput-byte v4, v1, v5

    .line 1146
    const/4 v3, 0x1

    .line 1147
    .local v3, pos:I
    array-length v4, v0

    #calls: Lcom/miui/server/MdbDebuggingManager;->intToByteArray(I)[B
    invoke-static {v4}, Lcom/miui/server/MdbDebuggingManager;->access$2200(I)[B

    move-result-object v2

    .line 1148
    .local v2, dataItemLenBytes:[B
    const/4 v4, 0x4

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1149
    add-int/lit8 v3, v3, 0x4

    .line 1150
    array-length v4, v0

    invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1151
    return-object v1
.end method

.method private getStringFromByteItem([B)Ljava/lang/String;
    .locals 6
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x4

    .line 1023
    iget v3, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    array-length v4, p1

    if-lt v3, v4, :cond_0

    .line 1024
    const-string v3, "mdb_rpc_debug"

    const-string v4, "message has proceed end, there is not string to get."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :goto_0
    return-object v2

    .line 1027
    :cond_0
    iget v3, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, v4}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->getInt([BII)I

    move-result v0

    .line 1028
    .local v0, dataType:I
    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    if-eq v0, v5, :cond_1

    .line 1030
    const-string v3, "mdb_rpc_debug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message format error, data type is not string, type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1033
    :cond_1
    iget v3, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    .line 1034
    iget v3, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    invoke-direct {p0, p1, v3, v5}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->getInt([BII)I

    move-result v1

    .line 1035
    .local v1, strLen:I
    iget v3, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    .line 1036
    new-instance v2, Ljava/lang/String;

    iget v3, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    invoke-direct {v2, p1, v3, v1}, Ljava/lang/String;-><init>([BII)V

    .line 1037
    .local v2, value:Ljava/lang/String;
    iget v3, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    goto :goto_0
.end method

.method private invokeMethod(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;
    .locals 14
    .parameter "pkgName"
    .parameter "serviceName"
    .parameter "methodId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/server/MdbDebuggingManager$Parameter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1096
    .local p4, paraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/server/MdbDebuggingManager$Parameter;>;"
    const/4 v10, 0x5

    .line 1097
    .local v10, tryTimes:I
    const/4 v7, 0x0

    .line 1098
    .local v7, finish:Z
    const/4 v3, 0x0

    .line 1100
    .local v3, _result:Ljava/lang/String;
    :goto_0
    if-lez v10, :cond_2

    if-nez v7, :cond_2

    .line 1101
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1102
    .local v5, decriptor:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/os/MiuiServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1103
    .local v4, binder:Landroid/os/IBinder;
    if-nez v4, :cond_0

    .line 1104
    invoke-direct {p0, v5}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->startService(Ljava/lang/String;)V

    .line 1105
    add-int/lit8 v10, v10, -0x1

    .line 1106
    goto :goto_0

    .line 1108
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1109
    .local v1, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1111
    .local v2, _reply:Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1112
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/server/MdbDebuggingManager$Parameter;

    .line 1113
    .local v9, para:Lcom/miui/server/MdbDebuggingManager$Parameter;
    iget v11, v9, Lcom/miui/server/MdbDebuggingManager$Parameter;->mType:I

    packed-switch v11, :pswitch_data_0

    .line 1121
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Not support parameter type, type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/miui/server/MdbDebuggingManager$Parameter;->mType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1130
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #para:Lcom/miui/server/MdbDebuggingManager$Parameter;
    :catch_0
    move-exception v6

    .line 1131
    .local v6, ex:Landroid/os/DeadObjectException;
    :try_start_1
    invoke-direct {p0, v5}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->startService(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1133
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1134
    .end local v6           #ex:Landroid/os/DeadObjectException;
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1136
    add-int/lit8 v10, v10, -0x1

    .line 1137
    goto :goto_0

    .line 1115
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v9       #para:Lcom/miui/server/MdbDebuggingManager$Parameter;
    :pswitch_0
    :try_start_2
    iget-object v11, v9, Lcom/miui/server/MdbDebuggingManager$Parameter;->mValue:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1133
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #para:Lcom/miui/server/MdbDebuggingManager$Parameter;
    :catchall_0
    move-exception v11

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1134
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1133
    throw v11

    .line 1118
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v9       #para:Lcom/miui/server/MdbDebuggingManager$Parameter;
    :pswitch_1
    :try_start_3
    iget-object v11, v9, Lcom/miui/server/MdbDebuggingManager$Parameter;->mValue:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 1125
    .end local v9           #para:Lcom/miui/server/MdbDebuggingManager$Parameter;
    :cond_1
    const/4 v11, 0x0

    move/from16 v0, p3

    invoke-interface {v4, v0, v1, v2, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1126
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1128
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v3

    .line 1129
    const/4 v7, 0x1

    .line 1133
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    .line 1138
    .end local v1           #_data:Landroid/os/Parcel;
    .end local v2           #_reply:Landroid/os/Parcel;
    .end local v4           #binder:Landroid/os/IBinder;
    .end local v5           #decriptor:Ljava/lang/String;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_2
    return-object v3

    .line 1113
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private invokeServiceMethod([BIII)V
    .locals 11
    .parameter "data"
    .parameter "version"
    .parameter "payloadSize"
    .parameter "command"

    .prologue
    .line 1201
    invoke-direct {p0, p1}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->getStringFromByteItem([B)Ljava/lang/String;

    move-result-object v5

    .line 1202
    .local v5, pkgName:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 1203
    const-string v8, "mdb_rpc_debug"

    const-string v9, "invokeServiceMethod message format error, we can\'t analyse pkg name"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :cond_0
    :goto_0
    return-void

    .line 1207
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->getStringFromByteItem([B)Ljava/lang/String;

    move-result-object v7

    .line 1208
    .local v7, serviceName:Ljava/lang/String;
    if-nez v7, :cond_2

    .line 1209
    const-string v8, "mdb_rpc_debug"

    const-string v9, "invokeServiceMethod message format error, we can\'t analyse service name"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1213
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->getIntFromByteItem([B)I

    move-result v2

    .line 1214
    .local v2, methodId:I
    if-gez v2, :cond_3

    .line 1215
    const-string v8, "mdb_rpc_debug"

    const-string v9, "invokeServiceMethod message format error, we can\'t analyse method id"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1219
    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->getParaListFromByteItem([B)Ljava/util/ArrayList;

    move-result-object v4

    .line 1222
    .local v4, paraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/server/MdbDebuggingManager$Parameter;>;"
    invoke-direct {p0, p1}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->getStringFromByteItem([B)Ljava/lang/String;

    move-result-object v0

    .line 1224
    .local v0, callbackName:Ljava/lang/String;
    iget v8, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    add-int/lit8 v9, p3, 0x10

    if-eq v8, v9, :cond_4

    .line 1225
    const-string v8, "mdb_rpc_debug"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invokeServiceMethod message data error, pos: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", payload size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1229
    :cond_4
    const/4 v6, 0x0

    .line 1231
    .local v6, ret:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v5, v7, v2, v4}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->invokeMethod(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1237
    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    .line 1238
    invoke-direct {p0, v0, v6, p2, p4}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->getAppShareNetMsg(Ljava/lang/String;Ljava/lang/String;II)[B

    move-result-object v3

    .line 1239
    .local v3, msgBytes:[B
    iget-object v8, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->this$0:Lcom/miui/server/MdbDebuggingManager;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v3}, Lcom/miui/server/MdbDebuggingManager;->sendResponse(II[B)V

    goto :goto_0

    .line 1232
    .end local v3           #msgBytes:[B
    :catch_0
    move-exception v1

    .line 1233
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startService(Ljava/lang/String;)V
    .locals 4
    .parameter "action"

    .prologue
    .line 1085
    const/16 v1, 0x32

    .line 1086
    .local v1, startSvcDelayTime:I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1087
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->this$0:Lcom/miui/server/MdbDebuggingManager;

    #getter for: Lcom/miui/server/MdbDebuggingManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/miui/server/MdbDebuggingManager;->access$2100(Lcom/miui/server/MdbDebuggingManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1089
    int-to-long v2, v1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1093
    :goto_0
    return-void

    .line 1090
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x4

    .line 1244
    iget v4, p1, Landroid/os/Message;->what:I

    if-eqz v4, :cond_0

    .line 1245
    const-string v4, "mdb_rpc_debug"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive unknown share net app msg, msg type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :goto_0
    return-void

    .line 1257
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "app_msg"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 1258
    .local v1, data:[B
    if-nez v1, :cond_1

    .line 1259
    const-string v4, "mdb_rpc_debug"

    const-string v5, "receive empty msg, we can\'t process it!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1263
    :cond_1
    invoke-direct {p0, v1, v6, v6}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->getInt([BII)I

    move-result v3

    .line 1264
    .local v3, version:I
    const/16 v4, 0x8

    invoke-direct {p0, v1, v4, v6}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->getInt([BII)I

    move-result v0

    .line 1265
    .local v0, command:I
    const/16 v4, 0xc

    invoke-direct {p0, v1, v4, v6}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->getInt([BII)I

    move-result v2

    .line 1267
    .local v2, payloadSize:I
    const/16 v4, 0x10

    iput v4, p0, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->mPos:I

    .line 1269
    packed-switch v0, :pswitch_data_0

    .line 1274
    const-string v4, "mdb_rpc_debug"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown share net app msg, command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1271
    :pswitch_0
    invoke-direct {p0, v1, v3, v2, v0}, Lcom/miui/server/MdbDebuggingManager$MdbAppMsgHandler;->invokeServiceMethod([BIII)V

    goto :goto_0

    .line 1269
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
