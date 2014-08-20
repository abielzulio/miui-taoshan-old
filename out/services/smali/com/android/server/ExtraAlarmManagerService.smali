.class public Lcom/android/server/ExtraAlarmManagerService;
.super Ljava/lang/Object;
.source "ExtraAlarmManagerService.java"


# static fields
.field private static final FIVE_MINUTES:J = 0x493e0L

#the value of this static final field might be set in the static constructor
.field private static final OFFSET:I = 0x0

.field private static final ONE_HOUR:J = 0x36ee80L

.field private static final PACKAGE_NAME_WHITE_LIST:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ExtraAlarmManagerService"

.field private static final TWELVE_HOURS:J = 0x2932e00L

.field private static final UID_WHITE_LIST:[I

.field private static final mAppQuota:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 21
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const v1, 0x493e0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/android/server/ExtraAlarmManagerService;->OFFSET:I

    .line 22
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/ExtraAlarmManagerService;->UID_WHITE_LIST:[I

    .line 26
    const/16 v0, 0x36

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.xiaomi.ponponalarm"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.cts.app"

    aput-object v2, v0, v1

    const-string v1, "com.android.cts.stub"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "com.android.deskclock"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.miui.notes"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.thememanager"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.settings"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.providers.calendar"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.chinamobile.cmccwifi"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.chinamobile.cmccwifi.wlanservice"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.when.android.calendar365"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.zdworks.android.zdcalendar"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.lgl.calendar"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.hh.calendar.activity"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "cn.etouch.ecalendar"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.taoapp.huangli"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.when.coco"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.doubleloop.rememberit"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "me.diantong.controller.main"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.cybozu.hrc"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.funo.calendar"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "strawberry.com"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "se.catharsis.android.calendarvbn"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.scliang.srl"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "org.aylians.cppfree"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.mbapp.calendar"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "uk.co.olilan.touchcalendar"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "mikado.bizcalpro12321"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.appall.SmartCalendar"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.example.suchedulemanage"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.tiantian.ttclock"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.android.superdeskclock005"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "com.lilaboc.tubmzmvoice_alam"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "com.apalon.mycloc"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "com.teamnet.ring.main"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "com.xrjknnvp.clockmannlvj"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "com.splunchy.android"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "com.xone.xoneclock"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "com.mine.musicclock"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "com.superapk.alarmclock"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "com.hww.abuseself"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "com.zdclock.works.leowidget"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "org.woodroid.alarmlady"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "com.mdk.smartalarm"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "com.example.com.samsung.srctj"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "com.moji.mjweather"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "com.maxxt.kitchentim"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "jp.springboardinc.android.sbkitchentimerfree"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "com.na.timer"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "com.applegarden.randomalarm"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "com.zdworks.android.zdclock"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "com.sdu.didi.psnger"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/ExtraAlarmManagerService;->PACKAGE_NAME_WHITE_LIST:[Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/ExtraAlarmManagerService;->mAppQuota:Ljava/util/HashMap;

    return-void

    .line 22
    nop

    :array_0
    .array-data 0x4
        0xe8t 0x3t 0x0t 0x0t
        0xe9t 0x3t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alignAlarm(Landroid/content/Context;IJJ)[J
    .locals 10
    .parameter "context"
    .parameter "type"
    .parameter "triggerTime"
    .parameter "interval"

    .prologue
    .line 86
    const/4 v5, 0x2

    new-array v4, v5, [J

    const/4 v5, 0x0

    aput-wide p2, v4, v5

    const/4 v5, 0x1

    aput-wide p4, v4, v5

    .line 87
    .local v4, value:[J
    invoke-static {p0, p1, p4, p5}, Lcom/android/server/ExtraAlarmManagerService;->checkUid(Landroid/content/Context;IJ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-object v4

    .line 88
    :cond_1
    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v2, v5, v7

    .line 92
    .local v2, skew:J
    :goto_1
    add-long v5, p2, v2

    const-wide/32 v7, 0x493e0

    rem-long v0, v5, v7

    .line 93
    .local v0, offset:J
    sget v5, Lcom/android/server/ExtraAlarmManagerService;->OFFSET:I

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-lez v5, :cond_3

    .line 94
    const/4 v5, 0x0

    sub-long v6, p2, v0

    sget v8, Lcom/android/server/ExtraAlarmManagerService;->OFFSET:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    const-wide/32 v8, 0x493e0

    add-long/2addr v6, v8

    aput-wide v6, v4, v5

    .line 99
    :goto_2
    const-wide/32 v5, 0x493e0

    rem-long v0, p4, v5

    .line 100
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_0

    .line 101
    const/4 v5, 0x1

    sub-long v6, p4, v0

    const-wide/32 v8, 0x493e0

    add-long/2addr v6, v8

    aput-wide v6, v4, v5

    goto :goto_0

    .line 88
    .end local v0           #offset:J
    .end local v2           #skew:J
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_1

    .line 96
    .restart local v0       #offset:J
    .restart local v2       #skew:J
    :cond_3
    const/4 v5, 0x0

    sub-long v6, p2, v0

    sget v8, Lcom/android/server/ExtraAlarmManagerService;->OFFSET:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    aput-wide v6, v4, v5

    goto :goto_2
.end method

.method private static checkUid(Landroid/content/Context;IJ)Z
    .locals 11
    .parameter "context"
    .parameter "type"
    .parameter "interval"

    .prologue
    .line 107
    if-eqz p1, :cond_0

    const/4 v7, 0x2

    if-eq p1, v7, :cond_0

    const/4 v7, 0x1

    .line 127
    :goto_0
    return v7

    .line 108
    :cond_0
    const-wide/32 v7, 0x2932e00

    cmp-long v7, p2, v7

    if-ltz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    .line 109
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 110
    .local v6, uid:I
    invoke-static {v6}, Lcom/android/server/ExtraAlarmManagerService;->inUidWhiteList(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    .line 111
    :cond_2
    const-string v7, "package"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageManagerService;

    .line 112
    .local v5, pm:Lcom/android/server/pm/PackageManagerService;
    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, packages:[Ljava/lang/String;
    if-eqz v4, :cond_3

    const/4 v7, 0x0

    aget-object v7, v4, v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-static {p0, v7}, Lcom/android/server/ExtraAlarmManagerService;->inNameWhiteList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    .line 114
    :cond_3
    const-wide/16 v7, 0x0

    cmp-long v7, p2, v7

    if-nez v7, :cond_5

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 116
    .local v2, now:J
    sget-object v7, Lcom/android/server/ExtraAlarmManagerService;->mAppQuota:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 117
    sget-object v7, Lcom/android/server/ExtraAlarmManagerService;->mAppQuota:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const/4 v7, 0x1

    goto :goto_0

    .line 120
    :cond_4
    sget-object v7, Lcom/android/server/ExtraAlarmManagerService;->mAppQuota:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 121
    .local v0, lastTime:J
    sub-long v7, v2, v0

    const-wide/32 v9, 0x36ee80

    cmp-long v7, v7, v9

    if-ltz v7, :cond_5

    .line 122
    sget-object v7, Lcom/android/server/ExtraAlarmManagerService;->mAppQuota:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const/4 v7, 0x1

    goto :goto_0

    .line 127
    .end local v0           #lastTime:J
    .end local v2           #now:J
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method private static inCloudWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 145
    sget-object v0, Lmiui/provider/CloudAppControll$TAG;->TAG_ACCURATE_ALARM_CLOCK:Lmiui/provider/CloudAppControll$TAG;

    invoke-static {p0, v0, p1}, Lmiui/provider/CloudAppControll;->get(Landroid/content/Context;Lmiui/provider/CloudAppControll$TAG;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static inNameWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 149
    invoke-static {p1}, Lcom/android/server/ExtraAlarmManagerService;->inPackageNameWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/server/ExtraAlarmManagerService;->inCloudWhiteList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static inPackageNameWhiteList(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    .line 138
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/server/ExtraAlarmManagerService;->PACKAGE_NAME_WHITE_LIST:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 139
    sget-object v1, Lcom/android/server/ExtraAlarmManagerService;->PACKAGE_NAME_WHITE_LIST:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 141
    :goto_1
    return v1

    .line 138
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static inUidWhiteList(I)Z
    .locals 2
    .parameter "uid"

    .prologue
    .line 131
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/server/ExtraAlarmManagerService;->UID_WHITE_LIST:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 132
    sget-object v1, Lcom/android/server/ExtraAlarmManagerService;->UID_WHITE_LIST:[I

    aget v1, v1, v0

    if-ne p0, v1, :cond_0

    const/4 v1, 0x1

    .line 134
    :goto_1
    return v1

    .line 131
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
