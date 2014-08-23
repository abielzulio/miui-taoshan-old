.class public abstract Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
.super Lcom/android/internal/policy/impl/PhoneWindowManager;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;,
        Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;,
        Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierInputEventReceiver;,
        Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;,
        Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarInputEventReceiver;,
        Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;
    }
.end annotation


# static fields
.field private static final BTN_MOUSE:I = 0x110

.field static final HIDDEN_NAV_CONSUMER_LAYER:I = 0x1a

#the value of this static final field might be set in the static constructor
.field private static final SHORTCUT_ENABLE_SCREEN_BUTTONS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHORTCUT_MAX_BRIGHTNESS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHORTCUT_SCREENSHOT_ANDROID:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHORTCUT_SCREENSHOT_MIUI:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHORTCUT_UNLOCK:I = 0x0

.field static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field static final TYPE_LAYER_OFFSET:I = 0x3e8

.field private static final WINDOW_EXTRA_FLAG_DEFAULT:I = -0x1

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field private static sPhoneWindowManager:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;


# instance fields
.field private mBinder:Landroid/os/Binder;

.field private mBootProgress:Landroid/widget/ProgressBar;

.field private mBootText:[Ljava/lang/String;

.field private mBootTextView:Landroid/widget/TextView;

.field mCameraKeyWakeScreen:Z

.field private mFirstPressedKey:I

.field private mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field private mHasCameraFlash:Z

.field protected mIsStatusBarVisibleInFullscreen:Z

.field private mKeyPressed:I

.field private mKeyPressing:I

.field private mMagnifier:Lcom/android/internal/policy/impl/MagnifierPopupWindow;

.field protected mMagnifierPointEventTracker:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;

.field private mMiuiBootMsgDialog:Landroid/app/Dialog;

.field protected mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

.field mPowerLongPressOriginal:Ljava/lang/Runnable;

.field private mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

.field mScreenButtonsDisabled:Z

.field private mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

.field private mScreenOffReason:I

.field private mScreenOnByLid:Z

.field mScreenshotReceiver:Landroid/content/BroadcastReceiver;

.field private mShortcutTriggered:Z

.field private mSmartCoverLidOpen:Z

.field private mSoftKeyboardRect:Landroid/graphics/Rect;

.field private mSoftKeyboardWinToken:Landroid/os/IBinder;

.field mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

.field private mTorchEnabled:Z

.field private mTorchStateReceiver:Landroid/database/ContentObserver;

.field mTrackballWakeScreen:Z

.field private final mTurnScreenOffBecauseOfTorchEnabled:Ljava/lang/Runnable;

.field mVolumeKeyWakeScreen:Z

.field private mWin:Landroid/view/WindowManagerPolicy$WindowState;

.field private mWindowExtraFlag:I

.field private mWindowFlagBinder:Landroid/os/Binder;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x52

    const/16 v4, 0x1a

    const/16 v3, 0x19

    const/16 v2, 0x18

    .line 99
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_ENABLE_SCREEN_BUTTONS:I

    .line 101
    invoke-static {v5}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_MAX_BRIGHTNESS:I

    .line 103
    invoke-static {v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v3}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_ANDROID:I

    .line 105
    invoke-static {v5}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v3}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_MIUI:I

    .line 107
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_UNLOCK:I

    .line 144
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->sPhoneWindowManager:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .line 260
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xd3t 0x7t 0x0t 0x0t
        0xdat 0x7t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;-><init>()V

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getPowerLongPress()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mPowerLongPressOriginal:Ljava/lang/Runnable;

    .line 131
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$1;

    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchStateReceiver:Landroid/database/ContentObserver;

    .line 410
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTurnScreenOffBecauseOfTorchEnabled:Ljava/lang/Runnable;

    .line 625
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWindowFlagBinder:Landroid/os/Binder;

    .line 627
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWindowExtraFlag:I

    .line 681
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBinder:Landroid/os/Binder;

    .line 683
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

    .line 781
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    .line 790
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMagnifierPointEventTracker:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;

    .line 865
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHasCameraFlash:Z

    .line 866
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    .line 875
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    .line 1109
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTurnScreenOffBecauseOfTorchEnabled:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->markShortcutTriggered()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHasCameraFlash:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->setTorch(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->setStatusBarInFullscreen(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Lmiui/util/HapticFeedbackUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    return-object v0
.end method

.method public static getInstance()Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->sPhoneWindowManager:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    return-object v0
.end method

.method private static getKeyBitmask(I)I
    .locals 1
    .parameter "keycode"

    .prologue
    .line 82
    sparse-switch p0, :sswitch_data_0

    .line 96
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 84
    :sswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 86
    :sswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 88
    :sswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 90
    :sswitch_3
    const/16 v0, 0x10

    goto :goto_0

    .line 92
    :sswitch_4
    const/16 v0, 0x20

    goto :goto_0

    .line 94
    :sswitch_5
    const/16 v0, 0x40

    goto :goto_0

    .line 82
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x18 -> :sswitch_5
        0x19 -> :sswitch_4
        0x1a -> :sswitch_3
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method static getStatusBarManagerService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 3

    .prologue
    .line 1300
    const-string v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1302
    .local v0, service:Lcom/android/internal/statusbar/IStatusBarService;
    if-nez v0, :cond_0

    .line 1303
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IStatusBarService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :cond_0
    return-object v0
.end method

.method static getWindownManagerService()Landroid/view/IWindowManager;
    .locals 3

    .prologue
    .line 1309
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 1311
    .local v0, service:Landroid/view/IWindowManager;
    if-nez v0, :cond_0

    .line 1312
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IWindowManager interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :cond_0
    return-object v0
.end method

.method private handleKeyCombination()V
    .locals 4

    .prologue
    .line 376
    iget v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    iget v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    if-eqz v1, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    const/4 v0, 0x0

    .line 380
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 381
    iget v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_UNLOCK:I

    if-ne v1, v2, :cond_2

    .line 382
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->releaseScreenOnProximitySensor()V

    .line 383
    const/4 v0, 0x1

    .line 405
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->markShortcutTriggered()V

    goto :goto_0

    .line 386
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenButtonsDisabled:Z

    if-eqz v1, :cond_4

    .line 387
    iget v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_ENABLE_SCREEN_BUTTONS:I

    if-ne v1, v2, :cond_2

    .line 388
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.app.ExtraStatusBarManager.TRIGGER_TOGGLE_SCREEN_BUTTONS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 389
    const/4 v0, 0x1

    goto :goto_1

    .line 392
    :cond_4
    iget v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_MAX_BRIGHTNESS:I

    if-ne v1, v2, :cond_5

    .line 393
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->setMaxBacklightBrightness()V

    .line 394
    const/4 v0, 0x1

    goto :goto_1

    .line 396
    :cond_5
    iget v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_MIUI:I

    if-ne v1, v2, :cond_2

    .line 400
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getScreenshotChordLongPress()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 401
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getScreenshotChordLongPress()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 402
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private intercept(Landroid/view/KeyEvent;IZI)I
    .locals 3
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"
    .parameter "expectedResult"

    .prologue
    .line 418
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 419
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 422
    .local v0, down:Z
    :goto_0
    if-nez v0, :cond_1

    iget v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mFirstPressedKey:I

    if-ne v2, v1, :cond_1

    const/16 v2, 0x18

    if-eq v2, v1, :cond_0

    const/16 v2, 0x19

    if-ne v2, v1, :cond_1

    .line 424
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    .line 426
    :cond_1
    return p4

    .line 419
    .end local v0           #down:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInCallScreenShowing()Z
    .locals 4

    .prologue
    .line 342
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 344
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

    .line 346
    .local v1, runningActivity:Ljava/lang/String;
    const-string v2, "com.android.phone.MiuiInCallScreen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private markShortcutTriggered()V
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    .line 372
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->callInterceptPowerKeyUp(Z)V

    .line 373
    return-void
.end method

.method private releaseScreenOnProximitySensor()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->release()Z

    .line 258
    :cond_0
    return-void
.end method

.method private setStatusBarInFullscreen(Z)V
    .locals 5
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 690
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    .line 692
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 693
    .local v1, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_1

    .line 694
    if-eqz p1, :cond_0

    const/high16 v2, -0x8000

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBinder:Landroid/os/Binder;

    const-string v4, "android"

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    .end local v1           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 710
    :goto_1
    return-void

    .line 699
    :catch_0
    move-exception v0

    .line 701
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0

    .line 707
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 708
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private setTorch(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 869
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    .line 870
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 871
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "miui.intent.extra.IS_ENABLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 872
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 873
    return-void
.end method


# virtual methods
.method protected applyPostLayoutPolicyLwInternal(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 635
    iget v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWindowExtraFlag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    if-eqz v0, :cond_1

    .line 637
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    iput v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWindowExtraFlag:I

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    iput v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWindowExtraFlag:I

    goto :goto_0
.end method

.method protected beginPostLayoutPolicyLwInternal(II)V
    .locals 1
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    .line 630
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWindowExtraFlag:I

    .line 631
    return-void
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 1350
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1351
    const/4 v0, 0x0

    .line 1353
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method checkProcessRunning(Ljava/lang/String;)Z
    .locals 7
    .parameter "processName"

    .prologue
    const/4 v4, 0x0

    .line 1318
    iget-object v5, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1319
    .local v0, am:Landroid/app/ActivityManager;
    if-nez v0, :cond_1

    .line 1335
    :cond_0
    :goto_0
    return v4

    .line 1323
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 1325
    .local v3, procs:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_0

    .line 1329
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1330
    .local v2, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1331
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 1341
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1342
    const/4 v0, 0x0

    .line 1344
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method protected finishPostLayoutPolicyLwInternalAfter()V
    .locals 5

    .prologue
    .line 656
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiui/app/ExtraStatusBarManager;->isExpandableUnderFullscreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    if-nez v2, :cond_0

    .line 658
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 659
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->registerStatusBarInputEventReceiver()V

    .line 667
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 668
    .local v1, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_1

    .line 669
    iget v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWindowExtraFlag:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWindowFlagBinder:Landroid/os/Binder;

    iget-object v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    .end local v1           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1
    :goto_2
    return-void

    .line 662
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->unregisterStatusBarInputEventReceiver()V

    goto :goto_0

    .line 669
    .restart local v1       #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_3
    :try_start_1
    iget v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWindowExtraFlag:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 674
    .end local v1           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 676
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_2
.end method

.method protected finishPostLayoutPolicyLwInternalBefore()V
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 647
    .local v0, statusBar:Landroid/view/WindowManagerPolicy$WindowState;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    if-eqz v1, :cond_0

    .line 648
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 649
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-nez v1, :cond_0

    .line 650
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 653
    :cond_0
    return-void
.end method

.method getMagnifier()Lcom/android/internal/policy/impl/MagnifierPopupWindow;
    .locals 3

    .prologue
    .line 856
    monitor-enter p0

    .line 857
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMagnifier:Lcom/android/internal/policy/impl/MagnifierPopupWindow;

    if-nez v1, :cond_0

    .line 858
    const/16 v1, 0xbb5

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x2710

    add-int/lit16 v0, v1, 0x3e8

    .line 859
    .local v0, maxLayer:I
    new-instance v1, Lcom/android/internal/policy/impl/MagnifierPopupWindow;

    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMagnifier:Lcom/android/internal/policy/impl/MagnifierPopupWindow;

    .line 861
    .end local v0           #maxLayer:I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMagnifier:Lcom/android/internal/policy/impl/MagnifierPopupWindow;

    monitor-exit p0

    return-object v1

    .line 862
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSoftKeyboardRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSoftKeyboardRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 367
    return-void
.end method

.method public getSoftKeyboardToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSoftKeyboardWinToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public hideBootMessages()V
    .locals 2

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1297
    return-void
.end method

.method protected initInternal(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 7
    .parameter "context"
    .parameter "windowManager"
    .parameter "windowManagerFuncs"

    .prologue
    const/4 v6, 0x0

    .line 152
    sput-object p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->sPhoneWindowManager:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .line 153
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSoftKeyboardRect:Landroid/graphics/Rect;

    .line 154
    new-instance v2, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/os/Handler;)V

    .line 155
    .local v2, settingsObserver:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->observe()V

    .line 157
    new-instance v3, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->setPowerLongPress(Ljava/lang/Runnable;)V

    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 172
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CAPTURE_SCREENSHOT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    iget-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 176
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v3, "com.miui.app.ExtraStatusBarManager.EXIT_FULLSCREEN"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    iget-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 180
    .local v1, pm:Landroid/content/pm/PackageManager;
    const-string v3, "android.hardware.camera.flash"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHasCameraFlash:Z

    .line 181
    new-instance v3, Lmiui/util/HapticFeedbackUtil;

    invoke-direct {v3, p1, v6}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "torch_state"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchStateReceiver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->registerMagnifierInputEventReceiver()V

    .line 188
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 189
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SHOW_MAGNIFIER"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    iget-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMagnifierPointEventTracker:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;

    iget-object v3, v3, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->mShowMagnifierReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 12
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 267
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 268
    .local v5, keyCode:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    .line 269
    .local v6, repeatCount:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_1

    const/4 v2, 0x1

    .line 270
    .local v2, down:Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    .line 272
    .local v1, canceled:Z
    if-eqz v2, :cond_0

    if-nez v6, :cond_0

    .line 273
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 276
    :cond_0
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    if-eqz v10, :cond_2

    .line 277
    const-wide/16 v10, -0x1

    .line 338
    :goto_1
    return-wide v10

    .line 269
    .end local v1           #canceled:Z
    .end local v2           #down:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 284
    .restart local v1       #canceled:Z
    .restart local v2       #down:Z
    :cond_2
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenButtonsDisabled:Z

    if-eqz v10, :cond_3

    .line 285
    sparse-switch v5, :sswitch_data_0

    .line 294
    :cond_3
    const/4 v10, 0x3

    if-ne v5, v10, :cond_c

    .line 295
    if-nez v2, :cond_7

    .line 296
    if-nez v1, :cond_6

    .line 298
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 299
    .local v7, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v7, :cond_5

    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->isInCallScreenShowing()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 302
    const-string v10, "WindowManager"

    const-string v11, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .end local v7           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_4
    :goto_2
    const-wide/16 v10, -0x1

    goto :goto_1

    .line 290
    :sswitch_0
    const-wide/16 v10, -0x1

    goto :goto_1

    .line 305
    .restart local v7       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->launchHomeFromHotKey()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 307
    .end local v7           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    .line 308
    .local v3, ex:Landroid/os/RemoteException;
    const-string v10, "WindowManager"

    const-string v11, "RemoteException from getPhoneInterface()"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 311
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_6
    const-string v10, "WindowManager"

    const-string v11, "Ignoring HOME; event canceled."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 317
    :cond_7
    if-eqz p1, :cond_9

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 318
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_3
    if-eqz v0, :cond_4

    .line 319
    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 320
    .local v8, type:I
    const/16 v10, 0x7d4

    if-eq v8, v10, :cond_8

    const/16 v10, 0x7d9

    if-ne v8, v10, :cond_a

    .line 323
    :cond_8
    const-wide/16 v10, 0x0

    goto :goto_1

    .line 317
    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #type:I
    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    .line 325
    .restart local v0       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v8       #type:I
    :cond_a
    sget-object v10, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v9, v10

    .line 326
    .local v9, typeCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4
    if-ge v4, v9, :cond_4

    .line 327
    sget-object v10, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v10, v10, v4

    if-ne v8, v10, :cond_b

    .line 329
    iget-object v10, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    .line 326
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 338
    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v4           #i:I
    .end local v8           #type:I
    .end local v9           #typeCount:I
    :cond_c
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v10

    goto :goto_1

    .line 285
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 27
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 431
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v15

    .line 432
    .local v15, keyCode:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_1

    const/4 v9, 0x1

    .line 433
    .local v9, down:Z
    :goto_0
    const/high16 v24, 0x100

    and-int v24, v24, p2

    if-eqz v24, :cond_2

    const/4 v12, 0x1

    .line 435
    .local v12, isInjected:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 436
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    .line 437
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    .line 440
    :cond_0
    const/16 v24, 0x1a

    move/from16 v0, v24

    if-ne v15, v0, :cond_4

    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenOnFully:Z

    move/from16 v24, v0

    if-nez v24, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 441
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    move/from16 v24, v0

    if-nez v24, :cond_3

    const/16 v24, 0x1

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->setTorch(Z)V

    .line 442
    const/16 v24, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v24

    .line 622
    :goto_3
    return v24

    .line 432
    .end local v9           #down:Z
    .end local v12           #isInjected:Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 433
    .restart local v9       #down:Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 441
    .restart local v12       #isInjected:Z
    :cond_3
    const/16 v24, 0x0

    goto :goto_2

    .line 445
    :cond_4
    invoke-static {v15}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v14

    .line 446
    .local v14, keyBitMask:I
    if-eqz v9, :cond_6

    .line 447
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    move/from16 v24, v0

    if-nez v24, :cond_5

    .line 448
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mFirstPressedKey:I

    .line 450
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    move/from16 v24, v0

    or-int v24, v24, v14

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    .line 451
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    move/from16 v24, v0

    or-int v24, v24, v14

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    .line 457
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->handleKeyCombination()V

    .line 459
    const/16 v24, 0x1a

    move/from16 v0, v24

    if-eq v0, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->shouldBeBlocked(Landroid/view/KeyEvent;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->forceShow()V

    .line 462
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v24

    goto :goto_3

    .line 454
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    move/from16 v24, v0

    xor-int/lit8 v25, v14, -0x1

    and-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    goto :goto_4

    .line 465
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenButtonsDisabled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    .line 466
    sparse-switch v15, :sswitch_data_0

    .line 475
    :cond_8
    if-nez v9, :cond_a

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    .line 487
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    move/from16 v24, v0

    if-eqz v24, :cond_c

    .line 488
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v24

    goto/16 :goto_3

    .line 471
    :sswitch_0
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v24

    goto/16 :goto_3

    .line 477
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v24

    if-nez v24, :cond_9

    .line 478
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    move/from16 v24, v0

    invoke-static {v15}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->send(I)V

    goto :goto_5

    .line 482
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    goto :goto_5

    .line 491
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    move-object/from16 v24, v0

    if-nez v24, :cond_e

    const/16 v16, 0x0

    .line 494
    .local v16, keyguardActive:Z
    :goto_6
    if-nez p3, :cond_d

    if-eqz v12, :cond_10

    .line 496
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    move/from16 v24, v0

    if-eqz v24, :cond_15

    if-eqz v16, :cond_15

    const/16 v24, 0x1b

    move/from16 v0, v24

    if-ne v15, v0, :cond_15

    if-nez v9, :cond_15

    .line 497
    const/16 v24, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v24

    goto/16 :goto_3

    .line 491
    .end local v16           #keyguardActive:Z
    :cond_e
    if-eqz p3, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v16

    goto :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->isShowing()Z

    move-result v16

    goto :goto_6

    .line 500
    .restart local v16       #keyguardActive:Z
    :cond_10
    const/4 v13, 0x1

    .line 501
    .local v13, isWakeKey:Z
    const/4 v5, 0x0

    .line 504
    .local v5, allowToWake:Z
    sparse-switch v15, :sswitch_data_1

    .line 525
    const/4 v13, 0x0

    .line 528
    :cond_11
    :goto_7
    if-eqz v13, :cond_15

    .line 529
    if-eqz v5, :cond_14

    .line 530
    if-eqz v9, :cond_12

    .line 532
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v24

    goto/16 :goto_3

    .line 506
    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTrackballWakeScreen:Z

    .line 507
    goto :goto_7

    .line 510
    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    .line 511
    goto :goto_7

    .line 515
    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    .line 519
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenOffReason:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_11

    .line 520
    const/4 v5, 0x0

    goto :goto_7

    .line 535
    :cond_12
    if-eqz v16, :cond_13

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    move-object/from16 v24, v0

    const/16 v25, 0x1a

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->onWakeKeyWhenKeyguardShowingTq(IZ)Z

    .line 538
    :cond_13
    const/16 v24, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v24

    goto/16 :goto_3

    .line 541
    :cond_14
    and-int/lit8 p2, p2, -0x4

    .line 545
    .end local v5           #allowToWake:Z
    .end local v13           #isWakeKey:Z
    :cond_15
    const/16 v24, 0x4f

    move/from16 v0, v24

    if-ne v15, v0, :cond_17

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "enable_mikey_mode"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Lmiui/provider/ExtraSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v10

    .line 551
    .local v10, enabled:Z
    if-eqz v10, :cond_17

    .line 552
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v24

    if-nez v24, :cond_16

    .line 553
    new-instance v17, Landroid/content/Intent;

    const-string v24, "miui.intent.action.MIKEY_BUTTON"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 554
    .local v17, mikeyIntent:Landroid/content/Intent;
    const-string v24, "com.xiaomi.miclick"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const-string v24, "key_action"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 556
    const-string v24, "key_event_time"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-wide/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 560
    .end local v17           #mikeyIntent:Landroid/content/Intent;
    :cond_16
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v24

    goto/16 :goto_3

    .line 564
    .end local v10           #enabled:Z
    :cond_17
    if-eqz v9, :cond_20

    .line 566
    const/16 v24, 0x1a

    move/from16 v0, v24

    if-ne v15, v0, :cond_1e

    const/16 v22, 0x1

    .line 567
    .local v22, stopNotification:Z
    :goto_8
    if-nez v22, :cond_19

    .line 568
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getWindownManagerService()Landroid/view/IWindowManager;

    move-result-object v23

    .line 569
    .local v23, wm:Landroid/view/IWindowManager;
    if-eqz v23, :cond_19

    invoke-interface/range {v23 .. v23}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v24

    if-eqz v24, :cond_19

    .line 570
    const/16 v24, 0x19

    move/from16 v0, v24

    if-eq v15, v0, :cond_18

    const/16 v24, 0x18

    move/from16 v0, v24

    if-eq v15, v0, :cond_18

    const/16 v24, 0xa4

    move/from16 v0, v24

    if-ne v15, v0, :cond_19

    .line 573
    :cond_18
    const/16 v22, 0x1

    .line 578
    .end local v23           #wm:Landroid/view/IWindowManager;
    :cond_19
    if-eqz v22, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSystemReady:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1a

    .line 579
    invoke-static {}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getStatusBarManagerService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v21

    .line 580
    .local v21, statusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v21, :cond_1a

    .line 581
    invoke-interface/range {v21 .. v21}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed()V

    .line 585
    .end local v21           #statusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1a
    const/16 v24, 0x1a

    move/from16 v0, v24

    if-eq v15, v0, :cond_1b

    const/16 v24, 0x19

    move/from16 v0, v24

    if-eq v15, v0, :cond_1b

    const/16 v24, 0xa4

    move/from16 v0, v24

    if-ne v15, v0, :cond_1c

    .line 588
    :cond_1b
    new-instance v11, Landroid/content/Intent;

    const-string v24, "android.intent.action.KEYCODE_MUTE"

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 589
    .local v11, i:Landroid/content/Intent;
    const/high16 v24, 0x4000

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 593
    .end local v11           #i:Landroid/content/Intent;
    :cond_1c
    const/16 v24, 0x19

    move/from16 v0, v24

    if-eq v15, v0, :cond_1d

    const/16 v24, 0x18

    move/from16 v0, v24

    if-ne v15, v0, :cond_20

    .line 595
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 596
    .local v8, cr:Landroid/content/ContentResolver;
    const-string v24, "remote_control_proc_name"

    move-object/from16 v0, v24

    invoke-static {v8, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 597
    .local v19, proc:Ljava/lang/String;
    const-string v24, "remote_control_pkg_name"

    move-object/from16 v0, v24

    invoke-static {v8, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 599
    .local v18, pkg:Ljava/lang/String;
    if-eqz v19, :cond_20

    if-eqz v18, :cond_20

    .line 600
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 601
    .local v6, c:J
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->checkProcessRunning(Ljava/lang/String;)Z

    move-result v20

    .line 605
    .local v20, running:Z
    if-eqz v20, :cond_1f

    .line 606
    new-instance v11, Landroid/content/Intent;

    const-string v24, "miui.intent.action.REMOTE_CONTROL"

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 607
    .restart local v11       #i:Landroid/content/Intent;
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    const/high16 v24, 0x4000

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 609
    const-string v24, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 611
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v24

    goto/16 :goto_3

    .line 566
    .end local v6           #c:J
    .end local v8           #cr:Landroid/content/ContentResolver;
    .end local v11           #i:Landroid/content/Intent;
    .end local v18           #pkg:Ljava/lang/String;
    .end local v19           #proc:Ljava/lang/String;
    .end local v20           #running:Z
    .end local v22           #stopNotification:Z
    :cond_1e
    const/16 v22, 0x0

    goto/16 :goto_8

    .line 613
    .restart local v6       #c:J
    .restart local v8       #cr:Landroid/content/ContentResolver;
    .restart local v18       #pkg:Ljava/lang/String;
    .restart local v19       #proc:Ljava/lang/String;
    .restart local v20       #running:Z
    .restart local v22       #stopNotification:Z
    :cond_1f
    const-string v24, "remote_control_proc_name"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 614
    const-string v24, "remote_control_pkg_name"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .end local v6           #c:J
    .end local v8           #cr:Landroid/content/ContentResolver;
    .end local v18           #pkg:Ljava/lang/String;
    .end local v19           #proc:Ljava/lang/String;
    .end local v20           #running:Z
    .end local v22           #stopNotification:Z
    :cond_20
    :goto_9
    invoke-super/range {p0 .. p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v24

    goto/16 :goto_3

    .line 618
    .restart local v22       #stopNotification:Z
    :catch_0
    move-exception v24

    goto :goto_9

    .line 466
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch

    .line 504
    :sswitch_data_1
    .sparse-switch
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_2
        0x110 -> :sswitch_1
    .end sparse-switch
.end method

.method isPhoneOffhook()Z
    .locals 3

    .prologue
    .line 1366
    const/4 v0, 0x0

    .line 1368
    .local v0, isOffhook:Z
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1369
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 1370
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1375
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v0

    .line 1372
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .parameter "win"
    .parameter "attrs"
    .parameter "attached"

    .prologue
    .line 351
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 352
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "InputMethod"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    .line 354
    .local v0, softKeyboardRect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSoftKeyboardRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 355
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSoftKeyboardWinToken:Landroid/os/IBinder;

    .line 357
    .end local v0           #softKeyboardRect:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 3
    .parameter "whenNanos"
    .parameter "lidOpen"

    .prologue
    .line 243
    iput-boolean p3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    .line 244
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHeadless:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v0, :cond_0

    .line 245
    if-nez p3, :cond_1

    .line 246
    const-string v0, "sys.keyguard.screen_off_by_lid"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.SMART_COVER_CLOSED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 253
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    .line 254
    return-void

    .line 249
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenOnByLid:Z

    goto :goto_0
.end method

.method onScreenShotMessageSend(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1358
    const/4 v0, 0x0

    .line 1359
    .local v0, level:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMagnifierPointEventTracker:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->mShowMagnifier:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->access$300(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1360
    const v0, 0x3d478

    .line 1362
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/os/Message;->arg1:I

    .line 1363
    return-void
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 1
    .parameter "win"
    .parameter "effectId"
    .parameter "always"

    .prologue
    .line 1095
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO:Z

    if-eqz v0, :cond_0

    .line 1097
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->isPhoneOffhook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1098
    const/4 v0, 0x0

    .line 1106
    :goto_0
    return v0

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p2}, Lmiui/util/HapticFeedbackUtil;->isSupportedEffect(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1103
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p2, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    move-result v0

    goto :goto_0

    .line 1106
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v0

    goto :goto_0
.end method

.method protected abstract registerMagnifierInputEventReceiver()V
.end method

.method protected abstract registerStatusBarInputEventReceiver()V
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .parameter "win"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_window_loaded"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 201
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 202
    return-void
.end method

.method public screenTurnedOff(I)V
    .locals 1
    .parameter "why"

    .prologue
    const/4 v0, 0x0

    .line 229
    iput v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    .line 230
    iput v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    .line 231
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    .line 232
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenOnByLid:Z

    .line 233
    iput p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenOffReason:I

    .line 234
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->releaseScreenOnProximitySensor()V

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    .line 236
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurnedOff(I)V

    .line 237
    return-void
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 4
    .parameter "screenOnListener"

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 211
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->onScreenTurnedOnWithoutListener()V

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_screen_on_proximity_sensor"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 218
    .local v0, proximitySensorEnableSettings:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenOnByLid:Z

    if-eqz v1, :cond_2

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->aquire()V

    .line 222
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    if-eqz v1, :cond_3

    .line 223
    const-string v1, "sys.keyguard.screen_off_by_lid"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_3
    return-void
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1282
    return-void
.end method

.method protected systemReadyInternal()V
    .locals 3

    .prologue
    .line 205
    new-instance v0, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    .line 206
    return-void
.end method

.method protected abstract unregisterStatusBarInputEventReceiver()V
.end method
