.class public Lcom/android/internal/util/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/StateMachine$1;,
        Lcom/android/internal/util/StateMachine$SmHandler;,
        Lcom/android/internal/util/StateMachine$LogRecords;,
        Lcom/android/internal/util/StateMachine$LogRec;
    }
.end annotation


# static fields
.field public static final HANDLED:Z = true

.field public static final NOT_HANDLED:Z = false

.field private static final SM_INIT_CMD:I = -0x2

.field private static final SM_QUIT_CMD:I = -0x1


# instance fields
.field private mName:Ljava/lang/String;

.field private mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

.field private mSmThread:Landroid/os/HandlerThread;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    iget-object v1, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .parameter "name"
    .parameter "handler"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0
    .parameter "name"
    .parameter "looper"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/util/StateMachine;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/util/StateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    return-object p1
.end method

.method private initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 2
    .parameter "name"
    .parameter "looper"

    .prologue
    iput-object p1, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    new-instance v0, Lcom/android/internal/util/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    return-void
.end method


# virtual methods
.method protected addLogRec(Ljava/lang/String;)V
    .locals 8
    .parameter "string"

    .prologue
    iget-object v7, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v7, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    #getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;
    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1600(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v0

    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1000(Lcom/android/internal/util/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1100(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;

    move-result-object v4

    #getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1800(Lcom/android/internal/util/StateMachine$SmHandler;)[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    move-result-object v1

    #getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I
    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1900(Lcom/android/internal/util/StateMachine$SmHandler;)I

    move-result v3

    aget-object v1, v1, v3

    iget-object v5, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    #getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;
    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2000(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/State;

    move-result-object v6

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/StateMachine$LogRecords;->add(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method protected final addState(Lcom/android/internal/util/State;)V
    .locals 2
    .parameter "state"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$800(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    return-void
.end method

.method protected final addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V
    .locals 1
    .parameter "state"
    .parameter "parent"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/StateMachine$SmHandler;->access$800(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    return-void
.end method

.method public final copyLogRecs()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/util/StateMachine$LogRec;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .local v3, vlr:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/internal/util/StateMachine$LogRec;>;"
    iget-object v2, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v2, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-eqz v2, :cond_0

    #getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;
    invoke-static {v2}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1600(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v4

    #getter for: Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;
    invoke-static {v4}, Lcom/android/internal/util/StateMachine$LogRecords;->access$1700(Lcom/android/internal/util/StateMachine$LogRecords;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/StateMachine$LogRec;

    .local v1, lr:Lcom/android/internal/util/StateMachine$LogRec;
    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #lr:Lcom/android/internal/util/StateMachine$LogRec;
    :cond_0
    return-object v3
.end method

.method protected final deferMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1400(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " total records="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getLogRecCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getLogRecSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string v1, " rec[%d]: %s\n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->getLogRec(I)Lcom/android/internal/util/StateMachine$LogRec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/util/StateMachine$LogRec;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected final getCurrentMessage()Landroid/os/Message;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1000(Lcom/android/internal/util/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v1

    goto :goto_0
.end method

.method protected final getCurrentState()Lcom/android/internal/util/IState;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1100(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;

    move-result-object v1

    goto :goto_0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    return-object v0
.end method

.method public final getLogRec(I)Lcom/android/internal/util/StateMachine$LogRec;
    .locals 2
    .parameter "index"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    #getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1600(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/util/StateMachine$LogRecords;->get(I)Lcom/android/internal/util/StateMachine$LogRec;

    move-result-object v1

    goto :goto_0
.end method

.method public final getLogRecCount()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    #getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1600(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine$LogRecords;->count()I

    move-result v1

    goto :goto_0
.end method

.method public final getLogRecSize()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    #getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1600(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine$LogRecords;->size()I

    move-result v1

    goto :goto_0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .parameter "msg"

    .prologue
    const-string v0, ""

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 1
    .parameter "what"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method protected haltedProcessMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    return-void
.end method

.method public isDbg()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->isDbg()Z
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2400(Lcom/android/internal/util/StateMachine$SmHandler;)Z

    move-result v1

    goto :goto_0
.end method

.method protected final isQuit(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_1

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2100(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)Z

    move-result v1

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected logAndAddLogRec(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->addLogRec(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "s"
    .parameter "e"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected logw(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final obtainMessage()Landroid/os/Message;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(I)Landroid/os/Message;
    .locals 1
    .parameter "what"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(II)Landroid/os/Message;
    .locals 2
    .parameter "what"
    .parameter "arg1"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(III)Landroid/os/Message;
    .locals 1
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected onHalting()V
    .locals 0

    .prologue
    return-void
.end method

.method protected onQuitting()V
    .locals 0

    .prologue
    return-void
.end method

.method protected final quit()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->quit()V
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2200(Lcom/android/internal/util/StateMachine$SmHandler;)V

    goto :goto_0
.end method

.method protected final quitNow()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->quitNow()V
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2300(Lcom/android/internal/util/StateMachine$SmHandler;)V

    goto :goto_0
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected final removeMessages(I)V
    .locals 1
    .parameter "what"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->removeMessages(I)V

    goto :goto_0
.end method

.method public final sendMessage(I)V
    .locals 2
    .parameter "what"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final sendMessage(II)V
    .locals 2
    .parameter "what"
    .parameter "arg1"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final sendMessage(III)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final sendMessage(IIILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final sendMessage(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final sendMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final sendMessageAtFrontOfQueue(I)V
    .locals 2
    .parameter "what"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final sendMessageAtFrontOfQueue(II)V
    .locals 2
    .parameter "what"
    .parameter "arg1"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final sendMessageAtFrontOfQueue(III)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final sendMessageDelayed(IIIJ)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "delayMillis"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public final sendMessageDelayed(IIILjava/lang/Object;J)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p5, p6}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public final sendMessageDelayed(IIJ)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "delayMillis"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public final sendMessageDelayed(IJ)V
    .locals 2
    .parameter "what"
    .parameter "delayMillis"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public final sendMessageDelayed(ILjava/lang/Object;J)V
    .locals 2
    .parameter "what"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)V
    .locals 1
    .parameter "msg"
    .parameter "delayMillis"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public setDbg(Z)V
    .locals 1
    .parameter "dbg"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->setDbg(Z)V
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2500(Lcom/android/internal/util/StateMachine$SmHandler;Z)V

    goto :goto_0
.end method

.method protected final setInitialState(Lcom/android/internal/util/State;)V
    .locals 1
    .parameter "initialState"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->setInitialState(Lcom/android/internal/util/State;)V
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$900(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;)V

    return-void
.end method

.method public final setLogOnlyTransitions(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1600(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$LogRecords;->setLogOnlyTransitions(Z)V

    return-void
.end method

.method public final setLogRecSize(I)V
    .locals 1
    .parameter "maxSize"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1600(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$LogRecords;->setSize(I)V

    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .local v0, smh:Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->completeConstruction()V
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2600(Lcom/android/internal/util/StateMachine$SmHandler;)V

    goto :goto_0
.end method

.method protected final transitionTo(Lcom/android/internal/util/IState;)V
    .locals 1
    .parameter "destState"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1200(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/IState;)V

    return-void
.end method

.method protected final transitionToHaltingState()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    iget-object v1, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;
    invoke-static {v1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1300(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine$SmHandler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1200(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/IState;)V

    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    #getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1500(Lcom/android/internal/util/StateMachine$SmHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - unhandledMessage: msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
