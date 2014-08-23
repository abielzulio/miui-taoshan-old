.class public Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MagnifierPointEventTracker"
.end annotation


# instance fields
.field private mDownX:I

.field private mDownY:I

.field private mIsTouchDown:Z

.field private mShowMagnifier:Z

.field mShowMagnifierReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V
    .locals 1
    .parameter

    .prologue
    .line 791
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 797
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker$1;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->mShowMagnifierReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->mShowMagnifier:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 791
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->mShowMagnifier:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->mIsTouchDown:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 791
    iget v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->mDownX:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 791
    iget v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->mDownY:I

    return v0
.end method


# virtual methods
.method protected onTrack(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "motionEvent"

    .prologue
    .line 808
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->mDownX:I

    .line 809
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->mDownY:I

    .line 811
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v1, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 812
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 827
    :cond_0
    :goto_0
    monitor-exit v1

    .line 828
    return-void

    .line 815
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->mIsTouchDown:Z

    .line 816
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->mShowMagnifier:Z

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getMagnifier()Lcom/android/internal/policy/impl/MagnifierPopupWindow;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->mDownX:I

    iget v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->mDownY:I

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->showMagnifier(II)V

    goto :goto_0

    .line 827
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 822
    :pswitch_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->mIsTouchDown:Z

    .line 823
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->mShowMagnifier:Z

    .line 824
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getMagnifier()Lcom/android/internal/policy/impl/MagnifierPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->hide()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 812
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
