.class public final Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "MagnifierInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "inputChannel"
    .parameter "looper"

    .prologue
    .line 832
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .line 833
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 834
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 3
    .parameter "inputEvent"

    .prologue
    .line 838
    instance-of v2, p1, Landroid/view/MotionEvent;

    if-nez v2, :cond_0

    .line 839
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 852
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 842
    check-cast v1, Landroid/view/MotionEvent;

    .line 843
    .local v1, motionEvent:Landroid/view/MotionEvent;
    const/4 v0, 0x0

    .line 845
    .local v0, handled:Z
    :try_start_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 850
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_0

    .line 847
    :cond_1
    const/4 v0, 0x1

    .line 848
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMagnifierPointEventTracker:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->onTrack(Landroid/view/MotionEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 850
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v2
.end method
