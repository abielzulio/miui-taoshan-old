.class Lcom/miui/server/MdbDebuggingManager$Parameter;
.super Ljava/lang/Object;
.source "MdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/MdbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Parameter"
.end annotation


# instance fields
.field public mType:I

.field public mValue:Ljava/lang/Object;

.field final synthetic this$0:Lcom/miui/server/MdbDebuggingManager;


# direct methods
.method constructor <init>(Lcom/miui/server/MdbDebuggingManager;)V
    .locals 0
    .parameter

    .prologue
    .line 946
    iput-object p1, p0, Lcom/miui/server/MdbDebuggingManager$Parameter;->this$0:Lcom/miui/server/MdbDebuggingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
