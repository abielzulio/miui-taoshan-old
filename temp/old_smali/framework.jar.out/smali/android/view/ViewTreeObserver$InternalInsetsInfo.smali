.class public final Landroid/view/ViewTreeObserver$InternalInsetsInfo;
.super Ljava/lang/Object;
.source "ViewTreeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewTreeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InternalInsetsInfo"
.end annotation


# static fields
.field public static final TOUCHABLE_INSETS_CONTENT:I = 0x1

.field public static final TOUCHABLE_INSETS_FRAME:I = 0x0

.field public static final TOUCHABLE_INSETS_REGION:I = 0x3

.field public static final TOUCHABLE_INSETS_VISIBLE:I = 0x2


# instance fields
.field public final contentInsets:Landroid/graphics/Rect;

.field mTouchableInsets:I

.field public final touchableRegion:Landroid/graphics/Region;

.field public final visibleInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .local v0, other:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    iget v3, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    iget v4, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget-object v4, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    iget-object v4, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v4, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v4}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->hashCode()I

    move-result v0

    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    add-int v0, v1, v2

    return v0
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reset()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    return-void
.end method

.method set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 2
    .parameter "other"

    .prologue
    iget-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iget v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    iput v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    return-void
.end method

.method public setTouchableInsets(I)V
    .locals 0
    .parameter "val"

    .prologue
    iput p1, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    return-void
.end method
