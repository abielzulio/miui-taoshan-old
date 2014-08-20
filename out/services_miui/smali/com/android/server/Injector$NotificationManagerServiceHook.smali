.class Lcom/android/server/Injector$NotificationManagerServiceHook;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationManagerServiceHook"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cancelCurrentToast(Lcom/android/server/NotificationManagerService;I)V
    .locals 0
    .parameter "service"
    .parameter "index"

    .prologue
    .line 260
    return-void
.end method

.method static getApplicationEnabledSetting(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 4
    .parameter "packageManager"
    .parameter "pkgName"

    .prologue
    const/4 v1, 0x0

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 250
    .local v0, mainIntent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 256
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method static updateNotificationLight(Lcom/android/server/NotificationManagerService;Landroid/app/Notification;)V
    .locals 8
    .parameter "service"
    .parameter "notification"

    .prologue
    .line 229
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    .line 230
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->getDefaultNotificationColor()I

    move-result v3

    .line 231
    .local v3, defaultNotificationColor:I
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "breathing_light_color"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 234
    .local v0, color:I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x6080008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 236
    .local v2, defaultFreq:I
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "breathing_light_freq"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 239
    .local v4, freq:I
    invoke-static {v4}, Lmiui/app/ExtraNotification;->getLedPwmOffOn(I)[I

    move-result-object v5

    .line 240
    .local v5, offOn:[I
    iput v0, p1, Landroid/app/Notification;->ledARGB:I

    .line 241
    const/4 v6, 0x1

    aget v6, v5, v6

    iput v6, p1, Landroid/app/Notification;->ledOnMS:I

    .line 242
    const/4 v6, 0x0

    aget v6, v5, v6

    iput v6, p1, Landroid/app/Notification;->ledOffMS:I

    .line 243
    return-void
.end method
