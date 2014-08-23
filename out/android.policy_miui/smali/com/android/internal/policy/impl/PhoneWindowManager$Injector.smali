.class Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkStatusBarVisibility(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 1
    .parameter "pwm"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAboveStatusBarFullScreenWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyStatusBarShowingOrHiding(Z)V

    .line 270
    :cond_0
    return-void
.end method

.method static clearAboveStatusBarFullScreenWindow(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 1
    .parameter "pwm"

    .prologue
    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAboveStatusBarFullScreenWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 241
    return-void
.end method

.method static getMiuiViewLayer(II)I
    .locals 3
    .parameter "type"
    .parameter "defaultLayer"

    .prologue
    .line 225
    packed-switch p0, :pswitch_data_0

    .line 231
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown window type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local p1
    :goto_0
    return p1

    .line 227
    .restart local p1
    :pswitch_0
    const/16 p1, 0x1b

    goto :goto_0

    .line 229
    :pswitch_1
    const/16 p1, 0x1c

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0xbb5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 1
    .parameter "focus"
    .parameter "ws"

    .prologue
    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method static isInCallScreenShowing(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 211
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 213
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, runningActivity:Ljava/lang/String;
    const-string v2, "com.android.phone.MiuiInCallScreen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method static performReleaseHapticFeedback(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;I)V
    .locals 4
    .parameter "manager"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 199
    .local v0, down:Z
    :goto_0
    if-nez v0, :cond_0

    and-int/lit16 v2, p2, 0x100

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 200
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 202
    :cond_0
    return-void

    .end local v0           #down:Z
    :cond_1
    move v0, v1

    .line 198
    goto :goto_0
.end method

.method static sendPowerUpBroadcast(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 3
    .parameter "manager"

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.KEYCODE_POWER_UP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 208
    :cond_0
    return-void
.end method

.method static setAboveStatusBarFullScreenWindow(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .parameter "pwm"
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    .line 250
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAboveStatusBarFullScreenWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v2, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v2, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    .line 258
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAboveStatusBarFullScreenWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 260
    :cond_0
    return-void
.end method
