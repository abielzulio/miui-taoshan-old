.class public Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;
.super Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
.source "MiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierPointerEventReceiver;,
        Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarPointerEventReceiver;
    }
.end annotation


# instance fields
.field protected mStatusBarInputEventReceiver:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarPointerEventReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;-><init>()V

    .line 81
    return-void
.end method


# virtual methods
.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->applyPostLayoutPolicyLwInternal(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 40
    return-void
.end method

.method public beginPostLayoutPolicyLw(II)V
    .locals 0
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->beginPostLayoutPolicyLw(II)V

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->beginPostLayoutPolicyLwInternal(II)V

    .line 34
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 2

    .prologue
    .line 43
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 44
    .local v1, statusBar:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->finishPostLayoutPolicyLwInternalBefore()V

    .line 45
    invoke-super {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->finishPostLayoutPolicyLw()I

    move-result v0

    .line 46
    .local v0, result:I
    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 47
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->finishPostLayoutPolicyLwInternalAfter()V

    .line 48
    return v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 3
    .parameter "context"
    .parameter "windowManager"
    .parameter "windowManagerFuncs"

    .prologue
    .line 16
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 17
    sget-boolean v0, Lmiui/os/Build;->IS_REDMI_FACTORY_BUILD:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 20
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->initInternal(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 21
    return-void
.end method

.method protected registerMagnifierInputEventReceiver()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierPointerEventReceiver;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierPointerEventReceiver;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 79
    return-void
.end method

.method protected registerStatusBarInputEventReceiver()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputEventReceiver:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarPointerEventReceiver;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarPointerEventReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarPointerEventReceiver;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputEventReceiver:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarPointerEventReceiver;

    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputEventReceiver:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarPointerEventReceiver;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 56
    :cond_0
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 25
    invoke-super {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->systemReady()V

    .line 26
    new-instance v0, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Landroid/os/PowerManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    .line 27
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->systemReadyInternal()V

    .line 28
    return-void
.end method

.method protected unregisterStatusBarInputEventReceiver()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputEventReceiver:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarPointerEventReceiver;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputEventReceiver:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarPointerEventReceiver;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBarInputEventReceiver:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarPointerEventReceiver;

    .line 63
    :cond_0
    return-void
.end method
