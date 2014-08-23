.class Lcom/android/internal/policy/impl/MiuiGlobalActions;
.super Ljava/lang/Object;
.source "MiuiGlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;,
        Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;,
        Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;,
        Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;,
        Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final BACKGROUND_BLUR_RADIUS:I = 0x0

.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final TAG:Ljava/lang/String; = "GlobalActions"


# instance fields
.field private mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

.field private mAirplaneModeOn:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;

.field private mAirplaneState:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private final mDialogLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final mFlightModeObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private mMuteToggle:Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

.field private mSilentModeAction:Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;

.field private final mToken:Landroid/os/IBinder;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x60a007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->BACKGROUND_BLUR_RADIUS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 5
    .parameter "context"
    .parameter "windowManagerFuncs"

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mToken:Landroid/os/IBinder;

    .line 107
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mKeyguardShowing:Z

    .line 108
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDeviceProvisioned:Z

    .line 109
    sget-object v1, Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    .line 110
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mIsWaitingForEcmExit:Z

    .line 111
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

    .line 162
    new-instance v1, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialogLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 752
    new-instance v1, Lcom/android/internal/policy/impl/MiuiGlobalActions$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$6;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 773
    new-instance v1, Lcom/android/internal/policy/impl/MiuiGlobalActions$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$7;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 786
    new-instance v1, Lcom/android/internal/policy/impl/MiuiGlobalActions$8;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$8;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mHandler:Landroid/os/Handler;

    .line 812
    new-instance v1, Lcom/android/internal/policy/impl/MiuiGlobalActions$9;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$9;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mFlightModeObserver:Landroid/database/ContentObserver;

    .line 117
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x1030073

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 119
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 120
    new-instance v1, Lmiui/security/ChooseLockSettingsHelper;

    invoke-direct {v1, p1}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mFlightModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/MiuiGlobalActions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MiuiGlobalActions;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/MiuiGlobalActions;Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 802
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 806
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 807
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 808
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 809
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 810
    return-void

    .line 802
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createDialog()Landroid/app/AlertDialog;
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 183
    new-instance v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;

    .line 185
    new-instance v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$2;

    const v2, 0x602006f

    const v3, 0x6020070

    const v4, 0x60c0014

    const v5, 0x60c0013

    const v6, 0x60c0012

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/MiuiGlobalActions$2;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;

    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiGlobalActions$3;

    const v2, 0x6020073

    const v3, 0x60c0011

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions$3;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiGlobalActions$4;

    const v2, 0x6020074

    const v3, 0x60c000d

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions$4;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 276
    :goto_0
    new-instance v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$5;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->getMuteIconResId()I

    move-result v1

    const v2, 0x60c0029

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$5;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mMuteToggle:Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;

    .line 292
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mMuteToggle:Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;Lcom/android/internal/policy/impl/MiuiGlobalActions$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    .line 304
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x60d003f

    invoke-direct {v7, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 307
    .local v7, ab:Landroid/app/AlertDialog$Builder;
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    invoke-virtual {v7, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 308
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 309
    .local v8, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 310
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 311
    .local v9, window:Landroid/view/Window;
    const/16 v0, 0x7d8

    invoke-virtual {v9, v0}, Landroid/view/Window;->setType(I)V

    .line 312
    const/16 v0, 0x11

    invoke-virtual {v9, v0}, Landroid/view/Window;->setGravity(I)V

    .line 313
    invoke-virtual {v8, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 315
    return-object v8

    .line 271
    .end local v7           #ab:Landroid/app/AlertDialog$Builder;
    .end local v8           #dialog:Landroid/app/AlertDialog;
    .end local v9           #window:Landroid/view/Window;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getMuteIconResId()I
    .locals 3

    .prologue
    .line 319
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 320
    .local v0, silentModeOn:Z
    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x6020072

    :goto_1
    return v1

    .line 319
    .end local v0           #silentModeOn:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 320
    .restart local v0       #silentModeOn:Z
    :cond_1
    const v1, 0x6020071

    goto :goto_1
.end method

.method private prepareDialog()V
    .locals 17

    .prologue
    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    :goto_0
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mMuteToggle:Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->getMuteIconResId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->setIcon(I)V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 333
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mKeyguardShowing:Z

    if-eqz v2, :cond_2

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 339
    :goto_1
    new-instance v11, Landroid/content/IntentFilter;

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v11, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 340
    .local v11, filter:Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .line 345
    .local v16, winMgr:Landroid/view/WindowManager;
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 346
    .local v10, defaultDisplay:Landroid/view/Display;
    invoke-virtual {v10}, Landroid/view/Display;->getRawWidth()I

    move-result v2

    invoke-virtual {v10}, Landroid/view/Display;->getRawHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 347
    .local v15, width:I
    invoke-virtual {v10}, Landroid/view/Display;->getRawWidth()I

    move-result v2

    invoke-virtual {v10}, Landroid/view/Display;->getRawHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 348
    .local v12, height:I
    div-int/lit8 v2, v15, 0x3

    div-int/lit8 v3, v12, 0x3

    invoke-static {v2, v3}, Landroid/view/Surface;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 349
    .local v8, backgroundOriginal:Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 350
    .local v1, blurBgBitmap:Landroid/graphics/Bitmap;
    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 351
    sget v2, Lcom/android/internal/policy/impl/MiuiGlobalActions;->BACKGROUND_BLUR_RADIUS:I

    invoke-static {v8, v1, v2}, Lmiui/util/ImageUtils;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 353
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v9

    .line 354
    .local v9, currentScreenRotationDegree:I
    if-eqz v9, :cond_0

    .line 355
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 356
    .local v6, matrix:Landroid/graphics/Matrix;
    mul-int/lit8 v2, v9, 0x5a

    rsub-int v2, v2, 0x168

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 357
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 360
    .end local v6           #matrix:Landroid/graphics/Matrix;
    :cond_0
    const/4 v2, 0x2

    new-array v14, v2, [Landroid/graphics/drawable/Drawable;

    .line 361
    .local v14, layers:[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v14, v2

    .line 362
    const/4 v2, 0x1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v4, -0x5100

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v14, v2

    .line 363
    new-instance v13, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v13, v14}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 365
    .local v13, layerDrawable:Landroid/graphics/drawable/LayerDrawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 366
    return-void

    .line 327
    .end local v1           #blurBgBitmap:Landroid/graphics/Bitmap;
    .end local v8           #backgroundOriginal:Landroid/graphics/Bitmap;
    .end local v9           #currentScreenRotationDegree:I
    .end local v10           #defaultDisplay:Landroid/view/Display;
    .end local v11           #filter:Landroid/content/IntentFilter;
    .end local v12           #height:I
    .end local v13           #layerDrawable:Landroid/graphics/drawable/LayerDrawable;
    .end local v14           #layers:[Landroid/graphics/drawable/Drawable;
    .end local v15           #width:I
    .end local v16           #winMgr:Landroid/view/WindowManager;
    :cond_1
    sget-object v2, Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    goto/16 :goto_0

    .line 336
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 382
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    invoke-virtual {v1, p2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;

    if-nez v1, :cond_0

    .line 383
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    invoke-virtual {v1, p2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;->onPress()V

    .line 387
    new-instance v0, Landroid/content/Intent;

    const-string v1, "click_global_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 390
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 375
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialogLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    .line 378
    return-void
.end method

.method public showDialog(ZZ)V
    .locals 2
    .parameter "keyguardShowing"
    .parameter "isDeviceProvisioned"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 142
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mKeyguardShowing:Z

    .line 143
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDeviceProvisioned:Z

    .line 145
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->createDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    .line 146
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->prepareDialog()V

    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 150
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialogLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 153
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mKeyguardShowing:Z

    if-nez v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 155
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/view/Window;->addExtraFlags(I)V

    goto :goto_0
.end method
