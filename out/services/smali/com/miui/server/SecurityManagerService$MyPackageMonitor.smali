.class Lcom/miui/server/SecurityManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SecurityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SecurityManagerService;


# direct methods
.method constructor <init>(Lcom/miui/server/SecurityManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;->this$0:Lcom/miui/server/SecurityManagerService;

    #getter for: Lcom/miui/server/SecurityManagerService;->mAdSettings:Lmiui/security/adfirewall/AdFireWallSettings;
    invoke-static {v0}, Lcom/miui/server/SecurityManagerService;->access$000(Lcom/miui/server/SecurityManagerService;)Lmiui/security/adfirewall/AdFireWallSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/security/adfirewall/AdFireWallSettings;->addPackage(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;->this$0:Lcom/miui/server/SecurityManagerService;

    #getter for: Lcom/miui/server/SecurityManagerService;->mAdSettings:Lmiui/security/adfirewall/AdFireWallSettings;
    invoke-static {v0}, Lcom/miui/server/SecurityManagerService;->access$000(Lcom/miui/server/SecurityManagerService;)Lmiui/security/adfirewall/AdFireWallSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/security/adfirewall/AdFireWallSettings;->removePackage(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 0
    .parameter "packages"

    .prologue
    .line 50
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 0
    .parameter "packages"

    .prologue
    .line 53
    return-void
.end method
