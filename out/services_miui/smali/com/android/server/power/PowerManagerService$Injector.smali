.class Lcom/android/server/power/PowerManagerService$Injector;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# static fields
.field static sButtonLight:Lcom/android/server/LightsService$Light;

.field static sButtonLightTimeout:I

.field static sButtonLightTimeoutTask:Ljava/lang/Runnable;

.field static sButtonLightTurnOff:Z

.field static sHandler:Landroid/os/Handler;

.field static sIsScreenOn:Z

.field static sLightSensorButtonBrightness:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerService$Injector$1;-><init>()V

    sput-object v0, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doTurnOffButtonLight()V
    .locals 2

    .prologue
    .line 152
    sget-object v0, Lcom/android/server/power/PowerManagerService$Injector;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 153
    sget-object v0, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 154
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLightTurnOff:Z

    .line 155
    return-void
.end method

.method static setButtonLight(Lcom/android/server/power/PowerManagerService;Lcom/android/server/LightsService$Light;)V
    .locals 7
    .parameter "pm"
    .parameter "buttonLight"

    .prologue
    const/4 v6, 0x1

    .line 87
    sput-object p1, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLight:Lcom/android/server/LightsService$Light;

    .line 88
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_buttons_timeout"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getSettingsObserver()Lcom/android/server/power/PowerManagerService$SettingsObserver;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 91
    sput-boolean v6, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLightTurnOff:Z

    .line 92
    sput-boolean v6, Lcom/android/server/power/PowerManagerService$Injector;->sIsScreenOn:Z

    .line 94
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 95
    .local v0, powerManager:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v1

    sput v1, Lcom/android/server/power/PowerManagerService$Injector;->sLightSensorButtonBrightness:I

    .line 96
    return-void
.end method

.method static setButtonLightTimeout()V
    .locals 6

    .prologue
    .line 131
    sget-boolean v0, Lcom/android/server/power/PowerManagerService$Injector;->sIsScreenOn:Z

    if-nez v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    sget-boolean v0, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLightTurnOff:Z

    if-eqz v0, :cond_2

    .line 135
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLightTurnOff:Z

    .line 136
    sget-object v0, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLight:Lcom/android/server/LightsService$Light;

    sget v1, Lcom/android/server/power/PowerManagerService$Injector;->sLightSensorButtonBrightness:I

    invoke-virtual {v0, v1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 138
    :cond_2
    sget-object v0, Lcom/android/server/power/PowerManagerService$Injector;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    sget v0, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLightTimeout:I

    if-lez v0, :cond_0

    .line 140
    sget-object v0, Lcom/android/server/power/PowerManagerService$Injector;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget v4, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLightTimeout:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 99
    sput-object p0, Lcom/android/server/power/PowerManagerService$Injector;->sHandler:Landroid/os/Handler;

    .line 100
    return-void
.end method

.method static setScreenOn(Z)V
    .locals 0
    .parameter "isScreenOn"

    .prologue
    .line 158
    sput-boolean p0, Lcom/android/server/power/PowerManagerService$Injector;->sIsScreenOn:Z

    .line 159
    if-eqz p0, :cond_0

    .line 160
    invoke-static {}, Lcom/android/server/power/PowerManagerService$Injector;->setButtonLightTimeout()V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-static {}, Lcom/android/server/power/PowerManagerService$Injector;->doTurnOffButtonLight()V

    goto :goto_0
.end method

.method static turnOffButtonLight(Lcom/android/server/power/PowerManagerService;)V
    .locals 2
    .parameter "pm"

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->callGetDesiredScreenPowerStateLocked()I

    move-result v0

    .line 146
    .local v0, newScreenState:I
    if-nez v0, :cond_0

    sget-boolean v1, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLightTurnOff:Z

    if-nez v1, :cond_0

    .line 147
    invoke-static {}, Lcom/android/server/power/PowerManagerService$Injector;->doTurnOffButtonLight()V

    .line 149
    :cond_0
    return-void
.end method

.method static updateButtonLightTimeout(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_buttons_timeout"

    const/16 v3, 0x1388

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 120
    .local v0, buttonLightTimeout:I
    sget v1, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLightTimeout:I

    if-eq v0, v1, :cond_0

    .line 121
    sput v0, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLightTimeout:I

    .line 122
    invoke-static {}, Lcom/android/server/power/PowerManagerService$Injector;->setButtonLightTimeout()V

    .line 124
    :cond_0
    return-void
.end method
