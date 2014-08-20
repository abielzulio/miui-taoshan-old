.class Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster$1;
.super Ljava/lang/Object;
.source "Injector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;->next()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;


# direct methods
.method constructor <init>(Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster$1;->this$0:Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster$1;->this$0:Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;

    #calls: Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;->next()V
    invoke-static {v0}, Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;->access$000(Lcom/android/server/am/Injector$ActivityStackHook$CpuBooster;)V

    .line 267
    return-void
.end method
