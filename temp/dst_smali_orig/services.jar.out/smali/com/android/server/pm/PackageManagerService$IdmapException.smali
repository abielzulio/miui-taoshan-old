.class public Lcom/android/server/pm/PackageManagerService$IdmapException;
.super Ljava/lang/Exception;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IdmapException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "message"

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IdmapException;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
