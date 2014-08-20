.class Lcom/android/server/power/Injector$ShutdownThreadHook;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShutdownThreadHook"
.end annotation


# static fields
.field private static mWakeAlarmCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-static {p0}, Lcom/android/server/power/Injector$ShutdownThreadHook;->disableWakeAlarm(Landroid/content/Context;)V

    return-void
.end method

.method public static createShutDownDialog(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 45
    new-instance v1, Landroid/app/Dialog;

    const v5, 0x103006d

    invoke-direct {v1, p0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 46
    .local v1, bootMsgDialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x6030009

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 47
    .local v4, view:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 48
    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 49
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 50
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v5, 0x1

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 51
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 52
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7e5

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 53
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 55
    const v5, 0x60b010d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 56
    .local v3, shutdownImage:Landroid/widget/ImageView;
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 58
    .local v0, animationDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x6080010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesCount(I)V

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x608000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesDuration(I)V

    .line 60
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->start()V

    .line 61
    return-void
.end method

.method private static disableWakeAlarm(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 75
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->getReboot()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/power/Injector$ShutdownThreadHook;->mWakeAlarmCheckBox:Landroid/widget/CheckBox;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/power/Injector$ShutdownThreadHook;->mWakeAlarmCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcom/miui/internal/app/ShutdownAlarm;->writeWakeAlarm(J)V

    .line 77
    sget-boolean v2, Lmiui/os/Build;->IS_HONGMI:Z

    if-eqz v2, :cond_0

    .line 79
    :try_start_0
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 80
    .local v0, am:Landroid/app/AlarmManager;
    const-string v2, "cancelPoweroffAlarm"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "com.android.deskclock"

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lmiui/dexspy/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_0
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, e:Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static getResourceId(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 26
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->getReboot()Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x60c019a

    .end local p0
    :cond_0
    return p0
.end method

.method public static onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "unused"

    .prologue
    .line 64
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->getIsStartedGuard()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 65
    :try_start_0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->getIsStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->setReboot(Z)V

    .line 67
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->setRebootReason(Ljava/lang/String;)V

    .line 69
    :cond_0
    monitor-exit v1

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setupShutdownConfirmDialog(Landroid/app/AlertDialog;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 30
    invoke-static {p0}, Lcom/android/server/power/Injector$ShutdownThreadHook;->showWakeAlarmInDialog(Landroid/app/AlertDialog;)V

    .line 31
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->getReboot()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x60c000d

    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 34
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 35
    .local v0, context:Landroid/content/Context;
    const/4 v1, -0x1

    const v2, 0x1040013

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/server/power/Injector$ShutdownThreadHook$1;

    invoke-direct {v3, v0}, Lcom/android/server/power/Injector$ShutdownThreadHook$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 42
    return-void

    .line 31
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    const v1, 0x60c0026

    goto :goto_0
.end method

.method private static showWakeAlarmInDialog(Landroid/app/AlertDialog;)V
    .locals 6
    .parameter "dialog"

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/app/ShutdownAlarm;->buildShutdownAlarmCheckBox(Landroid/content/Context;)Landroid/widget/CheckBox;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/Injector$ShutdownThreadHook;->mWakeAlarmCheckBox:Landroid/widget/CheckBox;

    .line 90
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->getReboot()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/power/Injector$ShutdownThreadHook;->mWakeAlarmCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x60a0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v2, v0

    .line 93
    .local v2, padding:I
    sget-object v1, Lcom/android/server/power/Injector$ShutdownThreadHook;->mWakeAlarmCheckBox:Landroid/widget/CheckBox;

    move-object v0, p0

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 95
    .end local v2           #padding:I
    :cond_0
    return-void
.end method
