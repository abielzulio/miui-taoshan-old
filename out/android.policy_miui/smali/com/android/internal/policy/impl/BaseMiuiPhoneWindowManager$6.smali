.class Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

.field final synthetic val$msg:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1192
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->val$msg:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v16

    if-nez v16, :cond_0

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x103006c

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6$1;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;Landroid/content/Context;I)V

    #setter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static/range {v16 .. v17}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1402(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v16

    const v17, 0x6030009

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 1220
    .local v15, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x7e5

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setType(I)V

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x102

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->addFlags(I)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/high16 v17, 0x3f80

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setDimAmount(F)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 1228
    .local v8, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v16, 0x5

    move/from16 v0, v16

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->show()V

    .line 1233
    const v16, 0x60b010c

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1234
    .local v5, bootLogo:Landroid/widget/ImageView;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v17, v0

    const v16, 0x60b010e

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ProgressBar;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    #setter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1502(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1500(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;

    move-result-object v16

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x6060022

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    #setter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;
    invoke-static/range {v16 .. v17}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1602(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;[Ljava/lang/String;)[Ljava/lang/String;

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_0

    .line 1240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v17, v0

    const v16, 0x60b010f

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    #setter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1702(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1700(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;

    move-result-object v16

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1249
    .end local v5           #bootLogo:Landroid/widget/ImageView;
    .end local v8           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v15           #view:Landroid/view/View;
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1250
    .local v9, parseList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->val$msg:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->val$msg:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "[^0-9]"

    const-string v18, ","

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, arr$:[Ljava/lang/String;
    array-length v7, v4

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v12, v4, v6

    .line 1252
    .local v12, sp:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_1

    .line 1253
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1251
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1257
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v12           #sp:Ljava/lang/String;
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 1258
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1259
    .local v11, progress:I
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1260
    .local v14, total:I
    if-le v11, v14, :cond_3

    .line 1261
    move v13, v11

    .line 1262
    .local v13, tmp:I
    move v11, v14

    .line 1263
    move v14, v13

    .line 1265
    .end local v13           #tmp:I
    :cond_3
    const/16 v16, 0x3

    move/from16 v0, v16

    if-le v14, v0, :cond_5

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1500(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1500(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1500(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1700(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;

    move-result-object v16

    if-eqz v16, :cond_5

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1700(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    mul-int v16, v16, v11

    div-int v10, v16, v14

    .line 1273
    .local v10, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v10, v0, :cond_4

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v10, v16, -0x1

    .line 1276
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1700(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$1600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v17

    aget-object v17, v17, v10

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1280
    .end local v10           #pos:I
    .end local v11           #progress:I
    .end local v14           #total:I
    :cond_5
    return-void
.end method
