.class public Lcom/android/internal/policy/impl/MiuiPhoneFallbackEventHandler;
.super Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;
.source "MiuiPhoneFallbackEventHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/16 v2, 0x57

    .line 57
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 58
    .local v6, keyCode:I
    if-eq v6, v2, :cond_0

    const/16 v1, 0x58

    if-ne v6, v1, :cond_2

    .line 59
    :cond_0
    const/4 v12, 0x0

    .line 61
    .local v12, isOffhook:Z
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v13

    .line 62
    .local v13, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v13, :cond_1

    invoke-interface {v13}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 65
    .end local v13           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_0
    if-eqz v12, :cond_2

    .line 66
    if-ne v6, v2, :cond_3

    const/16 v6, 0x19

    .line 69
    :goto_1
    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v11

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .end local p1
    .local v0, event:Landroid/view/KeyEvent;
    move-object p1, v0

    .line 80
    .end local v0           #event:Landroid/view/KeyEvent;
    .end local v12           #isOffhook:Z
    .restart local p1
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 66
    .restart local v12       #isOffhook:Z
    :cond_3
    const/16 v6, 0x18

    goto :goto_1

    .line 63
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected handleCameraKeyEvent()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, id:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "camera_key_preferred_action_type"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 25
    .local v3, type:I
    if-ne v8, v3, :cond_0

    .line 26
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "camera_key_preferred_action_shortcut_id"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 30
    :cond_0
    const/4 v2, 0x0

    .line 31
    .local v2, mappedKeyCode:I
    packed-switch v0, :pswitch_data_0

    .line 40
    :goto_0
    if-eqz v2, :cond_3

    .line 41
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v7, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 42
    .local v1, mappedEvent:Landroid/view/KeyEvent;
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 43
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiuiPhoneFallbackEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 45
    :cond_1
    new-instance v1, Landroid/view/KeyEvent;

    .end local v1           #mappedEvent:Landroid/view/KeyEvent;
    invoke-direct {v1, v8, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 46
    .restart local v1       #mappedEvent:Landroid/view/KeyEvent;
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 47
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiuiPhoneFallbackEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 53
    .end local v1           #mappedEvent:Landroid/view/KeyEvent;
    :cond_2
    :goto_1
    return-void

    .line 33
    :pswitch_0
    const/4 v2, 0x5

    .line 34
    goto :goto_0

    .line 36
    :pswitch_1
    const/16 v2, 0x54

    goto :goto_0

    .line 51
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiPhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.miui.app.ExtraStatusBarManager.TRIGGER_CAMERA_KEY"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
