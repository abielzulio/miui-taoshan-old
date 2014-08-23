.class Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 797
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker$1;->this$1:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker$1;->this$1:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->mShowMagnifier:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->access$302(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;Z)Z

    .line 800
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker$1;->this$1:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->mIsTouchDown:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->access$400(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker$1;->this$1:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getMagnifier()Lcom/android/internal/policy/impl/MagnifierPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->updateCache()V

    .line 802
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker$1;->this$1:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getMagnifier()Lcom/android/internal/policy/impl/MagnifierPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker$1;->this$1:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->mDownX:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->access$500(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker$1;->this$1:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->mDownY:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->access$600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->showMagnifier(II)V

    .line 804
    :cond_0
    return-void
.end method
