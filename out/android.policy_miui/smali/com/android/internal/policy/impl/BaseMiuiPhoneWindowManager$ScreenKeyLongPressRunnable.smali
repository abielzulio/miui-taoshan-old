.class Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenKeyLongPressRunnable"
.end annotation


# instance fields
.field private mCloseAppWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKey:Ljava/lang/String;

.field private mKeyActionSettings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUnderKeyguard:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V
    .locals 3
    .parameter

    .prologue
    .line 876
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 877
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mCloseAppWhiteList:Ljava/util/HashSet;

    .line 879
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mCloseAppWhiteList:Ljava/util/HashSet;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 880
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mCloseAppWhiteList:Ljava/util/HashSet;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 881
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mCloseAppWhiteList:Ljava/util/HashSet;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 882
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mCloseAppWhiteList:Ljava/util/HashSet;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 883
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mCloseAppWhiteList:Ljava/util/HashSet;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 884
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mCloseAppWhiteList:Ljava/util/HashSet;

    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 885
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mCloseAppWhiteList:Ljava/util/HashSet;

    const-string v1, "com.miui.fmradio"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 886
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mCloseAppWhiteList:Ljava/util/HashSet;

    const-string v1, "com.jeejen.family.miui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 889
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKeyActionSettings:Landroid/util/SparseArray;

    .line 891
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKeyActionSettings:Landroid/util/SparseArray;

    const/16 v1, 0x52

    const-string v2, "screen_key_long_press_menu"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 892
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKeyActionSettings:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "screen_key_long_press_home"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 893
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKeyActionSettings:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "screen_key_long_press_back"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 876
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 876
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    return-void
.end method

