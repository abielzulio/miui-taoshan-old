.class public final Lcom/android/internal/os/DockBatteryStatsImpl;
.super Lcom/android/internal/os/BatteryStatsImpl;
.source "DockBatteryStatsImpl.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/os/DockBatteryStatsImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static sKernelWakelockUpdateVersion:I

.field private static sNumSpeedSteps:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/os/DockBatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    new-instance v0, Lcom/android/internal/os/DockBatteryStatsImpl$1;

    invoke-direct {v0}, Lcom/android/internal/os/DockBatteryStatsImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/DockBatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "p"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "filename"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCpuSpeedSteps()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/os/DockBatteryStatsImpl;->sNumSpeedSteps:I

    return v0
.end method

.method protected getKernelWakelockUpdateVersion()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/os/DockBatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    return v0
.end method

.method protected setCpuSpeedSteps(I)V
    .locals 0
    .parameter "numSpeedSteps"

    .prologue
    sput p1, Lcom/android/internal/os/DockBatteryStatsImpl;->sNumSpeedSteps:I

    return-void
.end method

.method protected setKernelWakelockUpdateVersion(I)V
    .locals 0
    .parameter "kernelWakelockUpdateVersion"

    .prologue
    sput p1, Lcom/android/internal/os/DockBatteryStatsImpl;->sKernelWakelockUpdateVersion:I

    return-void
.end method
