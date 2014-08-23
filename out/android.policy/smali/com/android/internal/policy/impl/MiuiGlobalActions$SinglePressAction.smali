.class abstract Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;
.super Ljava/lang/Object;
.source "MiuiGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# instance fields
.field private mIconResId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mMessageResId:I

.field private mTextview:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(II)V
    .locals 0
    .parameter "iconResId"
    .parameter "messageResId"

    .prologue
    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    iput p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconResId:I

    .line 504
    iput p2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mMessageResId:I

    .line 505
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    .line 529
    const v3, 0x603000c

    const/4 v4, 0x0

    invoke-virtual {p4, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 531
    .local v2, v:Landroid/view/ViewGroup;
    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconView:Landroid/widget/ImageView;

    .line 532
    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mTextview:Landroid/widget/TextView;

    .line 534
    const v3, 0x60b0084

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 536
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconView:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 537
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mTextview:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 539
    const v1, 0x6010038

    .line 540
    .local v1, state:I
    const v3, 0x60c0011

    iget v4, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mMessageResId:I

    if-ne v3, v4, :cond_1

    .line 541
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x6070075

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 542
    .local v0, color:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mTextview:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 543
    const v1, 0x6010036

    .line 547
    .end local v0           #color:I
    :cond_0
    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setAdditionalState(I)V

    .line 549
    return-object v2

    .line 544
    :cond_1
    const v3, 0x60c0029

    iget v4, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mMessageResId:I

    if-ne v3, v4, :cond_0

    .line 545
    const v1, 0x6010037

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPress()V
.end method

.method public setIcon(I)V
    .locals 2
    .parameter "iconResId"

    .prologue
    .line 512
    iput p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconResId:I

    .line 513
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 516
    :cond_0
    return-void
.end method

.method public setMessage(I)V
    .locals 2
    .parameter "messageResId"

    .prologue
    .line 519
    iput p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mMessageResId:I

    .line 520
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mTextview:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mTextview:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 523
    :cond_0
    return-void
.end method
