.class public Landroid/graphics/pdf/PdfDocument;
.super Ljava/lang/Object;
.source "PdfDocument.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/pdf/PdfDocument$1;,
        Landroid/graphics/pdf/PdfDocument$Page;,
        Landroid/graphics/pdf/PdfDocument$PageInfo;,
        Landroid/graphics/pdf/PdfDocument$PdfCanvas;
    }
.end annotation


# instance fields
.field private final mChunk:[B

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

.field private mNativeDocument:I

.field private final mPages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/pdf/PdfDocument$PageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mChunk:[B

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mPages:Ljava/util/List;

    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->nativeCreateDocument()I

    move-result v0

    iput v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:I

    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method private dispose()V
    .locals 1

    .prologue
    iget v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:I

    invoke-direct {p0, v0}, Landroid/graphics/pdf/PdfDocument;->nativeClose(I)V

    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:I

    :cond_0
    return-void
.end method

.method private native nativeClose(I)V
.end method

.method private native nativeCreateDocument()I
.end method

.method private native nativeFinishPage(I)V
.end method

.method private static native nativeStartPage(IIIIIII)I
.end method

.method private native nativeWriteTo(ILjava/io/OutputStream;[B)V
.end method

.method private throwIfClosed()V
    .locals 2

    .prologue
    iget v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "document is closed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private throwIfCurrentPageNotFinished()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current page not finished!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfCurrentPageNotFinished()V

    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->dispose()V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V
    .locals 2
    .parameter "page"

    .prologue
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfClosed()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "page cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

    if-eq p1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid page"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/pdf/PdfDocument$Page;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "page already finished"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mPages:Ljava/util/List;

    invoke-virtual {p1}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

    iget v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:I

    invoke-direct {p0, v0}, Landroid/graphics/pdf/PdfDocument;->nativeFinishPage(I)V

    #calls: Landroid/graphics/pdf/PdfDocument$Page;->finish()V
    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$Page;->access$400(Landroid/graphics/pdf/PdfDocument$Page;)V

    return-void
.end method

.method public getPages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/pdf/PdfDocument$PageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mPages:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;
    .locals 8
    .parameter "pageInfo"

    .prologue
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfClosed()V

    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfCurrentPageNotFinished()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "page cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v7, Landroid/graphics/pdf/PdfDocument$PdfCanvas;

    iget v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:I

    #getter for: Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageWidth:I
    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->access$000(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    move-result v1

    #getter for: Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageHeight:I
    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->access$100(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    move-result v2

    #getter for: Landroid/graphics/pdf/PdfDocument$PageInfo;->mContentRect:Landroid/graphics/Rect;
    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->access$200(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    #getter for: Landroid/graphics/pdf/PdfDocument$PageInfo;->mContentRect:Landroid/graphics/Rect;
    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->access$200(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    #getter for: Landroid/graphics/pdf/PdfDocument$PageInfo;->mContentRect:Landroid/graphics/Rect;
    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->access$200(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    #getter for: Landroid/graphics/pdf/PdfDocument$PageInfo;->mContentRect:Landroid/graphics/Rect;
    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->access$200(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/pdf/PdfDocument;->nativeStartPage(IIIIIII)I

    move-result v0

    invoke-direct {v7, p0, v0}, Landroid/graphics/pdf/PdfDocument$PdfCanvas;-><init>(Landroid/graphics/pdf/PdfDocument;I)V

    .local v7, canvas:Landroid/graphics/Canvas;
    new-instance v0, Landroid/graphics/pdf/PdfDocument$Page;

    const/4 v1, 0x0

    invoke-direct {v0, v7, p1, v1}, Landroid/graphics/pdf/PdfDocument$Page;-><init>(Landroid/graphics/Canvas;Landroid/graphics/pdf/PdfDocument$PageInfo;Landroid/graphics/pdf/PdfDocument$1;)V

    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfClosed()V

    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfCurrentPageNotFinished()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:I

    iget-object v1, p0, Landroid/graphics/pdf/PdfDocument;->mChunk:[B

    invoke-direct {p0, v0, p1, v1}, Landroid/graphics/pdf/PdfDocument;->nativeWriteTo(ILjava/io/OutputStream;[B)V

    return-void
.end method
