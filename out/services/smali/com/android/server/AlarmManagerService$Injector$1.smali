.class final Lcom/android/server/AlarmManagerService$Injector$1;
.super Ljava/util/ArrayList;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService$Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1446
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1448
    const-string v0, "com.android.deskclock"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService$Injector$1;->add(Ljava/lang/Object;)Z

    .line 1449
    return-void
.end method
