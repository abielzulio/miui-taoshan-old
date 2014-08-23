.class final Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierPointerEventReceiver;
.super Ljava/lang/Object;
.source "MiuiPhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MagnifierPointerEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierPointerEventReceiver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "motionEvent"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$MagnifierPointerEventReceiver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMagnifierPointEventTracker:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MagnifierPointEventTracker;->onTrack(Landroid/view/MotionEvent;)V

    .line 88
    return-void
.end method
