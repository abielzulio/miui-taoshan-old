.class Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2;
.super Landroid/os/Handler;
.source "MiuiScreenOnProximityLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 142
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    monitor-enter v4

    .line 143
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 214
    :cond_0
    :goto_0
    :pswitch_0
    monitor-exit v4

    .line 215
    return-void

    .line 145
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    const-string v3, "AbstractScreenOnProximityLock"

    const-string v5, "too close screen, show hint..."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    iget-object v3, v3, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 149
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    #calls: Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->prepareHintView()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->access$500(Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;)V

    .line 151
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    iget-object v3, v3, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->mKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->enableUserActivity(Z)V

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 155
    :pswitch_2
    :try_start_1
    const-string v3, "AbstractScreenOnProximityLock"

    const-string v5, "far from the screen, hide hint..."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    iget-object v3, v3, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 157
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    iget-object v2, v3, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    .line 158
    .local v2, view:Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    .line 160
    const v3, 0x60b007b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 161
    .local v0, animator:Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 162
    new-instance v3, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2$1;

    invoke-direct {v3, p0, v2}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2$1;-><init>(Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 180
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 182
    .end local v0           #animator:Landroid/animation/ObjectAnimator;
    .end local v2           #view:Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    iget-object v3, v3, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->mKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v3

    if-nez v3, :cond_0

    .line 183
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    iget-object v3, v3, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->mKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->enableUserActivity(Z)V

    goto :goto_0

    .line 188
    :pswitch_3
    const-string v3, "AbstractScreenOnProximityLock"

    const-string v5, "far from the screen for a certain time, release proximity sensor..."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->release()Z

    goto :goto_0

    .line 193
    :pswitch_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    iget-object v3, v3, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    #getter for: Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->mHintViewShow:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->access$600(Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 194
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    const/4 v5, 0x1

    #setter for: Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->mHintViewShow:Z
    invoke-static {v3, v5}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->access$602(Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;Z)Z

    .line 196
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    iget-object v3, v3, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    const v5, 0x60b007b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 197
    .local v1, root:Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 198
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 199
    .restart local v0       #animator:Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 200
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 202
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    iget-object v3, v3, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    const v5, 0x60b00fb

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_2

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 206
    const-wide/16 v5, 0x1f4

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 207
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 208
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 209
    const-wide/16 v5, 0x1f4

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 210
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 160
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 198
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 202
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
