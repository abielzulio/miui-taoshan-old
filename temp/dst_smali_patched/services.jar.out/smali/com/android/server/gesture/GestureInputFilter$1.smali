.class Lcom/android/server/gesture/GestureInputFilter$1;
.super Landroid/view/OrientationEventListener;
.source "GestureInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/gesture/GestureInputFilter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/gesture/GestureInputFilter;


# direct methods
.method constructor <init>(Lcom/android/server/gesture/GestureInputFilter;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    iput-object p1, p0, Lcom/android/server/gesture/GestureInputFilter$1;->this$0:Lcom/android/server/gesture/GestureInputFilter;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/gesture/GestureInputFilter$1;->this$0:Lcom/android/server/gesture/GestureInputFilter;

    add-int/lit8 v1, p1, 0x2d

    div-int/lit8 v1, v1, 0x5a

    mul-int/lit8 v1, v1, 0x5a

    #setter for: Lcom/android/server/gesture/GestureInputFilter;->mOrientation:I
    invoke-static {v0, v1}, Lcom/android/server/gesture/GestureInputFilter;->access$002(Lcom/android/server/gesture/GestureInputFilter;I)I

    goto :goto_0
.end method
