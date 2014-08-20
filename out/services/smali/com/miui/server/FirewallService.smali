.class public Lcom/miui/server/FirewallService;
.super Lmiui/net/IFirewall$Stub;
.source "FirewallService.java"


# static fields
.field private static final ADD_CHAIN_FOR_REJECT_CMD:Ljava/lang/String; = null

.field private static final AWK_CMD:Ljava/lang/String; = null

.field private static final CLEAR_ALL_MIUI_CHAIN_CMD:Ljava/lang/String; = null

.field private static final DEBUG:Z = false

.field private static final GREP_CMD:Ljava/lang/String; = null

.field private static final INSERT_ACCEPT_RULE_TO_CHAIN_CMD:Ljava/lang/String; = null

.field private static final IPTABLES_CMD:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "FirewallService"

.field private static final MIUI_CHAIN_PREFIX:Ljava/lang/String; = "miui_"

.field private static final REMOVE_CHAIN_CMD:Ljava/lang/String;

.field private static final REMOVE_RULE_OF_CHAIN_CMD:Ljava/lang/String;


# instance fields
.field private final mAccessControlPassPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentMmsIfname:Ljava/lang/String;

.field private mFlag:I

.field private mIfnames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUsingMmsUids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lcom/miui/server/FirewallService;->getIptablesCommand()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/server/FirewallService;->IPTABLES_CMD:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/miui/server/FirewallService;->getAwkCommand()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/server/FirewallService;->AWK_CMD:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/miui/server/FirewallService;->getGrepCommand()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/server/FirewallService;->GREP_CMD:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "for chain in `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/server/FirewallService;->IPTABLES_CMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -L | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/server/FirewallService;->GREP_CMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \"^Chain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "miui_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/server/FirewallService;->AWK_CMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'{print $2}\'`; do "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/server/FirewallService;->IPTABLES_CMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -D OUTPUT `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/server/FirewallService;->IPTABLES_CMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -S OUTPUT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/server/FirewallService;->AWK_CMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -v chain=${chain} \'$6==chain {print NR-2}\'`; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/server/FirewallService;->IPTABLES_CMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -F $chain; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/server/FirewallService;->IPTABLES_CMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -X $chain; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "done;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/server/FirewallService;->CLEAR_ALL_MIUI_CHAIN_CMD:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/server/FirewallService;->IPTABLES_CMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -D OUTPUT `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/server/FirewallService;->IPTABLES_CMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -S OUTPUT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/server/FirewallService;->AWK_CMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'$6==\"%0%\" {print NR-1}\'`; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/server/FirewallService;->IPTABLES_CMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -F %0%; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/server/FirewallService;->IPTABLES_CMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -X %0%; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/server/FirewallService;->REMOVE_CHAIN_CMD:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/server/FirewallService;->IPTABLES_CMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -N %0%; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/server/FirewallService;->IPTABLES_CMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -A %0% -j REJECT; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/server/FirewallService;->IPTABLES_CMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -I OUTPUT -o %1% -j %0%; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/server/FirewallService;->ADD_CHAIN_FOR_REJECT_CMD:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/server/FirewallService;->IPTABLES_CMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -I %0% -m owner --uid-owner %1% -j RETURN; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/server/FirewallService;->INSERT_ACCEPT_RULE_TO_CHAIN_CMD:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/server/FirewallService;->IPTABLES_CMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -D %0% `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/server/FirewallService;->IPTABLES_CMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -S %0% | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/server/FirewallService;->AWK_CMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'$6==\"%1%\" {print NR-1}\'`; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/server/FirewallService;->REMOVE_RULE_OF_CHAIN_CMD:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 216
    invoke-direct {p0}, Lmiui/net/IFirewall$Stub;-><init>()V

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/FirewallService;->mLastUsingMmsUids:Ljava/util/HashMap;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/FirewallService;->mIfnames:Ljava/util/HashMap;

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/server/FirewallService;->mAccessControlPassPackages:Ljava/util/HashSet;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/server/FirewallService;->mCurrentMmsIfname:Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/server/FirewallService;->mFlag:I

    .line 217
    iput-object p1, p0, Lcom/miui/server/FirewallService;->mContext:Landroid/content/Context;

    .line 218
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/miui/server/FirewallService;->startAccessCheckActivityForScreenOn(Landroid/content/Context;)V

    return-void
.end method

