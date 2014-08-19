.class public Lcom/android/internal/app/PlatLogoActivity;
.super Landroid/app/Activity;
.source "PlatLogoActivity.java"


# static fields
.field static final BGCOLOR:I = -0x12e2dc


# instance fields
.field mContent:Landroid/widget/FrameLayout;

.field mCount:I

.field final mHandler:Landroid/os/Handler;

.field private mIsCM:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/PlatLogoActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mIsCM:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_cm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mIsCM:Z

    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .local v11, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string v0, "sans-serif"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    .local v6, bold:Landroid/graphics/Typeface;
    const-string v0, "sans-serif-light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    .local v8, light:Landroid/graphics/Typeface;
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mContent:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mContent:Landroid/widget/FrameLayout;

    const/high16 v1, -0x4000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v9, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v9, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v0, 0x41a0

    iget v1, v11, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v12, v0

    .local v12, p:I
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .local v2, logo:Landroid/widget/ImageView;
    iget-boolean v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mIsCM:Z

    if-eqz v0, :cond_1

    const v0, 0x1080217

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v2, v12, v0, v12, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .local v3, bg:Landroid/view/View;
    const v0, -0x12e2dc

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v4, letter:Landroid/widget/TextView;
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-boolean v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mIsCM:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x4316

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x11

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-boolean v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mIsCM:Z

    if-eqz v0, :cond_3

    const-string v0, "CM"

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "ro.cm.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, cmVersion:Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v0, "([0-9\\.]+?)-.*"

    const-string v1, "$1"

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_0
    const/high16 v0, 0x4080

    iget v1, v11, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v12, v0

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v5, tv:Landroid/widget/TextView;
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v0, 0x41f0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v5, v12, v12, v12, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x11

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-boolean v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mIsCM:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CyanogenMod "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .local v10, lp2:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x51

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    mul-int/lit8 v0, v12, 0xa

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mContent:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/internal/app/PlatLogoActivity$1;

    invoke-direct {v1, p0, v4}, Lcom/android/internal/app/PlatLogoActivity$1;-><init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v13, p0, Lcom/android/internal/app/PlatLogoActivity;->mContent:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/android/internal/app/PlatLogoActivity$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/PlatLogoActivity$2;-><init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v0, Lcom/android/internal/app/PlatLogoActivity$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/PlatLogoActivity$3;-><init>(Lcom/android/internal/app/PlatLogoActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/PlatLogoActivity;->setContentView(Landroid/view/View;)V

    return-void

    .end local v3           #bg:Landroid/view/View;
    .end local v4           #letter:Landroid/widget/TextView;
    .end local v5           #tv:Landroid/widget/TextView;
    .end local v7           #cmVersion:Ljava/lang/String;
    .end local v10           #lp2:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    const v0, 0x10804cf

    goto/16 :goto_0

    .restart local v3       #bg:Landroid/view/View;
    .restart local v4       #letter:Landroid/widget/TextView;
    :cond_2
    const/high16 v0, 0x4396

    goto/16 :goto_1

    :cond_3
    const-string v0, "K"

    goto/16 :goto_2

    .restart local v5       #tv:Landroid/widget/TextView;
    .restart local v7       #cmVersion:Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
