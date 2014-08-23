.class Lcom/android/internal/policy/impl/Injector$PhoneWindowHook;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhoneWindowHook"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static before_loadImageURI(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "win"
    .parameter "uri"

    .prologue
    .line 93
    const/4 v2, 0x0

    .line 94
    .local v2, is:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 96
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 97
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 101
    if-eqz v2, :cond_0

    .line 103
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 107
    :cond_0
    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to open content: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    if-eqz v2, :cond_0

    .line 103
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 104
    :catch_1
    move-exception v3

    goto :goto_0

    .line 101
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 103
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 104
    :cond_1
    :goto_1
    throw v3

    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method static getActionBarOverlayResourceId(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "defResourceId"

    .prologue
    .line 68
    invoke-static {p0}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x6030041

    .end local p1
    :cond_0
    return p1
.end method

.method static getActionBarResourceId(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "defResourceId"

    .prologue
    .line 50
    const/4 v0, -0x1

    .line 51
    .local v0, retval:I
    invoke-static {p0}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    const v1, 0x601003d

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lmiui/util/UiUtils;->getBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const v0, 0x6030042

    .line 61
    :goto_0
    return v0

    .line 55
    :cond_0
    const v0, 0x6030040

    goto :goto_0

    .line 58
    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method static getFloatingWindowWidth(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    invoke-static {p0}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method static handleAppLayoutParams(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .parameter "wnd"
    .parameter "wm"
    .parameter "lp"

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 28
    .local v0, rotation:I
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 30
    const/4 v1, -0x1

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 31
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x101005f

    invoke-static {v1, v2}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 32
    const/4 v1, 0x5

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 34
    :cond_0
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 35
    const v1, 0x3f333333

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 37
    .end local v0           #rotation:I
    :cond_1
    return-void
.end method

.method static handleStartingWindow(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/widget/ActionBarView;)V
    .locals 6
    .parameter "win"
    .parameter "abView"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 73
    .local v2, context:Landroid/content/Context;
    invoke-static {v2}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    move-object v4, p1

    .line 74
    check-cast v4, Lcom/miui/internal/v5/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/miui/internal/v5/widget/ActionBarView;->hasTitle()Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/ActionBarView;->setVisibility(I)V

    .line 77
    :cond_0
    const v4, 0x601003e

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lmiui/util/UiUtils;->getBoolean(Landroid/content/Context;IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/ActionBarView;->setNavigationMode(I)V

    .line 79
    new-instance v3, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;

    invoke-direct {v3, v2}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 80
    .local v3, v:Lcom/miui/internal/v5/widget/ScrollingTabContainerView;
    invoke-static {v2}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v1

    .line 81
    .local v1, abp:Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    invoke-virtual {p1, v3}, Lcom/android/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    .line 90
    .end local v1           #abp:Lcom/android/internal/view/ActionBarPolicy;
    .end local v3           #v:Lcom/miui/internal/v5/widget/ScrollingTabContainerView;
    :cond_1
    :goto_0
    return-void

    .line 84
    .restart local v1       #abp:Lcom/android/internal/view/ActionBarPolicy;
    .restart local v3       #v:Lcom/miui/internal/v5/widget/ScrollingTabContainerView;
    :cond_2
    const v4, 0x60b0007

    invoke-static {v2, v4}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    .line 86
    .local v0, abc:Lcom/android/internal/widget/ActionBarContainer;
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    goto :goto_0
.end method