.method private addQuoteMark(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "commands"

    .prologue
    const/16 v5, 0x22

    .line 482
    const-string v4, "\""

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "\""

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 505
    .end local p1
    :goto_0
    return-object p1

    .line 486
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 489
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 490
    .local v1, c:C
    sparse-switch v1, :sswitch_data_0

    .line 501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 488
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 492
    :sswitch_0
    const-string v4, "\\\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 495
    :sswitch_1
    const-string v4, "\\\\"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 498
    :sswitch_2
    const-string v4, "\\$"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 504
    .end local v1           #c:C
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 490
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x24 -> :sswitch_2
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method private addWhiteListChain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 6
    .parameter "chain"
    .parameter "ifname"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p3, uids:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    .local v0, builder:Ljava/lang/StringBuilder;
    sget-object v3, Lcom/miui/server/FirewallService;->REMOVE_CHAIN_CMD:Ljava/lang/String;

    const-string v4, "%0%"

    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    sget-object v3, Lcom/miui/server/FirewallService;->ADD_CHAIN_FOR_REJECT_CMD:Ljava/lang/String;

    const-string v4, "%0%"

    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%1%"

    invoke-virtual {v3, v4, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    if-eqz p3, :cond_0

    .line 418
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 419
    .local v2, uid:I
    sget-object v3, Lcom/miui/server/FirewallService;->INSERT_ACCEPT_RULE_TO_CHAIN_CMD:Ljava/lang/String;

    const-string v4, "%0%"

    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%1%"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 423
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #uid:I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/server/FirewallService;->runCommands(Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method private clearChains()V
    .locals 1

    .prologue
    .line 452
    sget-object v0, Lcom/miui/server/FirewallService;->CLEAR_ALL_MIUI_CHAIN_CMD:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/server/FirewallService;->runCommands(Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method private static getAwkCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string v0, "awk"

    invoke-static {v0}, Lcom/miui/server/FirewallService;->hasCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "awk"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "busybox"

    invoke-static {v0}, Lcom/miui/server/FirewallService;->hasCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "busybox awk"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getGrepCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const-string v0, "grep"

    invoke-static {v0}, Lcom/miui/server/FirewallService;->hasCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "grep"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "busybox"

    invoke-static {v0}, Lcom/miui/server/FirewallService;->hasCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "busybox grep"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getIptablesCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const-string v0, "iptables"

    invoke-static {v0}, Lcom/miui/server/FirewallService;->hasCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "iptables"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasCommand(Ljava/lang/String;)Z
    .locals 2
    .parameter "cmd"

    .prologue
    .line 207
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/xbin/"

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/"

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

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

.method private insertWhiteListRule(Ljava/lang/String;I)V
    .locals 3
    .parameter "chain"
    .parameter "uid"

    .prologue
    .line 433
    sget-object v0, Lcom/miui/server/FirewallService;->INSERT_ACCEPT_RULE_TO_CHAIN_CMD:Ljava/lang/String;

    const-string v1, "%0%"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%1%"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/server/FirewallService;->runCommands(Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method private removeChain(Ljava/lang/String;)V
    .locals 2
    .parameter "chain"

    .prologue
    .line 461
    sget-object v0, Lcom/miui/server/FirewallService;->REMOVE_CHAIN_CMD:Ljava/lang/String;

    const-string v1, "%0%"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/server/FirewallService;->runCommands(Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method private removeRule(Ljava/lang/String;I)V
    .locals 3
    .parameter "chain"
    .parameter "uid"

    .prologue
    .line 444
    sget-object v0, Lcom/miui/server/FirewallService;->REMOVE_RULE_OF_CHAIN_CMD:Ljava/lang/String;

    const-string v1, "%0%"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%1%"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/server/FirewallService;->runCommands(Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method private runCommands(Ljava/lang/String;)V
    .locals 1
    .parameter "commands"

    .prologue
    .line 472
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lmiui/os/Shell;->runShell(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 473
    return-void
.end method

.method public static setupService(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 127
    sget-object v1, Lcom/miui/server/FirewallService;->IPTABLES_CMD:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/server/FirewallService;->GREP_CMD:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/server/FirewallService;->AWK_CMD:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 128
    new-instance v0, Lcom/miui/server/FirewallService;

    invoke-direct {v0, p0}, Lcom/miui/server/FirewallService;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, firewall:Lcom/miui/server/FirewallService;
    invoke-direct {v0}, Lcom/miui/server/FirewallService;->clearChains()V

    .line 130
    const-string v1, "miui.Firewall"

    invoke-virtual {v0}, Lcom/miui/server/FirewallService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 132
    new-instance v1, Lcom/miui/server/FirewallService$1;

    invoke-direct {v1}, Lcom/miui/server/FirewallService$1;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    .end local v0           #firewall:Lcom/miui/server/FirewallService;
    :goto_0
    return-void

    .line 139
    :cond_0
    const-string v1, "FirewallService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to setup service due to iptables="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/server/FirewallService;->IPTABLES_CMD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",grep="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/server/FirewallService;->GREP_CMD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",awk="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/server/FirewallService;->AWK_CMD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static startAccessCheckActivityForScreenOn(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 146
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 147
    .local v0, km:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-static {p0}, Lcom/miui/server/FirewallService;->startAccessCheckActivityIfNeed(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static startAccessCheckActivityIfNeed(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 154
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 155
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 156
    .local v3, tasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 157
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 158
    .local v4, topTask:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    .line 159
    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, packageName:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {p0, v2, v5}, Lmiui/net/FirewallManager;->getCheckIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 161
    .local v1, checkIntent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 162
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 167
    .end local v1           #checkIntent:Landroid/content/Intent;
    .end local v2           #packageName:Ljava/lang/String;
    .end local v4           #topTask:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public addAccessControlPass(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 378
    iget-object v1, p0, Lcom/miui/server/FirewallService;->mAccessControlPassPackages:Ljava/util/HashSet;

    monitor-enter v1

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/miui/server/FirewallService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 380
    monitor-exit v1

    .line 381
    return-void

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addOneShotFlag(I)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 349
    iget v0, p0, Lcom/miui/server/FirewallService;->mFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/miui/server/FirewallService;->mFlag:I

    .line 350
    return-void
.end method

.method public checkAccessControlPass(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    .line 396
    iget-object v1, p0, Lcom/miui/server/FirewallService;->mAccessControlPassPackages:Ljava/util/HashSet;

    monitor-enter v1

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/miui/server/FirewallService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOneShotFlag(I)Z
    .locals 1
    .parameter "flag"

    .prologue
    .line 373
    iget v0, p0, Lcom/miui/server/FirewallService;->mFlag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDataConnected(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "networkType"
    .parameter "key"
    .parameter "ifname"

    .prologue
    .line 298
    iget-object v1, p0, Lcom/miui/server/FirewallService;->mIfnames:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/server/FirewallService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 304
    invoke-static {p2}, Lmiui/net/FirewallManager;->decodeApnSetting(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    .line 305
    .local v0, apn:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v0, :cond_0

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    iput-object p3, p0, Lcom/miui/server/FirewallService;->mCurrentMmsIfname:Ljava/lang/String;

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "miui_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/FirewallService;->mCurrentMmsIfname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/FirewallService;->mCurrentMmsIfname:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/server/FirewallService;->mLastUsingMmsUids:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/miui/server/FirewallService;->addWhiteListChain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 312
    .end local v0           #apn:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    return-void
.end method

.method public onDataDisconnected(ILjava/lang/String;)V
    .locals 3
    .parameter "networkType"
    .parameter "key"

    .prologue
    .line 325
    iget-object v1, p0, Lcom/miui/server/FirewallService;->mIfnames:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 328
    .local v0, ifname:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "miui_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/server/FirewallService;->removeChain(Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/miui/server/FirewallService;->mCurrentMmsIfname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/server/FirewallService;->mCurrentMmsIfname:Ljava/lang/String;

    .line 335
    iget-object v1, p0, Lcom/miui/server/FirewallService;->mLastUsingMmsUids:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 338
    :cond_0
    return-void
.end method

.method public onStartUsingNetworkFeature(III)V
    .locals 4
    .parameter "uid"
    .parameter "pid"
    .parameter "networkType"

    .prologue
    .line 232
    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    .line 235
    iget-object v2, p0, Lcom/miui/server/FirewallService;->mLastUsingMmsUids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 236
    .local v1, pids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 237
    .local v0, newUser:Z
    if-nez v1, :cond_0

    .line 238
    const/4 v0, 0x1

    .line 239
    new-instance v1, Ljava/util/HashSet;

    .end local v1           #pids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 240
    .restart local v1       #pids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/miui/server/FirewallService;->mLastUsingMmsUids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 246
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/miui/server/FirewallService;->mCurrentMmsIfname:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "miui_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/server/FirewallService;->mCurrentMmsIfname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/miui/server/FirewallService;->insertWhiteListRule(Ljava/lang/String;I)V

    .line 250
    .end local v0           #newUser:Z
    .end local v1           #pids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_1
    return-void
.end method

.method public onStopUsingNetworkFeature(III)V
    .locals 3
    .parameter "uid"
    .parameter "pid"
    .parameter "networkType"

    .prologue
    .line 264
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/miui/server/FirewallService;->mLastUsingMmsUids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 267
    .local v0, pids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 268
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 269
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/miui/server/FirewallService;->mLastUsingMmsUids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const/4 v0, 0x0

    .line 278
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/miui/server/FirewallService;->mCurrentMmsIfname:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "miui_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/FirewallService;->mCurrentMmsIfname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/miui/server/FirewallService;->removeRule(Ljava/lang/String;I)V

    .line 282
    .end local v0           #pids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_1
    return-void
.end method

.method public removeAccessControlPass(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 385
    iget-object v1, p0, Lcom/miui/server/FirewallService;->mAccessControlPassPackages:Ljava/util/HashSet;

    monitor-enter v1

    .line 386
    :try_start_0
    const-string v0, "*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/miui/server/FirewallService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 391
    :goto_0
    monitor-exit v1

    .line 392
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/miui/server/FirewallService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeOneShotFlag(I)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 361
    iget v0, p0, Lcom/miui/server/FirewallService;->mFlag:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/miui/server/FirewallService;->mFlag:I

    .line 362
    return-void
.end method
