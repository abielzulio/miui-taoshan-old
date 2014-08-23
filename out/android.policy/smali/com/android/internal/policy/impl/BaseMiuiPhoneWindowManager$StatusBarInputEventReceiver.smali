.class public Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StatusBarInputEventReceiver"
.end annotation


# instance fields
.field private mTracker:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;

.field final synthetic this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "inputChannel"
    .parameter "looper"

    .prologue
    .line 754
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .line 755
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 752
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;

    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarInputEventReceiver;->mTracker:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;

    .line 756
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 5
    .parameter "inputEvent"

    .prologue
    .line 760
    instance-of v3, p1, Landroid/view/MotionEvent;

    if-nez v3, :cond_0

    .line 761
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 778
    :goto_0
    return-void

    :cond_0
    move-object v2, p1

    .line 765
    check-cast v2, Landroid/view/MotionEvent;

    .line 766
    .local v2, motionEvent:Landroid/view/MotionEvent;
    const/4 v1, 0x0

    .line 768
    .local v1, handled:Z
    :try_start_0
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    .line 776
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_0

    .line 771
    :cond_2
    const/4 v1, 0x1

    .line 772
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarInputEventReceiver;->mTracker:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->onTrack(Landroid/view/MotionEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 776
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_0

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "WindowManager"

    const-string v4, "onInputEvent"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 776
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v3
.end method
