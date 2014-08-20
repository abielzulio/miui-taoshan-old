.class Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;
.super Landroid/os/Handler;
.source "MdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/MdbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MdbDebuggingManagerHandler"
.end annotation


# static fields
.field public static final MESSAGE_LOCAL_REMOTE_CTRL:I = 0x3

.field public static final MESSAGE_LOCAL_RESTORE:I = 0x1

.field public static final MESSAGE_LOCAL_WIRELESS_DISCOVERY:I = 0x2

.field private static final MESSAGE_MDB_CHECK_ACCOUNT:I = 0x5

.field private static final MESSAGE_MDB_GET_ALL_APP_INFOS:I = 0x3

.field private static final MESSAGE_MDB_GET_APP_ICON:I = 0xa

.field private static final MESSAGE_MDB_GET_APP_SIGN_INFO:I = 0x9

.field private static final MESSAGE_MDB_GET_AUTH_TOKEN:I = 0x4

.field private static final MESSAGE_MDB_GET_DEV_INFO:I = 0x7

.field private static final MESSAGE_MDB_GET_PHONE_NUM:I = 0x8

.field private static final MESSAGE_MDB_GET_SDCARD_PATH:I = 0xc

.field private static final MESSAGE_MDB_LOGIN_ACCOUNT:I = 0x6

.field private static final MESSAGE_MDB_OTA_REBOOT:I = 0xb

.field private static final MESSAGE_MDB_REMOTE_CTRL:I = 0x10

.field private static final MESSAGE_MDB_REMOTE_CTRL_UPDATE_ROTATION:I = 0x11

.field private static final MESSAGE_MDB_RESTORE_ACCEPT:I = 0x0

.field private static final MESSAGE_MDB_RESTORE_CANCEL:I = 0x1

.field private static final MESSAGE_MDB_RESTORE_CONFIRM:I = 0x2

.field private static final MESSAGE_MDB_USB_NET_CONFIG:I = 0xe

.field private static final MESSAGE_MDB_USB_NET_CONTROL:I = 0xd

.field private static final MESSAGE_MDB_WIRELESS_DISCOVERY:I = 0xf

.field public static final MESSAGE_SHARENET_DISPLAY_ROTATION:I = 0x2

.field public static final MESSAGE_SHARENET_USB_NET_CONTROL:I = 0x1


# instance fields
.field private mRestoreMsgId:I

.field final synthetic this$0:Lcom/miui/server/MdbDebuggingManager;


