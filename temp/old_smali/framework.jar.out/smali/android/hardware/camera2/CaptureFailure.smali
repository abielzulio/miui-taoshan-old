.class public Landroid/hardware/camera2/CaptureFailure;
.super Ljava/lang/Object;
.source "CaptureFailure.java"


# static fields
.field public static final REASON_ERROR:I = 0x0

.field public static final REASON_FLUSHED:I = 0x1


# instance fields
.field private final mDropped:Z

.field private final mFrameNumber:I

.field private final mReason:I

.field private final mRequest:Landroid/hardware/camera2/CaptureRequest;

.field private final mSequenceId:I


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureRequest;IZII)V
    .locals 0
    .parameter "request"
    .parameter "reason"
    .parameter "dropped"
    .parameter "sequenceId"
    .parameter "frameNumber"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/CaptureFailure;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    iput p2, p0, Landroid/hardware/camera2/CaptureFailure;->mReason:I

    iput-boolean p3, p0, Landroid/hardware/camera2/CaptureFailure;->mDropped:Z

    iput p4, p0, Landroid/hardware/camera2/CaptureFailure;->mSequenceId:I

    iput p5, p0, Landroid/hardware/camera2/CaptureFailure;->mFrameNumber:I

    return-void
.end method


# virtual methods
.method public getFrameNumber()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/camera2/CaptureFailure;->mFrameNumber:I

    return v0
.end method

.method public getReason()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/camera2/CaptureFailure;->mReason:I

    return v0
.end method

.method public getRequest()Landroid/hardware/camera2/CaptureRequest;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/camera2/CaptureFailure;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method public getSequenceId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/camera2/CaptureFailure;->mSequenceId:I

    return v0
.end method

.method public wasImageCaptured()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/hardware/camera2/CaptureFailure;->mDropped:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
