.class public Landroid/transition/Fade;
.super Landroid/transition/Visibility;
.source "Fade.java"


# static fields
.field private static DBG:Z = false

.field public static final IN:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Fade"

.field public static final OUT:I = 0x2

.field private static final PROPNAME_SCREEN_X:Ljava/lang/String; = "android:fade:screenX"

.field private static final PROPNAME_SCREEN_Y:Ljava/lang/String; = "android:fade:screenY"


# instance fields
.field private mFadingMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Landroid/transition/Fade;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/transition/Fade;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "fadingMode"

    .prologue
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    iput p1, p0, Landroid/transition/Fade;->mFadingMode:I

    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 4
    .parameter "transitionValues"

    .prologue
    const/4 v1, 0x2

    new-array v0, v1, [I

    .local v0, loc:[I
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:fade:screenX"

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:fade:screenY"

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;
    .locals 4
    .parameter "view"
    .parameter "startAlpha"
    .parameter "endAlpha"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    cmpl-float v1, p2, p3

    if-nez v1, :cond_1

    if-eqz p4, :cond_0

    invoke-virtual {p4, v0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "transitionAlpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, anim:Landroid/animation/ObjectAnimator;
    sget-boolean v1, Landroid/transition/Fade;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "Fade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created animator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p4}, Landroid/animation/ObjectAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    goto :goto_0
.end method


# virtual methods
.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .parameter "transitionValues"

    .prologue
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    invoke-direct {p0, p1}, Landroid/transition/Fade;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 8
    .parameter "sceneRoot"
    .parameter "startValues"
    .parameter "startVisibility"
    .parameter "endValues"
    .parameter "endVisibility"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    iget v4, p0, Landroid/transition/Fade;->mFadingMode:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v0, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .local v0, endView:Landroid/view/View;
    sget-boolean v4, Landroid/transition/Fade;->DBG:Z

    if-eqz v4, :cond_2

    if-eqz p2, :cond_3

    iget-object v1, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .local v1, startView:Landroid/view/View;
    :goto_1
    const-string v4, "Fade"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fade.onAppear: startView, startVis, endView, endVis = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #startView:Landroid/view/View;
    :cond_2
    invoke-virtual {v0, v7}, Landroid/view/View;->setTransitionAlpha(F)V

    new-instance v2, Landroid/transition/Fade$1;

    invoke-direct {v2, p0, v0}, Landroid/transition/Fade$1;-><init>(Landroid/transition/Fade;Landroid/view/View;)V

    .local v2, transitionListener:Landroid/transition/Transition$TransitionListener;
    invoke-virtual {p0, v2}, Landroid/transition/Fade;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    const/high16 v4, 0x3f80

    invoke-direct {p0, v0, v7, v4, v3}, Landroid/transition/Fade;->createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object v3

    goto :goto_0

    .end local v2           #transitionListener:Landroid/transition/Transition$TransitionListener;
    :cond_3
    move-object v1, v3

    goto :goto_1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 29
    .parameter "sceneRoot"
    .parameter "startValues"
    .parameter "startVisibility"
    .parameter "endValues"
    .parameter "endVisibility"

    .prologue
    move-object/from16 v0, p0

    iget v4, v0, Landroid/transition/Fade;->mFadingMode:I

    and-int/lit8 v4, v4, 0x2

    const/4 v10, 0x2

    if-eq v4, v10, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    const/16 v27, 0x0

    .local v27, view:Landroid/view/View;
    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v26, v0

    .local v26, startView:Landroid/view/View;
    :goto_1
    if-eqz p4, :cond_5

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v18, v0

    .local v18, endView:Landroid/view/View;
    :goto_2
    sget-boolean v4, Landroid/transition/Fade;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "Fade"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fade.onDisappear: startView, startVis, endView, endVis = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v21, 0x0

    .local v21, overlayView:Landroid/view/View;
    const/16 v28, 0x0

    .local v28, viewToKeep:Landroid/view/View;
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_8

    :cond_2
    if-eqz v18, :cond_6

    move-object/from16 v21, v18

    move-object/from16 v27, v18

    :cond_3
    :goto_3
    move/from16 v7, p5

    .local v7, finalVisibility:I
    if-eqz v21, :cond_b

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v10, "android:fade:screenX"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .local v22, screenX:I
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v10, "android:fade:screenY"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .local v23, screenY:I
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v20, v0

    .local v20, loc:[I
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    aget v4, v20, v4

    sub-int v4, v22, v4

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v4, v10

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    const/4 v4, 0x1

    aget v4, v20, v4

    sub-int v4, v23, v4

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int/2addr v4, v10

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    const/high16 v24, 0x3f80

    .local v24, startAlpha:F
    const/16 v17, 0x0

    .local v17, endAlpha:F
    move-object/from16 v5, v27

    .local v5, finalView:Landroid/view/View;
    move-object/from16 v8, v21

    .local v8, finalOverlayView:Landroid/view/View;
    move-object/from16 v6, v28

    .local v6, finalViewToKeep:Landroid/view/View;
    move-object/from16 v9, p1

    .local v9, finalSceneRoot:Landroid/view/ViewGroup;
    new-instance v3, Landroid/transition/Fade$2;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Landroid/transition/Fade$2;-><init>(Landroid/transition/Fade;Landroid/view/View;Landroid/view/View;ILandroid/view/View;Landroid/view/ViewGroup;)V

    .local v3, endListener:Landroid/animation/AnimatorListenerAdapter;
    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v17

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/transition/Fade;->createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object v4

    goto/16 :goto_0

    .end local v3           #endListener:Landroid/animation/AnimatorListenerAdapter;
    .end local v5           #finalView:Landroid/view/View;
    .end local v6           #finalViewToKeep:Landroid/view/View;
    .end local v7           #finalVisibility:I
    .end local v8           #finalOverlayView:Landroid/view/View;
    .end local v9           #finalSceneRoot:Landroid/view/ViewGroup;
    .end local v17           #endAlpha:F
    .end local v18           #endView:Landroid/view/View;
    .end local v20           #loc:[I
    .end local v21           #overlayView:Landroid/view/View;
    .end local v22           #screenX:I
    .end local v23           #screenY:I
    .end local v24           #startAlpha:F
    .end local v26           #startView:Landroid/view/View;
    .end local v28           #viewToKeep:Landroid/view/View;
    :cond_4
    const/16 v26, 0x0

    goto/16 :goto_1

    .restart local v26       #startView:Landroid/view/View;
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_2

    .restart local v18       #endView:Landroid/view/View;
    .restart local v21       #overlayView:Landroid/view/View;
    .restart local v28       #viewToKeep:Landroid/view/View;
    :cond_6
    if-eqz v26, :cond_3

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_7

    move-object/from16 v21, v26

    move-object/from16 v27, v26

    goto/16 :goto_3

    :cond_7
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_3

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    check-cast v25, Landroid/view/View;

    .local v25, startParent:Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getId()I

    move-result v19

    .local v19, id:I
    const/4 v4, -0x1

    move/from16 v0, v19

    if-eq v0, v4, :cond_3

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/transition/Fade;->mCanRemoveViews:Z

    if-eqz v4, :cond_3

    move-object/from16 v21, v26

    move-object/from16 v27, v26

    goto/16 :goto_3

    .end local v19           #id:I
    .end local v25           #startParent:Landroid/view/View;
    :cond_8
    const/4 v4, 0x4

    move/from16 v0, p5

    if-ne v0, v4, :cond_9

    move-object/from16 v27, v18

    move-object/from16 v28, v27

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_a

    move-object/from16 v27, v18

    move-object/from16 v28, v27

    goto/16 :goto_3

    :cond_a
    move-object/from16 v27, v26

    move-object/from16 v21, v27

    goto/16 :goto_3

    .restart local v7       #finalVisibility:I
    :cond_b
    if-eqz v28, :cond_c

    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const/high16 v24, 0x3f80

    .restart local v24       #startAlpha:F
    const/16 v17, 0x0

    .restart local v17       #endAlpha:F
    move-object/from16 v5, v27

    .restart local v5       #finalView:Landroid/view/View;
    move-object/from16 v8, v21

    .restart local v8       #finalOverlayView:Landroid/view/View;
    move-object/from16 v6, v28

    .restart local v6       #finalViewToKeep:Landroid/view/View;
    move-object/from16 v9, p1

    .restart local v9       #finalSceneRoot:Landroid/view/ViewGroup;
    new-instance v3, Landroid/transition/Fade$3;

    move-object v10, v3

    move-object/from16 v11, p0

    move-object v12, v6

    move v13, v7

    move-object v14, v5

    move-object v15, v8

    move-object/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Landroid/transition/Fade$3;-><init>(Landroid/transition/Fade;Landroid/view/View;ILandroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;)V

    .restart local v3       #endListener:Landroid/animation/AnimatorListenerAdapter;
    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v17

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/transition/Fade;->createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object v4

    goto/16 :goto_0

    .end local v3           #endListener:Landroid/animation/AnimatorListenerAdapter;
    .end local v5           #finalView:Landroid/view/View;
    .end local v6           #finalViewToKeep:Landroid/view/View;
    .end local v8           #finalOverlayView:Landroid/view/View;
    .end local v9           #finalSceneRoot:Landroid/view/ViewGroup;
    .end local v17           #endAlpha:F
    .end local v24           #startAlpha:F
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_0
.end method
