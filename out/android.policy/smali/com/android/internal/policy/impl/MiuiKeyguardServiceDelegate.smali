.class public Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;
.super Lcom/android/internal/policy/impl/AbstractKeyguardServiceDelegate;
.source "MiuiKeyguardServiceDelegate.java"


# instance fields
.field protected mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field protected mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Landroid/os/PowerManager;)V
    .locals 0
    .parameter "keyguardDelegate"
    .parameter "powerManager"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AbstractKeyguardServiceDelegate;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .line 16
    iput-object p2, p0, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->mPowerManager:Landroid/os/PowerManager;

    .line 17
    return-void
.end method


# virtual methods
.method protected enableUserActivity(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 20
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isShowingAndNotHidden()Z
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v0

    return v0
.end method

.method public keyguardDone()V
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->keyguardDone(ZZ)V

    .line 33
    return-void
.end method

.method public onScreenTurnedOnWithoutListener()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate$1;-><init>(Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;)V

    .line 45
    :cond_0
    return-void
.end method

.method public onWakeKeyWhenKeyguardShowingTq(IZ)Z
    .locals 1
    .parameter "keyCode"
    .parameter "isDocked"

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public pokeWakelock()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 49
    return-void
.end method
