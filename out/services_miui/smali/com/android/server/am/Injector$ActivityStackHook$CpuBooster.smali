.class final Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Injector$ActivityStackHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CpuBooster"
.end annotation


# static fields
.field private static final BOOST_CPU_TIMEOUT:I = 0x3e8

.field private static final CPU_SCALING_SAMPLE_INTERVAL:I = 0x28


# instance fields
.field mHandler:Landroid/os/Handler;

.field mService:Lcom/android/server/am/ActivityManagerService;

.field private mStartTime:J


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V
    .locals 2
    .parameter "service"
    .parameter "hdl"

    .prologue
    const/4 v0, 0x0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object v0, p0, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 291
    iput-object v0, p0, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;->mHandler:Landroid/os/Handler;

    .line 292
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;->mStartTime:J

    .line 246
    iput-object p1, p0, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 247
    iput-object p2, p0, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;->mHandler:Landroid/os/Handler;

    .line 248
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;->next()V

    return-void
.end method

.method private boostable()Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private currTime()J
    .locals 2

    .prologue
    .line 273
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private next()V
    .locals 4

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;->boostable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;->timeout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    invoke-static {}, Lmiui/os/Shell;->boostCpuPulse()Z

    .line 263
    iget-object v0, p0, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster$1;-><init>(Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;)V

    invoke-direct {p0}, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;->nextTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 270
    :cond_0
    return-void
.end method

.method private nextTime()J
    .locals 4

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;->currTime()J

    move-result-wide v0

    const-wide/16 v2, 0x28

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private timeout()Z
    .locals 6

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;->currTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;->mStartTime:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;->currTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;->mStartTime:J

    .line 257
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;->reset()V

    .line 252
    invoke-direct {p0}, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;->next()V

    .line 253
    return-void
.end method