.method private closeApp()Z
    .locals 18

    .prologue
    .line 1006
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWin:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v12}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1100(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v1

    .line 1008
    .local v1, _win:Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mCloseAppWhiteList:Ljava/util/HashSet;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget-object v13, v13, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v13, 0x1

    if-lt v12, v13, :cond_0

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x63

    if-le v12, v13, :cond_1

    :cond_0
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x3e8

    if-lt v12, v13, :cond_4

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7cf

    if-gt v12, v13, :cond_4

    .line 1014
    :cond_1
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    iget-object v9, v12, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1015
    .local v9, packageName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1017
    .local v11, title:Ljava/lang/String;
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1018
    .local v5, className:Ljava/lang/String;
    const/16 v12, 0x2f

    invoke-virtual {v5, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 1019
    .local v8, index:I
    if-ltz v8, :cond_2

    .line 1020
    new-instance v6, Landroid/content/ComponentName;

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v6, v9, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    .local v6, componentName:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v12, v12, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 1027
    .local v10, pm:Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    :try_start_0
    invoke-virtual {v10, v6, v12}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 1028
    .local v2, activityInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v2, v10}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1030
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1031
    const/4 v12, 0x0

    invoke-virtual {v10, v9, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1032
    .local v4, applicationInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v4, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 1041
    .end local v2           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v4           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v6           #componentName:Landroid/content/ComponentName;
    .end local v10           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v12

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget-object v13, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v12, v13, v14, v15}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1048
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v12, v12, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v13, "activity"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1050
    .local v3, am:Landroid/app/ActivityManager;
    invoke-virtual {v3, v9}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v12, v12, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v13, v13, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const v14, 0x60c0146

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .end local v11           #title:Ljava/lang/String;
    :goto_2
    aput-object v11, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 1060
    const/4 v12, 0x1

    .line 1062
    .end local v3           #am:Landroid/app/ActivityManager;
    .end local v5           #className:Ljava/lang/String;
    .end local v8           #index:I
    .end local v9           #packageName:Ljava/lang/String;
    :goto_3
    return v12

    .line 1043
    .restart local v5       #className:Ljava/lang/String;
    .restart local v8       #index:I
    .restart local v9       #packageName:Ljava/lang/String;
    .restart local v11       #title:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1044
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .end local v7           #e:Landroid/os/RemoteException;
    .restart local v3       #am:Landroid/app/ActivityManager;
    :cond_3
    move-object v11, v9

    .line 1053
    goto :goto_2

    .line 1062
    .end local v3           #am:Landroid/app/ActivityManager;
    .end local v5           #className:Ljava/lang/String;
    .end local v8           #index:I
    .end local v9           #packageName:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    :cond_4
    const/4 v12, 0x0

    goto :goto_3

    .line 1035
    .restart local v5       #className:Ljava/lang/String;
    .restart local v6       #componentName:Landroid/content/ComponentName;
    .restart local v8       #index:I
    .restart local v9       #packageName:Ljava/lang/String;
    .restart local v10       #pm:Landroid/content/pm/PackageManager;
    .restart local v11       #title:Ljava/lang/String;
    :catch_1
    move-exception v12

    goto :goto_0
.end method

.method private launchApp(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 970
    const/high16 v0, 0x1000

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 971
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    const/4 v0, 0x1

    .line 976
    :goto_0
    return v0

    .line 974
    :catch_0
    move-exception v0

    .line 976
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchCamera()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1066
    iget-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_snapshot_screenlock"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 1079
    :goto_0
    return v1

    .line 1071
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1072
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x800

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1073
    const-string v3, "secure_camera"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1074
    const-string v3, "captureAfterLaunch"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1075
    const-string v3, "ShowCameraWhenLocked"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1076
    const-string v3, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1078
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchApp(Landroid/content/Intent;)Z

    move v1, v2

    .line 1079
    goto :goto_0
.end method

.method private launchGoogleNow()Z
    .locals 3

    .prologue
    .line 998
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 999
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.googlequicksearchbox"

    const-string v2, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1000
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchApp(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method private launchRecentPanel()Z
    .locals 4

    .prologue
    .line 985
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const-string v3, "recentapps"

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 987
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 988
    .local v1, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 989
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    .end local v1           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 991
    :catch_0
    move-exception v0

    .line 992
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private launchVoiceAssistant()Z
    .locals 2

    .prologue
    .line 980
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 981
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchApp(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method private toggleTorch()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1083
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHasCameraFlash:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1200(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1089
    :goto_0
    return v0

    .line 1085
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$000(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :cond_1
    #calls: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->setTorch(Z)V
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1300(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)V

    .line 1086
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$000(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1087
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTurnScreenOffBecauseOfTorchEnabled:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$100(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    move v0, v1

    .line 1089
    goto :goto_0
.end method


# virtual methods
.method public remove()V
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 918
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 921
    iget-object v5, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$800(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 923
    :cond_1
    const/4 v4, 0x0

    .line 924
    .local v4, triggered:Z
    const-string v2, "virtual_key_longpress"

    .line 926
    .local v2, effectKey:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mUnderKeyguard:Z

    if-eqz v5, :cond_4

    .line 927
    const-string v5, "screen_key_long_press_back"

    iget-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 928
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchCamera()Z

    move-result v4

    .line 962
    :cond_2
    :goto_1
    if-eqz v4, :cond_0

    .line 963
    iget-object v5, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;
    invoke-static {v5}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$900(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Lmiui/util/HapticFeedbackUtil;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;Z)Z

    .line 964
    iget-object v5, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->markShortcutTriggered()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1000(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    goto :goto_0

    .line 930
    :cond_3
    const-string v5, "screen_key_long_press_home"

    iget-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 932
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 933
    .local v3, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 934
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->toggleTorch()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_1

    .line 936
    .end local v3           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 937
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 942
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKey:Ljava/lang/String;

    invoke-static {v5, v6}, Lmiui/provider/ExtraSettings$System;->getScreenKeyLongPressAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 943
    .local v0, action:Ljava/lang/String;
    const-string v5, "none"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 944
    const-string v5, "voice_assistant"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 945
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchVoiceAssistant()Z

    move-result v4

    .line 946
    const-string v2, "screen_button_voice_assist"

    goto :goto_1

    .line 948
    :cond_5
    const-string v5, "recent_panel"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 949
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchRecentPanel()Z

    move-result v4

    .line 950
    const-string v2, "screen_button_recent_task"

    goto :goto_1

    .line 952
    :cond_6
    const-string v5, "google_now"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 953
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchGoogleNow()Z

    move-result v4

    .line 954
    const-string v2, "screen_button_voice_assist"

    goto :goto_1

    .line 956
    :cond_7
    const-string v5, "close_app"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 957
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->closeApp()Z

    move-result v4

    goto :goto_1
.end method

.method public send(I)V
    .locals 4
    .parameter "keyCode"

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKeyActionSettings:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKey:Ljava/lang/String;

    .line 901
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->isScreenOnFully()Z

    move-result v0

    if-nez v0, :cond_1

    .line 902
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    .line 914
    :goto_0
    return-void

    .line 906
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->isShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mUnderKeyguard:Z

    .line 908
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v1, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_key_long_press_timeout"

    const/16 v3, 0x1f4

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->mUnderKeyguard:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_1
    mul-int/2addr v0, v2

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method
