.class Landroid/media/WebVttParser$3;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/WebVttParser$Phase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/WebVttParser;


# direct methods
.method constructor <init>(Landroid/media/WebVttParser;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 6
    .parameter "line"

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    iget-object v5, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    #getter for: Landroid/media/WebVttParser;->mParseCueId:Landroid/media/WebVttParser$Phase;
    invoke-static {v5}, Landroid/media/WebVttParser;->access$600(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v5

    #setter for: Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;
    invoke-static {v4, v5}, Landroid/media/WebVttParser;->access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "-->"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    iget-object v5, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    #getter for: Landroid/media/WebVttParser;->mParseCueTime:Landroid/media/WebVttParser$Phase;
    invoke-static {v5}, Landroid/media/WebVttParser;->access$700(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v5

    #setter for: Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;
    invoke-static {v4, v5}, Landroid/media/WebVttParser;->access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    #getter for: Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;
    invoke-static {v4}, Landroid/media/WebVttParser;->access$100(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/media/WebVttParser$Phase;->parse(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v4, 0x3a

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, colonAt:I
    if-lez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v0, v4, :cond_4

    :cond_3
    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string v5, "meta data header has invalid format"

    #calls: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, p1}, Landroid/media/WebVttParser;->access$000(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, name:Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .local v3, value:Ljava/lang/String;
    const-string v4, "Region"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Landroid/media/WebVttParser$3;->parseRegion(Ljava/lang/String;)Landroid/media/TextTrackRegion;

    move-result-object v2

    .local v2, region:Landroid/media/TextTrackRegion;
    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    #getter for: Landroid/media/WebVttParser;->mListener:Landroid/media/WebVttCueListener;
    invoke-static {v4}, Landroid/media/WebVttParser;->access$800(Landroid/media/WebVttParser;)Landroid/media/WebVttCueListener;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/media/WebVttCueListener;->onRegionParsed(Landroid/media/TextTrackRegion;)V

    goto :goto_0
.end method

.method parseRegion(Ljava/lang/String;)Landroid/media/TextTrackRegion;
    .locals 31
    .parameter "s"

    .prologue
    new-instance v27, Landroid/media/TextTrackRegion;

    invoke-direct/range {v27 .. v27}, Landroid/media/TextTrackRegion;-><init>()V

    .local v27, region:Landroid/media/TextTrackRegion;
    const-string v2, " +"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .local v20, arr$:[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v25, v0

    .local v25, len$:I
    const/16 v24, 0x0

    .local v24, i$:I
    :goto_0
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_b

    aget-object v28, v20, v24

    .local v28, setting:Ljava/lang/String;
    const/16 v2, 0x3d

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    .local v23, equalAt:I
    if-lez v23, :cond_0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, name:Ljava/lang/String;
    add-int/lit8 v2, v23, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .local v7, value:Ljava/lang/String;
    const-string v2, "id"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, v27

    iput-object v7, v0, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v2, "width"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    invoke-static {v7}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F

    move-result v2

    move-object/from16 v0, v27

    iput v2, v0, Landroid/media/TextTrackRegion;->mWidth:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v22

    .local v22, e:Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string v3, "region setting"

    const-string v5, "has invalid value"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v2 .. v7}, Landroid/media/WebVttParser;->access$400(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v22           #e:Ljava/lang/NumberFormatException;
    :cond_3
    const-string v2, "lines"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .local v26, lines:I
    if-ltz v26, :cond_4

    move/from16 v0, v26

    move-object/from16 v1, v27

    iput v0, v1, Landroid/media/TextTrackRegion;->mLines:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .end local v26           #lines:I
    :catch_1
    move-exception v22

    .restart local v22       #e:Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string v3, "region setting"

    const-string v5, "is not numeric"

    #calls: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5, v7}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v22           #e:Ljava/lang/NumberFormatException;
    .restart local v26       #lines:I
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string v3, "region setting"

    const-string v5, "is negative"

    #calls: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5, v7}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .end local v26           #lines:I
    :cond_5
    const-string v2, "regionanchor"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "viewportanchor"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_6
    const-string v2, ","

    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    .local v21, commaAt:I
    if-gez v21, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string v3, "region setting"

    const-string v5, "contains no comma"

    #calls: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5, v7}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x0

    move/from16 v0, v21

    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .local v13, anchorX:Ljava/lang/String;
    add-int/lit8 v2, v21, 0x1

    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .local v19, anchorY:Ljava/lang/String;
    :try_start_3
    invoke-static {v13}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v29

    .local v29, x:F
    :try_start_4
    invoke-static/range {v19 .. v19}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v30

    .local v30, y:F
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_8

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput v0, v1, Landroid/media/TextTrackRegion;->mAnchorPointX:F

    move/from16 v0, v30

    move-object/from16 v1, v27

    iput v0, v1, Landroid/media/TextTrackRegion;->mAnchorPointY:F

    goto/16 :goto_1

    .end local v29           #x:F
    .end local v30           #y:F
    :catch_2
    move-exception v22

    .restart local v22       #e:Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string v9, "region setting"

    const-string v11, "has invalid x component"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object v10, v4

    #calls: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v8 .. v13}, Landroid/media/WebVttParser;->access$400(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v22           #e:Ljava/lang/NumberFormatException;
    .restart local v29       #x:F
    :catch_3
    move-exception v22

    .restart local v22       #e:Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string v15, "region setting"

    const-string v17, "has invalid y component"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, v4

    #calls: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v14 .. v19}, Landroid/media/WebVttParser;->access$400(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v22           #e:Ljava/lang/NumberFormatException;
    .restart local v30       #y:F
    :cond_8
    move/from16 v0, v29

    move-object/from16 v1, v27

    iput v0, v1, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    move/from16 v0, v30

    move-object/from16 v1, v27

    iput v0, v1, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    goto/16 :goto_1

    .end local v13           #anchorX:Ljava/lang/String;
    .end local v19           #anchorY:Ljava/lang/String;
    .end local v21           #commaAt:I
    .end local v29           #x:F
    .end local v30           #y:F
    :cond_9
    const-string v2, "scroll"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "up"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0x12d

    move-object/from16 v0, v27

    iput v2, v0, Landroid/media/TextTrackRegion;->mScrollValue:I

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string v3, "region setting"

    const-string v5, "has invalid value"

    #calls: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5, v7}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v4           #name:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    .end local v23           #equalAt:I
    .end local v28           #setting:Ljava/lang/String;
    :cond_b
    return-object v27
.end method
