.class Lcom/android/server/net/Injector$NetworkPolicyManagerServiceHook;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NetworkPolicyManagerServiceHook"
.end annotation


# static fields
.field private static sLastNotificationTimeArr:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/net/Injector$NetworkPolicyManagerServiceHook;->sLastNotificationTimeArr:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustMobileDataUsage(Landroid/content/Context;Landroid/net/NetworkTemplate;JJ)J
    .locals 6
    .parameter "context"
    .parameter "template"
    .parameter "start"
    .parameter "end"

    .prologue
    const-wide/16 v2, 0x0

    .line 53
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_usage_adjusting_time"

    invoke-static {v4, v5, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 56
    .local v0, adjustingTime:J
    cmp-long v4, v0, p2

    if-ltz v4, :cond_0

    cmp-long v4, v0, p4

    if-gtz v4, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_usage_adjustment"

    invoke-static {v4, v5, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 63
    .end local v0           #adjustingTime:J
    :cond_0
    return-wide v2
.end method

.method public static before_enqueueNotification(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkPolicy;I)Z
    .locals 2
    .parameter "service"
    .parameter "policy"
    .parameter "type"

    .prologue
    .line 27
    invoke-static {p2}, Lcom/android/server/net/Injector$NetworkPolicyManagerServiceHook;->isIntervalValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-static {p2}, Lcom/android/server/net/Injector$NetworkPolicyManagerServiceHook;->setInterval(I)V

    .line 34
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 30
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->callBuildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, tag:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getActiveNotifs()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .parameter "template"

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 46
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW_DATA_USAGE_SUMMARY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 49
    return-object v0
.end method

.method public static getNetworkTotalBytes(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;JJ)J
    .locals 10
    .parameter "service"
    .parameter "template"
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkStats()Landroid/net/INetworkStatsService;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/net/Injector$NetworkPolicyManagerServiceHook;->adjustMobileDataUsage(Landroid/content/Context;Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    add-long v6, v8, v0

    .line 41
    .local v6, totalBytes:J
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static isIntervalValid(I)Z
    .locals 4
    .parameter "type"

    .prologue
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/android/server/net/Injector$NetworkPolicyManagerServiceHook;->sLastNotificationTimeArr:[J

    aget-wide v2, v2, p0

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static setInterval(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 71
    sget-object v0, Lcom/android/server/net/Injector$NetworkPolicyManagerServiceHook;->sLastNotificationTimeArr:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    aput-wide v1, v0, p0

    .line 72
    return-void
.end method
