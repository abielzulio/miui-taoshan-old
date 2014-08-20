.class Lcom/android/server/Injector$AppOpsServiceHook;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppOpsServiceHook"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFloatingWindowAllowed(I)Z
    .locals 8
    .parameter "uid"

    .prologue
    const/high16 v7, 0x200

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 361
    const/4 v1, 0x0

    .line 362
    .local v1, isAllowed:Z
    const/16 v6, 0x3e8

    if-eq p0, v6, :cond_0

    const/16 v6, 0x3e9

    if-eq p0, v6, :cond_0

    const/16 v6, 0x3ea

    if-eq p0, v6, :cond_0

    const/16 v6, 0x7d0

    if-eq p0, v6, :cond_0

    const/16 v6, 0x3ef

    if-eq p0, v6, :cond_0

    const/16 v6, 0x3f2

    if-eq p0, v6, :cond_0

    const/16 v6, 0x3f5

    if-eq p0, v6, :cond_0

    const/16 v6, 0x3fb

    if-eq p0, v6, :cond_0

    const/16 v6, 0x405

    if-eq p0, v6, :cond_0

    const/16 v6, 0x3f8

    if-eq p0, v6, :cond_0

    const/16 v6, 0x403

    if-ne p0, v6, :cond_2

    .line 373
    :cond_0
    const/4 v1, 0x1

    .line 390
    :cond_1
    :goto_0
    return v1

    .line 375
    :cond_2
    const-string v6, "package"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageManagerService;

    .line 378
    .local v3, pms:Lcom/android/server/pm/PackageManagerService;
    invoke-virtual {v3, p0}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, packages:[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v6, v2

    if-lez v6, :cond_1

    .line 380
    aget-object v6, v2, v4

    invoke-virtual {v3, v6, v4, v4}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 382
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    .line 383
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eq v6, v5, :cond_3

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v7

    if-eq v6, v7, :cond_3

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lmiui/util/UiUtils;->isFloatingWindowAllowed(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    move v1, v5

    :goto_1
    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_1
.end method
