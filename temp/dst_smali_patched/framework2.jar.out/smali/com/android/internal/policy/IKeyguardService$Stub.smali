.class public abstract Lcom/android/internal/policy/IKeyguardService$Stub;
.super Landroid/os/Binder;
.source "IKeyguardService.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IKeyguardService"

.field static final TRANSACTION_dismiss:I = 0x9

.field static final TRANSACTION_dispatch:I = 0x13

.field static final TRANSACTION_doKeyguardTimeout:I = 0x10

.field static final TRANSACTION_isDismissable:I = 0x5

.field static final TRANSACTION_isInputRestricted:I = 0x4

.field static final TRANSACTION_isSecure:I = 0x2

.field static final TRANSACTION_isShowing:I = 0x1

.field static final TRANSACTION_isShowingAndNotHidden:I = 0x3

.field static final TRANSACTION_keyguardDone:I = 0x7

.field static final TRANSACTION_launchCamera:I = 0x14

.field static final TRANSACTION_onBootCompleted:I = 0x15

.field static final TRANSACTION_onDreamingStarted:I = 0xa

.field static final TRANSACTION_onDreamingStopped:I = 0xb

.field static final TRANSACTION_onScreenTurnedOff:I = 0xc

.field static final TRANSACTION_onScreenTurnedOn:I = 0xd

.field static final TRANSACTION_onSystemReady:I = 0xf

.field static final TRANSACTION_setCurrentUser:I = 0x11

.field static final TRANSACTION_setHidden:I = 0x8

.field static final TRANSACTION_setKeyguardEnabled:I = 0xe

.field static final TRANSACTION_showAssistant:I = 0x12

.field static final TRANSACTION_verifyUnlock:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.android.internal.policy.IKeyguardService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/policy/IKeyguardService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/policy/IKeyguardService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v3, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v5, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->isShowing()Z

    move-result v2

    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v2           #_result:Z
    :sswitch_2
    const-string v5, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->isSecure()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v2           #_result:Z
    :sswitch_3
    const-string v5, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->isShowingAndNotHidden()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v2           #_result:Z
    :sswitch_4
    const-string v5, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->isInputRestricted()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v2           #_result:Z
    :sswitch_5
    const-string v5, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->isDismissable()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v2           #_result:Z
    :sswitch_6
    const-string v3, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardExitCallback;

    move-result-object v0

    .local v0, _arg0:Lcom/android/internal/policy/IKeyguardExitCallback;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    goto :goto_0

    .end local v0           #_arg0:Lcom/android/internal/policy/IKeyguardExitCallback;
    :sswitch_7
    const-string v5, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    move v0, v4

    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    move v1, v4

    .local v1, _arg1:Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/IKeyguardService$Stub;->keyguardDone(ZZ)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Z
    :cond_5
    move v0, v3

    goto :goto_1

    .restart local v0       #_arg0:Z
    :cond_6
    move v1, v3

    goto :goto_2

    .end local v0           #_arg0:Z
    :sswitch_8
    const-string v5, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    move v0, v4

    .restart local v0       #_arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->setHidden(Z)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_7
    move v0, v3

    goto :goto_3

    :sswitch_9
    const-string v3, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->dismiss()V

    goto/16 :goto_0

    :sswitch_a
    const-string v3, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStarted()V

    goto/16 :goto_0

    :sswitch_b
    const-string v3, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStopped()V

    goto/16 :goto_0

    :sswitch_c
    const-string v3, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOff(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:I
    :sswitch_d
    const-string v3, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/policy/IKeyguardShowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardShowCallback;

    move-result-object v0

    .local v0, _arg0:Lcom/android/internal/policy/IKeyguardShowCallback;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    goto/16 :goto_0

    .end local v0           #_arg0:Lcom/android/internal/policy/IKeyguardShowCallback;
    :sswitch_e
    const-string v5, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    move v0, v4

    .local v0, _arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->setKeyguardEnabled(Z)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_8
    move v0, v3

    goto :goto_4

    :sswitch_f
    const-string v3, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onSystemReady()V

    goto/16 :goto_0

    :sswitch_10
    const-string v3, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, _arg0:Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->doKeyguardTimeout(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/os/Bundle;
    :cond_9
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/Bundle;
    goto :goto_5

    .end local v0           #_arg0:Landroid/os/Bundle;
    :sswitch_11
    const-string v3, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->setCurrentUser(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:I
    :sswitch_12
    const-string v3, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->showAssistant()V

    goto/16 :goto_0

    :sswitch_13
    const-string v3, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    .local v0, _arg0:Landroid/view/MotionEvent;
    :goto_6
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->dispatch(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/view/MotionEvent;
    :cond_a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/view/MotionEvent;
    goto :goto_6

    .end local v0           #_arg0:Landroid/view/MotionEvent;
    :sswitch_14
    const-string v3, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->launchCamera()V

    goto/16 :goto_0

    :sswitch_15
    const-string v3, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onBootCompleted()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
