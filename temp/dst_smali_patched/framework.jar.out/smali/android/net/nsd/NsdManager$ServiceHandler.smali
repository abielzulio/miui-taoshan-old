.class Landroid/net/nsd/NsdManager$ServiceHandler;
.super Landroid/os/Handler;
.source "NsdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/nsd/NsdManager;


# direct methods
.method constructor <init>(Landroid/net/nsd/NsdManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    iput-object p1, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "message"

    .prologue
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget v5, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/net/nsd/NsdManager;->getListener(I)Ljava/lang/Object;
    invoke-static {v4, v5}, Landroid/net/nsd/NsdManager;->access$200(Landroid/net/nsd/NsdManager;I)Ljava/lang/Object;

    move-result-object v0

    .local v0, listener:Ljava/lang/Object;
    if-nez v0, :cond_1

    const-string v4, "NsdManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stale key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #listener:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    #getter for: Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Landroid/net/nsd/NsdManager;->access$000(Landroid/net/nsd/NsdManager;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    const v5, 0x11001

    invoke-virtual {v4, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    #getter for: Landroid/net/nsd/NsdManager;->mConnected:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v4}, Landroid/net/nsd/NsdManager;->access$100(Landroid/net/nsd/NsdManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :pswitch_3
    const-string v4, "NsdManager"

    const-string v5, "Channel lost"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v0       #listener:Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x1

    .local v1, listenerRemove:Z
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget v5, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/net/nsd/NsdManager;->getNsdService(I)Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v4, v5}, Landroid/net/nsd/NsdManager;->access$300(Landroid/net/nsd/NsdManager;I)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v2

    .local v2, ns:Landroid/net/nsd/NsdServiceInfo;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_1

    :pswitch_4
    const-string v4, "NsdManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignored "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #listener:Ljava/lang/Object;
    :goto_1
    if-eqz v1, :cond_0

    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget v5, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/net/nsd/NsdManager;->removeListener(I)V
    invoke-static {v4, v5}, Landroid/net/nsd/NsdManager;->access$500(Landroid/net/nsd/NsdManager;I)V

    goto :goto_0

    .restart local v0       #listener:Ljava/lang/Object;
    :pswitch_5
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/nsd/NsdServiceInfo;

    #calls: Landroid/net/nsd/NsdManager;->getNsdServiceInfoType(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;
    invoke-static {v5, v4}, Landroid/net/nsd/NsdManager;->access$400(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v3

    .local v3, s:Ljava/lang/String;
    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .end local v0           #listener:Ljava/lang/Object;
    invoke-interface {v0, v3}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onDiscoveryStarted(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_1

    .end local v3           #s:Ljava/lang/String;
    .restart local v0       #listener:Ljava/lang/Object;
    :pswitch_6
    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .end local v0           #listener:Ljava/lang/Object;
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    #calls: Landroid/net/nsd/NsdManager;->getNsdServiceInfoType(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;
    invoke-static {v4, v2}, Landroid/net/nsd/NsdManager;->access$400(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v4, v5}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onStartDiscoveryFailed(Ljava/lang/String;I)V

    goto :goto_1

    .restart local v0       #listener:Ljava/lang/Object;
    :pswitch_7
    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .end local v0           #listener:Ljava/lang/Object;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v0, v4}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V

    const/4 v1, 0x0

    goto :goto_1

    .restart local v0       #listener:Ljava/lang/Object;
    :pswitch_8
    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .end local v0           #listener:Ljava/lang/Object;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v0, v4}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V

    const/4 v1, 0x0

    goto :goto_1

    .restart local v0       #listener:Ljava/lang/Object;
    :pswitch_9
    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .end local v0           #listener:Ljava/lang/Object;
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    #calls: Landroid/net/nsd/NsdManager;->getNsdServiceInfoType(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;
    invoke-static {v4, v2}, Landroid/net/nsd/NsdManager;->access$400(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v4, v5}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onStopDiscoveryFailed(Ljava/lang/String;I)V

    goto :goto_1

    .restart local v0       #listener:Ljava/lang/Object;
    :pswitch_a
    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .end local v0           #listener:Ljava/lang/Object;
    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    #calls: Landroid/net/nsd/NsdManager;->getNsdServiceInfoType(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;
    invoke-static {v4, v2}, Landroid/net/nsd/NsdManager;->access$400(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onDiscoveryStopped(Ljava/lang/String;)V

    goto :goto_1

    .restart local v0       #listener:Ljava/lang/Object;
    :pswitch_b
    check-cast v0, Landroid/net/nsd/NsdManager$RegistrationListener;

    .end local v0           #listener:Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2, v4}, Landroid/net/nsd/NsdManager$RegistrationListener;->onRegistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    goto :goto_1

    .restart local v0       #listener:Ljava/lang/Object;
    :pswitch_c
    check-cast v0, Landroid/net/nsd/NsdManager$RegistrationListener;

    .end local v0           #listener:Ljava/lang/Object;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v0, v4}, Landroid/net/nsd/NsdManager$RegistrationListener;->onServiceRegistered(Landroid/net/nsd/NsdServiceInfo;)V

    const/4 v1, 0x0

    goto :goto_1

    .restart local v0       #listener:Ljava/lang/Object;
    :pswitch_d
    check-cast v0, Landroid/net/nsd/NsdManager$RegistrationListener;

    .end local v0           #listener:Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2, v4}, Landroid/net/nsd/NsdManager$RegistrationListener;->onUnregistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    goto :goto_1

    .restart local v0       #listener:Ljava/lang/Object;
    :pswitch_e
    check-cast v0, Landroid/net/nsd/NsdManager$RegistrationListener;

    .end local v0           #listener:Ljava/lang/Object;
    invoke-interface {v0, v2}, Landroid/net/nsd/NsdManager$RegistrationListener;->onServiceUnregistered(Landroid/net/nsd/NsdServiceInfo;)V

    goto :goto_1

    .restart local v0       #listener:Ljava/lang/Object;
    :pswitch_f
    check-cast v0, Landroid/net/nsd/NsdManager$ResolveListener;

    .end local v0           #listener:Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2, v4}, Landroid/net/nsd/NsdManager$ResolveListener;->onResolveFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    goto/16 :goto_1

    .restart local v0       #listener:Ljava/lang/Object;
    :pswitch_10
    check-cast v0, Landroid/net/nsd/NsdManager$ResolveListener;

    .end local v0           #listener:Ljava/lang/Object;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v0, v4}, Landroid/net/nsd/NsdManager$ResolveListener;->onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x11000
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x60002
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_9
        :pswitch_a
        :pswitch_4
        :pswitch_b
        :pswitch_c
        :pswitch_4
        :pswitch_d
        :pswitch_e
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
