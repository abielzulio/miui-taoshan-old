.class final Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarPointerEventReceiver;
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
    name = "StatusBarPointerEventReceiver"
.end annotation


# instance fields
.field private mTracker:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;

.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V
    .locals 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarPointerEventReceiver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarPointerEventReceiver;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarPointerEventReceiver;->mTracker:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;

    .line 69
    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "motionEvent"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$StatusBarPointerEventReceiver;->mTracker:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;->onTrack(Landroid/view/MotionEvent;)V

    .line 74
    return-void
.end method