# direct methods
.method public constructor <init>(Lcom/miui/server/MdbDebuggingManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;->this$0:Lcom/miui/server/MdbDebuggingManager;

    .line 154
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 155
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    .line 162
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v18, "msgId"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 163
    .local v10, msgId:I
    const/4 v11, 0x0

    .line 164
    .local v11, msgType:I
    const/4 v14, 0x0

    .line 166
    .local v14, responseMsg:[B
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 270
    const-string v2, "mdb_debug"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unknown msg : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;->this$0:Lcom/miui/server/MdbDebuggingManager;

    invoke-virtual {v2, v11, v10, v14}, Lcom/miui/server/MdbDebuggingManager;->sendResponse(II[B)V

    .line 274
    return-void

    .line 168
    :pswitch_0
    const/4 v11, 0x1

    .line 169
    move-object/from16 v0, p0

    iget v10, v0, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;->mRestoreMsgId:I

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;->this$0:Lcom/miui/server/MdbDebuggingManager;

    const/16 v18, 0x1

    new-instance v19, Ljava/lang/String;

    const-string v20, "OK"

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/miui/server/MdbDebuggingManager;->getFrameworkLocalMsg(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    .line 171
    goto :goto_0

    .line 175
    :pswitch_1
    const/4 v11, 0x1

    .line 176
    move-object/from16 v0, p0

    iget v10, v0, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;->mRestoreMsgId:I

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;->this$0:Lcom/miui/server/MdbDebuggingManager;

    const/16 v18, 0x1

    new-instance v19, Ljava/lang/String;

    const-string v20, "NO"

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/miui/server/MdbDebuggingManager;->getFrameworkLocalMsg(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    .line 178
    goto :goto_0

    .line 182
    :pswitch_2
    move-object/from16 v0, p0

    iput v10, v0, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;->mRestoreMsgId:I

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;->this$0:Lcom/miui/server/MdbDebuggingManager;

    #calls: Lcom/miui/server/MdbDebuggingManager;->showConfirmationUI()[B
    invoke-static {v2}, Lcom/miui/server/MdbDebuggingManager;->access$100(Lcom/miui/server/MdbDebuggingManager;)[B

    move-result-object v14

    .line 184
    goto :goto_0

    .line 187
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;->this$0:Lcom/miui/server/MdbDebuggingManager;

    #calls: Lcom/miui/server/MdbDebuggingManager;->getAllAppInfos()[B
    invoke-static {v2}, Lcom/miui/server/MdbDebuggingManager;->access$200(Lcom/miui/server/MdbDebuggingManager;)[B

    move-result-object v14

    .line 188
    goto :goto_0

    .line 191
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v18, "authTokenType"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 192
    .local v8, authTokenType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;->this$0:Lcom/miui/server/MdbDebuggingManager;

    #calls: Lcom/miui/server/MdbDebuggingManager;->getAuthToken(Ljava/lang/String;)[B
    invoke-static {v2, v8}, Lcom/miui/server/MdbDebuggingManager;->access$300(Lcom/miui/server/MdbDebuggingManager;Ljava/lang/String;)[B

    move-result-object v14

    .line 193
    goto :goto_0

    .line 196
    .end local v8           #authTokenType:Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;->this$0:Lcom/miui/server/MdbDebuggingManager;

    #calls: Lcom/miui/server/MdbDebuggingManager;->checkAccount()[B
    invoke-static {v2}, Lcom/miui/server/MdbDebuggingManager;->access$400(Lcom/miui/server/MdbDebuggingManager;)[B

    move-result-object v14

    .line 197
    goto :goto_0

    .line 200
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;->this$0:Lcom/miui/server/MdbDebuggingManager;

    #calls: Lcom/miui/server/MdbDebuggingManager;->showLoginUI()[B
    invoke-static {v2}, Lcom/miui/server/MdbDebuggingManager;->access$500(Lcom/miui/server/MdbDebuggingManager;)[B

    move-result-object v14

    .line 201
    goto/16 :goto_0

    .line 204
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;->this$0:Lcom/miui/server/MdbDebuggingManager;

    #calls: Lcom/miui/server/MdbDebuggingManager;->getDevInfo()[B
    invoke-static {v2}, Lcom/miui/server/MdbDebuggingManager;->access$600(Lcom/miui/server/MdbDebuggingManager;)[B

    move-result-object v14

    .line 205
    goto/16 :goto_0

    .line 208
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;->this$0:Lcom/miui/server/MdbDebuggingManager;

    #calls: Lcom/miui/server/MdbDebuggingManager;->getPhoneNum()[B
    invoke-static {v2}, Lcom/miui/server/MdbDebuggingManager;->access$700(Lcom/miui/server/MdbDebuggingManager;)[B

    move-result-object v14

    .line 209
    goto/16 :goto_0

    .line 212
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v18, "packageName"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 213
    .local v13, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;->this$0:Lcom/miui/server/MdbDebuggingManager;

    #calls: Lcom/miui/server/MdbDebuggingManager;->getAppSignInfo(Ljava/lang/String;)[B
    invoke-static {v2, v13}, Lcom/miui/server/MdbDebuggingManager;->access$800(Lcom/miui/server/MdbDebuggingManager;Ljava/lang/String;)[B

    move-result-object v14

    .line 214
    goto/16 :goto_0

    .line 218
    .end local v13           #packageName:Ljava/lang/String;
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v18, "packageName"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 219
    .restart local v13       #packageName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v18, "width"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 220
    .local v17, width:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v18, "height"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 221
    .local v9, height:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;->this$0:Lcom/miui/server/MdbDebuggingManager;

    move/from16 v0, v17

    #calls: Lcom/miui/server/MdbDebuggingManager;->getAppIcon(Ljava/lang/String;II)[B
    invoke-static {v2, v13, v0, v9}, Lcom/miui/server/MdbDebuggingManager;->access$900(Lcom/miui/server/MdbDebuggingManager;Ljava/lang/String;II)[B

    move-result-object v14

    .line 222
    goto/16 :goto_0

    .line 225
    .end local v9           #height:I
    .end local v13           #packageName:Ljava/lang/String;
    .end local v17           #width:I
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;->this$0:Lcom/miui/server/MdbDebuggingManager;

    #calls: Lcom/miui/server/MdbDebuggingManager;->showOtaRebootUI()[B
    invoke-static {v2}, Lcom/miui/server/MdbDebuggingManager;->access$1000(Lcom/miui/server/MdbDebuggingManager;)[B

    move-result-object v14

    .line 226
    goto/16 :goto_0

    .line 228
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;->this$0:Lcom/miui/server/MdbDebuggingManager;

    #calls: Lcom/miui/server/MdbDebuggingManager;->getSdCardPath()[B
    invoke-static {v2}, Lcom/miui/server/MdbDebuggingManager;->access$1100(Lcom/miui/server/MdbDebuggingManager;)[B

    move-result-object v14

    .line 229
    goto/16 :goto_0

    .line 231
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v18, "operation"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 232
    .local v12, operation:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v18, "where"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 233
    .local v16, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;->this$0:Lcom/miui/server/MdbDebuggingManager;

    #calls: Lcom/miui/server/MdbDebuggingManager;->setUsbNetState(Ljava/lang/String;)[B
    invoke-static {v2, v12}, Lcom/miui/server/MdbDebuggingManager;->access$1200(Lcom/miui/server/MdbDebuggingManager;Ljava/lang/String;)[B

    move-result-object v14

    .line 235
    const-string v2, "from_app"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    const/4 v11, 0x2

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;->this$0:Lcom/miui/server/MdbDebuggingManager;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0, v12}, Lcom/miui/server/MdbDebuggingManager;->getFrameworkShareNetMsg(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    goto/16 :goto_0

    .line 242
    .end local v12           #operation:Ljava/lang/String;
    .end local v16           #where:Ljava/lang/String;
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v18, "ipAddr"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, ipAddr:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v18, "prefixLength"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 244
    .local v4, prefixLength:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v18, "gwAddr"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 245
    .local v5, gwAddr:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v18, "dns1"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 246
    .local v6, dns1:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v18, "dns2"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 247
    .local v7, dns2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;->this$0:Lcom/miui/server/MdbDebuggingManager;

    #calls: Lcom/miui/server/MdbDebuggingManager;->setUsbNetConfig(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    invoke-static/range {v2 .. v7}, Lcom/miui/server/MdbDebuggingManager;->access$1300(Lcom/miui/server/MdbDebuggingManager;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v14

    .line 248
    goto/16 :goto_0

    .line 251
    .end local v3           #ipAddr:Ljava/lang/String;
    .end local v4           #prefixLength:I
    .end local v5           #gwAddr:Ljava/lang/String;
    .end local v6           #dns1:Ljava/lang/String;
    .end local v7           #dns2:Ljava/lang/String;
    :pswitch_f
    const/4 v11, 0x1

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;->this$0:Lcom/miui/server/MdbDebuggingManager;

    const/16 v18, 0x2

    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;->this$0:Lcom/miui/server/MdbDebuggingManager;

    move-object/from16 v20, v0

    #calls: Lcom/miui/server/MdbDebuggingManager;->getWirelessDiscoveryInfo()[B
    invoke-static/range {v20 .. v20}, Lcom/miui/server/MdbDebuggingManager;->access$1400(Lcom/miui/server/MdbDebuggingManager;)[B

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>([B)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/miui/server/MdbDebuggingManager;->getFrameworkLocalMsg(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    .line 253
    goto/16 :goto_0

    .line 256
    :pswitch_10
    const/4 v11, 0x1

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;->this$0:Lcom/miui/server/MdbDebuggingManager;

    const/16 v18, 0x3

    new-instance v19, Ljava/lang/String;

    const-string v20, "DISABLE"

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/miui/server/MdbDebuggingManager;->getFrameworkLocalMsg(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    .line 258
    goto/16 :goto_0

    .line 261
    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v18, "rotation"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 262
    .local v15, rotation:I
    const/4 v11, 0x2

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/server/MdbDebuggingManager$MdbDebuggingManagerHandler;->this$0:Lcom/miui/server/MdbDebuggingManager;

    const/16 v18, 0x2

    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/miui/server/MdbDebuggingManager;->getFrameworkShareNetMsg(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    .line 267
    goto/16 :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
