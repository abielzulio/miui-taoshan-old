.class public Lcom/android/internal/policy/impl/MagnifierPopupWindow;
.super Landroid/widget/PopupWindow;
.source "MagnifierPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;
    }
.end annotation


# static fields
.field public static final DEFAULT_TIMES:F = 1.2f

.field public static final LOG_TAG:Ljava/lang/String; = "MagnifierPopupWindow"

.field private static final MSG_HIDE_MAGNIFIER:I = 0x3

.field private static final MSG_REFRESH_MAGNIFIER:I = 0x4

.field private static final MSG_SHOW_MAGNIFIER:I = 0x2

.field private static final MSG_UPDATE_CACHE:I = 0x1

.field private static final REFRESH_DELAY:I = 0x3e8

.field private static final UPDATE_CACHE_DELAY:I = 0x50


# instance fields
.field private mAnimationEnter:Landroid/animation/AnimatorSet;

.field private mAnimationExit:Landroid/animation/AnimatorSet;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFingerOffset:I

.field mHandler:Landroid/os/Handler;

.field private mLocationX:I

.field private mLocationY:I

.field private mMagnifierView:Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

.field private mMaxLayer:I

.field private mToken:Landroid/os/IBinder;

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "maxLayer"

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;-><init>(Landroid/content/Context;II)V

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 5
    .parameter "context"
    .parameter "maxLayer"
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    .line 218
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 278
    new-instance v2, Lcom/android/internal/policy/impl/MagnifierPopupWindow$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow$2;-><init>(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mHandler:Landroid/os/Handler;

    .line 219
    iput p2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMaxLayer:I

    .line 220
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mToken:Landroid/os/IBinder;

    .line 221
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mDisplay:Landroid/view/Display;

    .line 222
    iget-object v2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 223
    new-instance v2, Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

    const v3, 0x3f99999a

    invoke-direct {v2, p0, p1, v3}, Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;-><init>(Lcom/android/internal/policy/impl/MagnifierPopupWindow;Landroid/content/Context;F)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMagnifierView:Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

    .line 224
    iget-object v2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMagnifierView:Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;->setClickable(Z)V

    .line 225
    iget-object v2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMagnifierView:Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->setContentView(Landroid/view/View;)V

    .line 226
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->setFocusable(Z)V

    .line 227
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->setTouchable(Z)V

    .line 228
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->setClippingEnabled(Z)V

    .line 229
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->setInputMethodMode(I)V

    .line 230
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mAnimationEnter:Landroid/animation/AnimatorSet;

    .line 233
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mAnimationExit:Landroid/animation/AnimatorSet;

    .line 234
    iget-object v2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mAnimationExit:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/internal/policy/impl/MagnifierPopupWindow$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow$1;-><init>(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x10e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v0, v2

    .line 253
    .local v0, duration:J
    iget-object v2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mAnimationExit:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 254
    iget-object v2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mAnimationEnter:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 256
    const/16 v2, 0xbb6

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->setWindowLayoutType(I)V

    .line 257
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 258
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mFingerOffset:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mLocationY:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/MagnifierPopupWindow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mLocationY:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/MagnifierPopupWindow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mFingerOffset:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->showMagnifier()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->refreshMagnifier()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mX:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMagnifierView:Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mY:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)Landroid/animation/AnimatorSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mAnimationExit:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)Landroid/util/DisplayMetrics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)Landroid/view/Display;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMaxLayer:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/MagnifierPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mLocationX:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/MagnifierPopupWindow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mLocationX:I

    return p1
.end method

.method private refreshMagnifier()V
    .locals 6

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMagnifierView:Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mX:I

    iget v3, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mY:I

    iget v4, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mX:I

    iget v5, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mY:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;->updateMagnifier(Landroid/graphics/Rect;)V

    .line 296
    return-void
.end method

.method private showMagnifier()V
    .locals 5

    .prologue
    .line 291
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mX:I

    iget v2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mY:I

    iget v3, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mX:I

    iget v4, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mY:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->showMagnifier(Landroid/graphics/Rect;)V

    .line 292
    return-void
.end method

.method private showMagnifier(Landroid/graphics/Rect;)V
    .locals 7
    .parameter "clip"

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 299
    iget-object v2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMagnifierView:Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;->updateMagnifier(Landroid/graphics/Rect;)V

    .line 300
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMagnifierView:Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

    invoke-virtual {v2, v5, v5}, Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;->measure(II)V

    .line 302
    iget-object v2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMagnifierView:Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;->updateCache()V

    .line 303
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->setWidth(I)V

    .line 304
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->setHeight(I)V

    .line 305
    iget-object v2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mToken:Landroid/os/IBinder;

    const/16 v3, 0x33

    invoke-virtual {p0, v2, v3, v5, v5}, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 307
    iget-object v2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMagnifierView:Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

    iget v3, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mX:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;->setPivotX(F)V

    .line 308
    iget-object v2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMagnifierView:Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

    iget v3, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mY:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;->setPivotY(F)V

    .line 309
    iget-object v2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMagnifierView:Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

    const-string v3, "scaleX"

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 310
    .local v0, animation1:Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMagnifierView:Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

    const-string v3, "scaleY"

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 311
    .local v1, animation2:Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mAnimationEnter:Landroid/animation/AnimatorSet;

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v0, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 312
    iget-object v2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mAnimationEnter:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 314
    .end local v0           #animation1:Landroid/animation/ObjectAnimator;
    .end local v1           #animation2:Landroid/animation/ObjectAnimator;
    :cond_0
    return-void

    .line 309
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 310
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 263
    return-void
.end method

.method public showMagnifier(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 271
    iget v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 272
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mX:I

    .line 273
    iput p2, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mY:I

    .line 274
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 276
    :cond_1
    return-void
.end method

.method public updateCache()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/impl/MagnifierPopupWindow;->mMagnifierView:Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MagnifierPopupWindow$MagnifierView;->updateCache()V

    .line 267
    return-void
.end method
