.class Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;
.super Landroid/database/ContentObserver;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiuiSettingsObserver"
.end annotation


# instance fields
.field private mScreenButtonNotification:Landroid/app/Notification;

.field final synthetic this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .line 1114
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1115
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1118
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1119
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "trackball_wake_screen"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1121
    const-string v1, "camera_key_preferred_action_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1123
    const-string v1, "camera_key_preferred_action_shortcut_id"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1125
    const-string v1, "volumekey_wake_screen"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1127
    const-string v1, "screen_buttons_state"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1130
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->onChange(Z)V

    .line 1131
    return-void
.end method

.method public onChange(Z)V
    .locals 12
    .parameter "selfChange"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1134
    iget-object v7, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v8, v7, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1135
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1136
    .local v4, resolver:Landroid/content/ContentResolver;
    iget-object v9, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const-string v7, "screen_buttons_state"

    const/4 v10, 0x0

    invoke-static {v4, v7, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    move v7, v5

    :goto_0
    iput-boolean v7, v9, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenButtonsDisabled:Z

    .line 1138
    iget-object v7, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->mScreenButtonNotification:Landroid/app/Notification;

    if-nez v7, :cond_3

    move v2, v5

    .line 1139
    .local v2, isFirst:Z
    :goto_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->mScreenButtonNotification:Landroid/app/Notification;

    if-nez v7, :cond_0

    .line 1140
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.miui.app.ExtraStatusBarManager.TRIGGER_TOGGLE_SCREEN_BUTTONS"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1142
    .local v1, intent:Landroid/content/Intent;
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v9, v9, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    const v9, 0x6020089

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v9, v9, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const v10, 0x60c01a1

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v9, v9, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const v10, 0x60c01a0

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v9, v9, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v1, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->mScreenButtonNotification:Landroid/app/Notification;

    .line 1154
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1156
    .local v3, notificationManager:Landroid/app/NotificationManager;
    iget-object v7, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-boolean v7, v7, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenButtonsDisabled:Z

    if-eqz v7, :cond_4

    .line 1157
    iget-object v7, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->mScreenButtonNotification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->icon:I

    iget-object v9, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->mScreenButtonNotification:Landroid/app/Notification;

    invoke-virtual {v3, v7, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1163
    :cond_1
    :goto_2
    iget-object v9, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const-string v7, "trackball_wake_screen"

    const/4 v10, 0x0

    invoke-static {v4, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_5

    move v7, v5

    :goto_3
    iput-boolean v7, v9, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTrackballWakeScreen:Z

    .line 1165
    iget-object v9, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const-string v7, "volumekey_wake_screen"

    const/4 v10, 0x0

    invoke-static {v4, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_6

    move v7, v5

    :goto_4
    iput-boolean v7, v9, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    .line 1168
    const-string v7, "camera_key_preferred_action_type"

    const/4 v9, 0x0

    invoke-static {v4, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1171
    .local v0, cameraKeyActionType:I
    if-ne v5, v0, :cond_8

    .line 1172
    iget-object v7, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const/4 v9, 0x4

    const-string v10, "camera_key_preferred_action_shortcut_id"

    const/4 v11, -0x1

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v9, v10, :cond_7

    :goto_5
    iput-boolean v5, v7, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    .line 1181
    :goto_6
    monitor-exit v8

    .line 1182
    return-void

    .end local v0           #cameraKeyActionType:I
    .end local v2           #isFirst:Z
    .end local v3           #notificationManager:Landroid/app/NotificationManager;
    :cond_2
    move v7, v6

    .line 1136
    goto/16 :goto_0

    :cond_3
    move v2, v6

    .line 1138
    goto/16 :goto_1

    .line 1159
    .restart local v2       #isFirst:Z
    .restart local v3       #notificationManager:Landroid/app/NotificationManager;
    :cond_4
    if-nez v2, :cond_1

    .line 1160
    iget-object v7, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->mScreenButtonNotification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->icon:I

    invoke-virtual {v3, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_2

    .line 1181
    .end local v2           #isFirst:Z
    .end local v3           #notificationManager:Landroid/app/NotificationManager;
    .end local v4           #resolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v5

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v2       #isFirst:Z
    .restart local v3       #notificationManager:Landroid/app/NotificationManager;
    .restart local v4       #resolver:Landroid/content/ContentResolver;
    :cond_5
    move v7, v6

    .line 1163
    goto :goto_3

    :cond_6
    move v7, v6

    .line 1165
    goto :goto_4

    .restart local v0       #cameraKeyActionType:I
    :cond_7
    move v5, v6

    .line 1172
    goto :goto_5

    .line 1179
    :cond_8
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6
.end method
