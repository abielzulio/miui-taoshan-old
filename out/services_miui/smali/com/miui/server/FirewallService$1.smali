.class final Lcom/miui/server/FirewallService$1;
.super Landroid/content/BroadcastReceiver;
.source "FirewallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/FirewallService;->setupService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 135
    #calls: Lcom/miui/server/FirewallService;->startAccessCheckActivityForScreenOn(Landroid/content/Context;)V
    invoke-static {p1}, Lcom/miui/server/FirewallService;->access$000(Landroid/content/Context;)V

    .line 136
    return-void
.end method
