.class Lcom/android/server/location/Injector$GpsLocationProviderHook;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GpsLocationProviderHook"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static appendUidExtra(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .locals 3
    .parameter "provider"
    .parameter "intent"

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->getClientSource()Landroid/os/WorkSource;

    move-result-object v0

    .line 10
    .local v0, clientSource:Landroid/os/WorkSource;
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->getNavigating()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 11
    const-string v1, "android.intent.extra.UID"

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    :cond_0
    return-void
.end method
