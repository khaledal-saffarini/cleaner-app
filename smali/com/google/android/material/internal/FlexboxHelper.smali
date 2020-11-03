.class Lcom/google/android/material/internal/FlexboxHelper;
.super Ljava/lang/Object;
.source "FlexboxHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;,
        Lcom/google/android/material/internal/FlexboxHelper$Order;
    }
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0xa


# instance fields
.field private childrenFrozen:[Z

.field private final flexContainer:Lcom/google/android/material/internal/FlexContainer;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/FlexContainer;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    return-void
.end method

.method private addFlexLine(Ljava/util/List;Lcom/google/android/material/internal/FlexLine;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/internal/FlexLine;",
            ">;",
            "Lcom/google/android/material/internal/FlexLine;",
            "II)V"
        }
    .end annotation

    .line 694
    iput p4, p2, Lcom/google/android/material/internal/FlexLine;->sumCrossSizeBefore:I

    .line 695
    iget-object p4, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {p4, p2}, Lcom/google/android/material/internal/FlexContainer;->onNewFlexLineAdded(Lcom/google/android/material/internal/FlexLine;)V

    .line 696
    iput p3, p2, Lcom/google/android/material/internal/FlexLine;->lastIndex:I

    .line 697
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private calculateFlexLines(Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;",
            "IIIII",
            "Ljava/util/List<",
            "Lcom/google/android/material/internal/FlexLine;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p6

    .line 208
    iget-object v0, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->isMainAxisDirectionHorizontal()Z

    move-result v14

    .line 210
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 211
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    if-nez p7, :cond_0

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object/from16 v7, p7

    .line 222
    :goto_0
    iput-object v7, v10, Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;->flexLines:Ljava/util/List;

    const/4 v6, -0x1

    if-ne v13, v6, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 226
    :goto_1
    invoke-direct {v9, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getPaddingStartMain(Z)I

    move-result v1

    .line 227
    invoke-direct {v9, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getPaddingEndMain(Z)I

    move-result v2

    .line 228
    invoke-direct {v9, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getPaddingStartCross(Z)I

    move-result v16

    .line 229
    invoke-direct {v9, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getPaddingEndCross(Z)I

    move-result v17

    .line 239
    new-instance v3, Lcom/google/android/material/internal/FlexLine;

    invoke-direct {v3}, Lcom/google/android/material/internal/FlexLine;-><init>()V

    move/from16 v6, p5

    .line 240
    iput v6, v3, Lcom/google/android/material/internal/FlexLine;->firstIndex:I

    add-int/2addr v2, v1

    .line 241
    iput v2, v3, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 243
    iget-object v1, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/material/internal/FlexContainer;->getFlexItemCount()I

    move-result v1

    const/high16 v18, -0x80000000

    move/from16 v19, v0

    const/4 v0, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v22, -0x80000000

    :goto_2
    if-ge v6, v1, :cond_11

    .line 245
    iget-object v5, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v5, v6}, Lcom/google/android/material/internal/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_2

    .line 248
    invoke-direct {v9, v6, v1, v3}, Lcom/google/android/material/internal/FlexboxHelper;->isLastFlexItem(IILcom/google/android/material/internal/FlexLine;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 249
    invoke-direct {v9, v7, v3, v6, v0}, Lcom/google/android/material/internal/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/material/internal/FlexLine;II)V

    goto :goto_3

    .line 252
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v10, 0x8

    if-ne v4, v10, :cond_4

    .line 253
    iget v4, v3, Lcom/google/android/material/internal/FlexLine;->goneItemCount:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/material/internal/FlexLine;->goneItemCount:I

    .line 254
    iget v4, v3, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    .line 255
    invoke-direct {v9, v6, v1, v3}, Lcom/google/android/material/internal/FlexboxHelper;->isLastFlexItem(IILcom/google/android/material/internal/FlexLine;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 256
    invoke-direct {v9, v7, v3, v6, v0}, Lcom/google/android/material/internal/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/material/internal/FlexLine;II)V

    :cond_3
    :goto_3
    move/from16 v24, v8

    move v8, v13

    move/from16 v27, v15

    const/4 v10, -0x1

    const/4 v11, 0x1

    const/16 v29, 0x0

    move/from16 v13, p4

    move-object v15, v7

    move v7, v1

    goto/16 :goto_a

    .line 261
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/google/android/material/internal/FlexItem;

    .line 263
    iget-object v4, v3, Lcom/google/android/material/internal/FlexLine;->indicesAlignSelfStretch:Ljava/util/List;

    move/from16 v25, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-direct {v9, v10, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemSizeMain(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v1

    .line 267
    invoke-interface {v10}, Lcom/google/android/material/internal/FlexItem;->getFlexBasisPercent()F

    move-result v4

    const/high16 v26, -0x40800000    # -1.0f

    cmpl-float v4, v4, v26

    if-eqz v4, :cond_5

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v15, v4, :cond_5

    int-to-float v1, v8

    .line 269
    invoke-interface {v10}, Lcom/google/android/material/internal/FlexItem;->getFlexBasisPercent()F

    move-result v4

    mul-float v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :cond_5
    if-eqz v14, :cond_6

    .line 278
    iget-object v4, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    move-object/from16 v26, v7

    const/4 v7, 0x1

    .line 283
    invoke-direct {v9, v10, v7}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v24

    add-int v24, v2, v24

    .line 284
    invoke-direct {v9, v10, v7}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v27

    add-int v7, v24, v27

    .line 279
    invoke-interface {v4, v11, v7, v1}, Lcom/google/android/material/internal/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v1

    .line 286
    iget-object v4, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    add-int v7, v16, v17

    const/4 v13, 0x1

    .line 291
    invoke-direct {v9, v10, v13}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v24

    add-int v7, v7, v24

    .line 292
    invoke-direct {v9, v10, v13}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v24

    add-int v7, v7, v24

    add-int/2addr v7, v0

    move/from16 v24, v8

    .line 294
    invoke-direct {v9, v10, v13}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemSizeCross(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v8

    .line 287
    invoke-interface {v4, v12, v7, v8}, Lcom/google/android/material/internal/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v4

    .line 295
    invoke-virtual {v5, v1, v4}, Landroid/view/View;->measure(II)V

    move v13, v1

    const/4 v8, 0x0

    goto :goto_4

    :cond_6
    move-object/from16 v26, v7

    move/from16 v24, v8

    const/4 v13, 0x1

    .line 297
    iget-object v4, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    add-int v7, v16, v17

    const/4 v8, 0x0

    .line 302
    invoke-direct {v9, v10, v8}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v23

    add-int v7, v7, v23

    .line 303
    invoke-direct {v9, v10, v8}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v23

    add-int v7, v7, v23

    add-int/2addr v7, v0

    .line 305
    invoke-direct {v9, v10, v8}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemSizeCross(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v13

    .line 298
    invoke-interface {v4, v12, v7, v13}, Lcom/google/android/material/internal/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v4

    .line 306
    iget-object v7, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    .line 311
    invoke-direct {v9, v10, v8}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v13

    add-int/2addr v13, v2

    .line 312
    invoke-direct {v9, v10, v8}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v23

    add-int v13, v13, v23

    .line 307
    invoke-interface {v7, v11, v13, v1}, Lcom/google/android/material/internal/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v1

    .line 314
    invoke-virtual {v5, v4, v1}, Landroid/view/View;->measure(II)V

    move v13, v1

    .line 316
    :goto_4
    iget-object v1, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v1, v6, v5}, Lcom/google/android/material/internal/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 324
    invoke-direct {v9, v5, v6}, Lcom/google/android/material/internal/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    .line 326
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    move/from16 v4, v20

    invoke-static {v4, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v20

    .line 328
    iget v4, v3, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 333
    invoke-direct {v9, v5, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getViewMeasuredSizeMain(Landroid/view/View;Z)I

    move-result v1

    .line 334
    invoke-direct {v9, v10, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v7

    add-int/2addr v1, v7

    .line 335
    invoke-direct {v9, v10, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v7

    add-int/2addr v7, v1

    move v1, v0

    move-object/from16 v0, p0

    move v11, v1

    move-object v1, v5

    move/from16 v28, v2

    move v2, v15

    move-object/from16 v23, v3

    move/from16 v3, v24

    move/from16 v27, v15

    const/4 v15, 0x1

    move-object v8, v5

    const/16 v29, 0x0

    move v5, v7

    move v7, v6

    const/4 v15, -0x1

    move-object v6, v10

    move-object/from16 v15, v26

    move/from16 v26, v7

    move/from16 v30, v13

    move-object v13, v8

    move/from16 v8, v21

    .line 328
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/internal/FlexboxHelper;->isWrapRequired(Landroid/view/View;IIIILcom/google/android/material/internal/FlexItem;II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 339
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/material/internal/FlexLine;->getItemCountNotGone()I

    move-result v0

    move/from16 v6, v26

    if-lez v0, :cond_8

    if-lez v6, :cond_7

    add-int/lit8 v5, v6, -0x1

    move-object/from16 v3, v23

    goto :goto_5

    :cond_7
    move-object/from16 v3, v23

    const/4 v5, 0x0

    .line 340
    :goto_5
    invoke-direct {v9, v15, v3, v5, v11}, Lcom/google/android/material/internal/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/material/internal/FlexLine;II)V

    .line 341
    iget v0, v3, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    add-int/2addr v0, v11

    goto :goto_6

    :cond_8
    move v0, v11

    :goto_6
    if-eqz v14, :cond_9

    .line 345
    invoke-interface {v10}, Lcom/google/android/material/internal/FlexItem;->getHeight()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    .line 353
    iget-object v1, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    .line 356
    invoke-interface {v1}, Lcom/google/android/material/internal/FlexContainer;->getPaddingTop()I

    move-result v2

    iget-object v3, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    .line 357
    invoke-interface {v3}, Lcom/google/android/material/internal/FlexContainer;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 358
    invoke-interface {v10}, Lcom/google/android/material/internal/FlexItem;->getMarginTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 359
    invoke-interface {v10}, Lcom/google/android/material/internal/FlexItem;->getMarginBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    .line 361
    invoke-interface {v10}, Lcom/google/android/material/internal/FlexItem;->getHeight()I

    move-result v3

    .line 354
    invoke-interface {v1, v12, v2, v3}, Lcom/google/android/material/internal/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v1

    move/from16 v2, v30

    .line 362
    invoke-virtual {v13, v2, v1}, Landroid/view/View;->measure(II)V

    .line 363
    invoke-direct {v9, v13, v6}, Lcom/google/android/material/internal/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    goto :goto_7

    :cond_9
    move/from16 v2, v30

    .line 366
    invoke-interface {v10}, Lcom/google/android/material/internal/FlexItem;->getWidth()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_a

    .line 374
    iget-object v1, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    .line 377
    invoke-interface {v1}, Lcom/google/android/material/internal/FlexContainer;->getPaddingLeft()I

    move-result v3

    iget-object v4, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    .line 378
    invoke-interface {v4}, Lcom/google/android/material/internal/FlexContainer;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 379
    invoke-interface {v10}, Lcom/google/android/material/internal/FlexItem;->getMarginLeft()I

    move-result v4

    add-int/2addr v3, v4

    .line 380
    invoke-interface {v10}, Lcom/google/android/material/internal/FlexItem;->getMarginRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    .line 382
    invoke-interface {v10}, Lcom/google/android/material/internal/FlexItem;->getWidth()I

    move-result v4

    .line 375
    invoke-interface {v1, v12, v3, v4}, Lcom/google/android/material/internal/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v1

    .line 383
    invoke-virtual {v13, v1, v2}, Landroid/view/View;->measure(II)V

    .line 384
    invoke-direct {v9, v13, v6}, Lcom/google/android/material/internal/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    .line 388
    :cond_a
    :goto_7
    new-instance v3, Lcom/google/android/material/internal/FlexLine;

    invoke-direct {v3}, Lcom/google/android/material/internal/FlexLine;-><init>()V

    const/4 v1, 0x1

    .line 389
    iput v1, v3, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    move/from16 v2, v28

    .line 390
    iput v2, v3, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 391
    iput v6, v3, Lcom/google/android/material/internal/FlexLine;->firstIndex:I

    const/high16 v1, -0x80000000

    const/4 v5, 0x0

    goto :goto_8

    :cond_b
    move-object/from16 v3, v23

    move/from16 v6, v26

    move/from16 v2, v28

    const/4 v1, 0x1

    .line 395
    iget v0, v3, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    add-int/2addr v0, v1

    iput v0, v3, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    add-int/lit8 v5, v21, 0x1

    move v0, v11

    move/from16 v1, v22

    .line 398
    :goto_8
    iget v4, v3, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 399
    invoke-direct {v9, v13, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getViewMeasuredSizeMain(Landroid/view/View;Z)I

    move-result v7

    .line 400
    invoke-direct {v9, v10, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v8

    add-int/2addr v7, v8

    .line 401
    invoke-direct {v9, v10, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v4, v7

    iput v4, v3, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 402
    iget v4, v3, Lcom/google/android/material/internal/FlexLine;->motalFlexGrow:F

    invoke-interface {v10}, Lcom/google/android/material/internal/FlexItem;->getFlexGrow()F

    move-result v7

    add-float/2addr v4, v7

    iput v4, v3, Lcom/google/android/material/internal/FlexLine;->motalFlexGrow:F

    .line 403
    iget v4, v3, Lcom/google/android/material/internal/FlexLine;->totalFlexShrink:F

    invoke-interface {v10}, Lcom/google/android/material/internal/FlexItem;->getFlexShrink()F

    move-result v7

    add-float/2addr v4, v7

    iput v4, v3, Lcom/google/android/material/internal/FlexLine;->totalFlexShrink:F

    .line 405
    iget-object v4, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v4, v13, v6, v5, v3}, Lcom/google/android/material/internal/FlexContainer;->onNewFlexItemAdded(Landroid/view/View;IILcom/google/android/material/internal/FlexLine;)V

    .line 410
    invoke-direct {v9, v13, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getViewMeasuredSizeCross(Landroid/view/View;Z)I

    move-result v4

    .line 411
    invoke-direct {v9, v10, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v7

    add-int/2addr v4, v7

    .line 412
    invoke-direct {v9, v10, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    .line 413
    invoke-interface {v7, v13}, Lcom/google/android/material/internal/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v7

    add-int/2addr v4, v7

    .line 408
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 417
    iget v4, v3, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    if-eqz v14, :cond_c

    .line 420
    iget v4, v3, Lcom/google/android/material/internal/FlexLine;->maxBaseline:I

    .line 421
    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    move-result v7

    invoke-interface {v10}, Lcom/google/android/material/internal/FlexItem;->getMarginTop()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/google/android/material/internal/FlexLine;->maxBaseline:I

    :cond_c
    move/from16 v7, v25

    .line 424
    invoke-direct {v9, v6, v7, v3}, Lcom/google/android/material/internal/FlexboxHelper;->isLastFlexItem(IILcom/google/android/material/internal/FlexLine;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 425
    invoke-direct {v9, v15, v3, v6, v0}, Lcom/google/android/material/internal/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/material/internal/FlexLine;II)V

    .line 426
    iget v4, v3, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    add-int/2addr v0, v4

    :cond_d
    move/from16 v8, p6

    const/4 v10, -0x1

    if-eq v8, v10, :cond_e

    .line 430
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    .line 431
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    const/4 v11, 0x1

    sub-int/2addr v4, v11

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/internal/FlexLine;

    iget v4, v4, Lcom/google/android/material/internal/FlexLine;->lastIndex:I

    if-lt v4, v8, :cond_f

    if-lt v6, v8, :cond_f

    if-nez v19, :cond_f

    .line 439
    invoke-virtual {v3}, Lcom/google/android/material/internal/FlexLine;->getCrossSize()I

    move-result v0

    neg-int v0, v0

    move/from16 v13, p4

    const/4 v4, 0x1

    goto :goto_9

    :cond_e
    const/4 v11, 0x1

    :cond_f
    move/from16 v13, p4

    move/from16 v4, v19

    :goto_9
    if-le v0, v13, :cond_10

    if-eqz v4, :cond_10

    move-object/from16 v0, p1

    move/from16 v4, v20

    goto :goto_b

    :cond_10
    move/from16 v22, v1

    move/from16 v19, v4

    move/from16 v21, v5

    :goto_a
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v10, p1

    move/from16 v11, p2

    move v1, v7

    move v13, v8

    move-object v7, v15

    move/from16 v8, v24

    move/from16 v15, v27

    goto/16 :goto_2

    :cond_11
    move/from16 v4, v20

    move-object/from16 v0, p1

    .line 454
    :goto_b
    iput v4, v0, Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;->childState:I

    return-void
.end method

.method private checkSizeConstraints(Landroid/view/View;I)V
    .locals 6

    .line 710
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/FlexItem;

    .line 711
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 712
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 714
    invoke-interface {v0}, Lcom/google/android/material/internal/FlexItem;->getMinWidth()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_0

    .line 716
    invoke-interface {v0}, Lcom/google/android/material/internal/FlexItem;->getMinWidth()I

    move-result v1

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    .line 717
    :cond_0
    invoke-interface {v0}, Lcom/google/android/material/internal/FlexItem;->getMaxWidth()I

    move-result v3

    if-le v1, v3, :cond_1

    .line 719
    invoke-interface {v0}, Lcom/google/android/material/internal/FlexItem;->getMaxWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 722
    :goto_1
    invoke-interface {v0}, Lcom/google/android/material/internal/FlexItem;->getMinHeight()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 724
    invoke-interface {v0}, Lcom/google/android/material/internal/FlexItem;->getMinHeight()I

    move-result v2

    goto :goto_2

    .line 725
    :cond_2
    invoke-interface {v0}, Lcom/google/android/material/internal/FlexItem;->getMaxHeight()I

    move-result v5

    if-le v2, v5, :cond_3

    .line 727
    invoke-interface {v0}, Lcom/google/android/material/internal/FlexItem;->getMaxHeight()I

    move-result v2

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    if-eqz v4, :cond_4

    const/high16 v0, 0x40000000    # 2.0f

    .line 730
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 731
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 732
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 733
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0, p2, p1}, Lcom/google/android/material/internal/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    :cond_4
    return-void
.end method

.method private createOrders(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/android/material/internal/FlexboxHelper$Order;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 117
    iget-object v2, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v2, v1}, Lcom/google/android/material/internal/FlexContainer;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/FlexItem;

    .line 119
    new-instance v3, Lcom/google/android/material/internal/FlexboxHelper$Order;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/material/internal/FlexboxHelper$Order;-><init>(Lcom/google/android/material/internal/FlexboxHelper$1;)V

    .line 120
    invoke-interface {v2}, Lcom/google/android/material/internal/FlexItem;->getOrder()I

    move-result v2

    iput v2, v3, Lcom/google/android/material/internal/FlexboxHelper$Order;->order:I

    .line 121
    iput v1, v3, Lcom/google/android/material/internal/FlexboxHelper$Order;->index:I

    .line 122
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private determineMainSize(III)V
    .locals 9

    .line 751
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getFlexItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/FlexboxHelper;->ensureChildrenFrozen(I)V

    .line 752
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getFlexItemCount()I

    move-result v0

    if-lt p3, v0, :cond_0

    return-void

    .line 757
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    .line 758
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p3, v0, :cond_1

    goto :goto_0

    .line 762
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/material/internal/FlexContainer;->getLargestMainSize()I

    move-result p1

    .line 764
    :goto_0
    iget-object p3, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {p3}, Lcom/google/android/material/internal/FlexContainer;->getPaddingLeft()I

    move-result p3

    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getPaddingRight()I

    move-result v0

    add-int/2addr p3, v0

    const/4 v0, 0x0

    .line 767
    iget-object v1, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/material/internal/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v6

    .line 768
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_3

    .line 769
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/material/internal/FlexLine;

    .line 770
    iget v0, v2, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    if-ge v0, p1, :cond_2

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v3, p1

    move v4, p3

    .line 771
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/internal/FlexboxHelper;->expandFlexItems(ILcom/google/android/material/internal/FlexLine;IIZ)V

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v3, p1

    move v4, p3

    .line 773
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/internal/FlexboxHelper;->shrinkFlexItems(ILcom/google/android/material/internal/FlexLine;IIZ)V

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private ensureChildrenFrozen(I)V
    .locals 2

    .line 779
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->childrenFrozen:[Z

    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 780
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/material/internal/FlexboxHelper;->childrenFrozen:[Z

    goto :goto_0

    .line 781
    :cond_0
    array-length v1, v0

    if-ge v1, p1, :cond_1

    .line 782
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 783
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/material/internal/FlexboxHelper;->childrenFrozen:[Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 785
    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([ZZ)V

    :goto_0
    return-void
.end method

.method private expandFlexItems(ILcom/google/android/material/internal/FlexLine;IIZ)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 805
    iget v0, v2, Lcom/google/android/material/internal/FlexLine;->motalFlexGrow:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_a

    iget v0, v2, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    if-ge v3, v0, :cond_0

    goto/16 :goto_5

    .line 808
    :cond_0
    iget v0, v2, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 810
    iget v4, v2, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    sub-int v4, v3, v4

    int-to-float v4, v4

    iget v5, v2, Lcom/google/android/material/internal/FlexLine;->motalFlexGrow:F

    div-float/2addr v4, v5

    .line 811
    iget v5, v2, Lcom/google/android/material/internal/FlexLine;->dividerLengthInMainSize:I

    add-int v5, p4, v5

    iput v5, v2, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    if-nez p5, :cond_1

    const/high16 v5, -0x80000000

    .line 824
    iput v5, v2, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    :cond_1
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 827
    :goto_0
    iget v10, v2, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    if-ge v5, v10, :cond_9

    .line 828
    iget v10, v2, Lcom/google/android/material/internal/FlexLine;->firstIndex:I

    add-int/2addr v10, v5

    .line 829
    iget-object v11, v6, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v11, v10}, Lcom/google/android/material/internal/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 830
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_2

    goto/16 :goto_3

    .line 833
    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/google/android/material/internal/FlexItem;

    .line 836
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 837
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 838
    iget-object v15, v6, Lcom/google/android/material/internal/FlexboxHelper;->childrenFrozen:[Z

    aget-boolean v15, v15, v10

    if-nez v15, :cond_7

    invoke-interface {v12}, Lcom/google/android/material/internal/FlexItem;->getFlexGrow()F

    move-result v15

    cmpl-float v15, v15, v1

    if-lez v15, :cond_7

    int-to-float v13, v13

    .line 839
    invoke-interface {v12}, Lcom/google/android/material/internal/FlexItem;->getFlexGrow()F

    move-result v14

    mul-float v14, v14, v4

    add-float/2addr v13, v14

    .line 840
    iget v14, v2, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    if-ne v5, v14, :cond_3

    add-float/2addr v13, v9

    const/4 v9, 0x0

    .line 844
    :cond_3
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 845
    invoke-interface {v12}, Lcom/google/android/material/internal/FlexItem;->getMaxWidth()I

    move-result v1

    if-le v14, v1, :cond_4

    .line 853
    invoke-interface {v12}, Lcom/google/android/material/internal/FlexItem;->getMaxWidth()I

    move-result v14

    .line 854
    iget-object v1, v6, Lcom/google/android/material/internal/FlexboxHelper;->childrenFrozen:[Z

    aput-boolean v15, v1, v10

    .line 855
    iget v1, v2, Lcom/google/android/material/internal/FlexLine;->motalFlexGrow:F

    invoke-interface {v12}, Lcom/google/android/material/internal/FlexItem;->getFlexGrow()F

    move-result v7

    sub-float/2addr v1, v7

    iput v1, v2, Lcom/google/android/material/internal/FlexLine;->motalFlexGrow:F

    move v1, v4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    int-to-float v1, v14

    sub-float/2addr v13, v1

    add-float/2addr v9, v13

    move v1, v4

    float-to-double v3, v9

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-double v15, v3, v16

    if-lez v15, :cond_5

    add-int/lit8 v14, v14, 0x1

    sub-float/2addr v9, v13

    goto :goto_1

    :cond_5
    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    cmpg-double v15, v3, v16

    if-gez v15, :cond_6

    add-int/lit8 v14, v14, -0x1

    add-float/2addr v9, v13

    .line 866
    :cond_6
    :goto_1
    iget v3, v2, Lcom/google/android/material/internal/FlexLine;->sumCrossSizeBefore:I

    move/from16 v4, p1

    .line 867
    invoke-direct {v6, v4, v12, v3}, Lcom/google/android/material/internal/FlexboxHelper;->getChildHeightMeasureSpecInternal(ILcom/google/android/material/internal/FlexItem;I)I

    move-result v3

    const/high16 v13, 0x40000000    # 2.0f

    .line 870
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 871
    invoke-virtual {v11, v13, v3}, Landroid/view/View;->measure(II)V

    .line 872
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 873
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 874
    iget-object v3, v6, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v3, v10, v11}, Lcom/google/android/material/internal/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    goto :goto_2

    :cond_7
    move v1, v4

    move/from16 v4, p1

    .line 880
    :goto_2
    invoke-interface {v12}, Lcom/google/android/material/internal/FlexItem;->getMarginTop()I

    move-result v3

    add-int/2addr v14, v3

    .line 881
    invoke-interface {v12}, Lcom/google/android/material/internal/FlexItem;->getMarginBottom()I

    move-result v3

    add-int/2addr v14, v3

    iget-object v3, v6, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    .line 882
    invoke-interface {v3, v11}, Lcom/google/android/material/internal/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v3

    add-int/2addr v14, v3

    .line 877
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 883
    iget v8, v2, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 884
    invoke-interface {v12}, Lcom/google/android/material/internal/FlexItem;->getMarginLeft()I

    move-result v10

    add-int/2addr v13, v10

    invoke-interface {v12}, Lcom/google/android/material/internal/FlexItem;->getMarginRight()I

    move-result v10

    add-int/2addr v13, v10

    add-int/2addr v8, v13

    iput v8, v2, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 885
    iget v8, v2, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v2, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    move v8, v3

    goto :goto_4

    :cond_8
    :goto_3
    move v1, v4

    move/from16 v4, p1

    :goto_4
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, p3

    move v4, v1

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_9
    move/from16 v4, p1

    if-eqz v7, :cond_a

    .line 888
    iget v1, v2, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    if-eq v0, v1, :cond_a

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 891
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/internal/FlexboxHelper;->expandFlexItems(ILcom/google/android/material/internal/FlexLine;IIZ)V

    :cond_a
    :goto_5
    return-void
.end method

.method private getChildHeightMeasureSpecInternal(ILcom/google/android/material/internal/FlexItem;I)I
    .locals 3

    .line 1004
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    .line 1007
    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    .line 1008
    invoke-interface {v2}, Lcom/google/android/material/internal/FlexContainer;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 1009
    invoke-interface {p2}, Lcom/google/android/material/internal/FlexItem;->getMarginTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 1010
    invoke-interface {p2}, Lcom/google/android/material/internal/FlexItem;->getMarginBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    .line 1012
    invoke-interface {p2}, Lcom/google/android/material/internal/FlexItem;->getHeight()I

    move-result p3

    .line 1005
    invoke-interface {v0, p1, v1, p3}, Lcom/google/android/material/internal/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result p1

    .line 1013
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    .line 1014
    invoke-interface {p2}, Lcom/google/android/material/internal/FlexItem;->getMaxHeight()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 1017
    invoke-interface {p2}, Lcom/google/android/material/internal/FlexItem;->getMaxHeight()I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 1016
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1018
    :cond_0
    invoke-interface {p2}, Lcom/google/android/material/internal/FlexItem;->getMinHeight()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 1021
    invoke-interface {p2}, Lcom/google/android/material/internal/FlexItem;->getMinHeight()I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 1020
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method private getFlexItemMarginEndCross(Lcom/google/android/material/internal/FlexItem;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 643
    invoke-interface {p1}, Lcom/google/android/material/internal/FlexItem;->getMarginBottom()I

    move-result p1

    return p1

    .line 646
    :cond_0
    invoke-interface {p1}, Lcom/google/android/material/internal/FlexItem;->getMarginRight()I

    move-result p1

    return p1
.end method

.method private getFlexItemMarginEndMain(Lcom/google/android/material/internal/FlexItem;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 605
    invoke-interface {p1}, Lcom/google/android/material/internal/FlexItem;->getMarginRight()I

    move-result p1

    return p1

    .line 608
    :cond_0
    invoke-interface {p1}, Lcom/google/android/material/internal/FlexItem;->getMarginBottom()I

    move-result p1

    return p1
.end method

.method private getFlexItemMarginStartCross(Lcom/google/android/material/internal/FlexItem;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 624
    invoke-interface {p1}, Lcom/google/android/material/internal/FlexItem;->getMarginTop()I

    move-result p1

    return p1

    .line 627
    :cond_0
    invoke-interface {p1}, Lcom/google/android/material/internal/FlexItem;->getMarginLeft()I

    move-result p1

    return p1
.end method

.method private getFlexItemMarginStartMain(Lcom/google/android/material/internal/FlexItem;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 586
    invoke-interface {p1}, Lcom/google/android/material/internal/FlexItem;->getMarginLeft()I

    move-result p1

    return p1

    .line 589
    :cond_0
    invoke-interface {p1}, Lcom/google/android/material/internal/FlexItem;->getMarginTop()I

    move-result p1

    return p1
.end method

.method private getFlexItemSizeCross(Lcom/google/android/material/internal/FlexItem;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 567
    invoke-interface {p1}, Lcom/google/android/material/internal/FlexItem;->getHeight()I

    move-result p1

    return p1

    .line 570
    :cond_0
    invoke-interface {p1}, Lcom/google/android/material/internal/FlexItem;->getWidth()I

    move-result p1

    return p1
.end method

.method private getFlexItemSizeMain(Lcom/google/android/material/internal/FlexItem;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 552
    invoke-interface {p1}, Lcom/google/android/material/internal/FlexItem;->getWidth()I

    move-result p1

    return p1

    .line 555
    :cond_0
    invoke-interface {p1}, Lcom/google/android/material/internal/FlexItem;->getHeight()I

    move-result p1

    return p1
.end method

.method private getPaddingEndCross(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 507
    iget-object p1, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/material/internal/FlexContainer;->getPaddingBottom()I

    move-result p1

    return p1

    .line 510
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/material/internal/FlexContainer;->getPaddingEnd()I

    move-result p1

    return p1
.end method

.method private getPaddingEndMain(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 479
    iget-object p1, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/material/internal/FlexContainer;->getPaddingEnd()I

    move-result p1

    return p1

    .line 482
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/material/internal/FlexContainer;->getPaddingBottom()I

    move-result p1

    return p1
.end method

.method private getPaddingStartCross(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 493
    iget-object p1, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/material/internal/FlexContainer;->getPaddingTop()I

    move-result p1

    return p1

    .line 496
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/material/internal/FlexContainer;->getPaddingStart()I

    move-result p1

    return p1
.end method

.method private getPaddingStartMain(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 465
    iget-object p1, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/material/internal/FlexContainer;->getPaddingStart()I

    move-result p1

    return p1

    .line 468
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/material/internal/FlexContainer;->getPaddingTop()I

    move-result p1

    return p1
.end method

.method private getViewMeasuredSizeCross(Landroid/view/View;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 537
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1

    .line 540
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    return p1
.end method

.method private getViewMeasuredSizeMain(Landroid/view/View;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 522
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    return p1

    .line 525
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method private isLastFlexItem(IILcom/google/android/material/internal/FlexLine;)Z
    .locals 1

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_0

    .line 689
    invoke-virtual {p3}, Lcom/google/android/material/internal/FlexLine;->getItemCountNotGone()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWrapRequired(Landroid/view/View;IIIILcom/google/android/material/internal/FlexItem;II)Z
    .locals 2

    .line 672
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getFlexWrap()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 675
    :cond_0
    invoke-interface {p6}, Lcom/google/android/material/internal/FlexItem;->isWrapBefore()Z

    move-result p6

    const/4 v0, 0x1

    if-eqz p6, :cond_1

    return v0

    :cond_1
    if-nez p2, :cond_2

    return v1

    .line 681
    :cond_2
    iget-object p2, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {p2, p1, p7, p8}, Lcom/google/android/material/internal/FlexContainer;->getDecorationLengthMainAxis(Landroid/view/View;II)I

    move-result p1

    if-lez p1, :cond_3

    add-int/2addr p5, p1

    :cond_3
    add-int/2addr p4, p5

    if-ge p3, p4, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private shrinkFlexItems(ILcom/google/android/material/internal/FlexLine;IIZ)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 911
    iget v0, v2, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 912
    iget v1, v2, Lcom/google/android/material/internal/FlexLine;->totalFlexShrink:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-lez v1, :cond_a

    iget v1, v2, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    if-le v3, v1, :cond_0

    goto/16 :goto_5

    .line 916
    :cond_0
    iget v1, v2, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v5, v2, Lcom/google/android/material/internal/FlexLine;->totalFlexShrink:F

    div-float/2addr v1, v5

    .line 918
    iget v5, v2, Lcom/google/android/material/internal/FlexLine;->dividerLengthInMainSize:I

    add-int v5, p4, v5

    iput v5, v2, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    if-nez p5, :cond_1

    const/high16 v5, -0x80000000

    .line 931
    iput v5, v2, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    :cond_1
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 933
    :goto_0
    iget v10, v2, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    if-ge v5, v10, :cond_9

    .line 934
    iget v10, v2, Lcom/google/android/material/internal/FlexLine;->firstIndex:I

    add-int/2addr v10, v5

    .line 935
    iget-object v11, v6, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v11, v10}, Lcom/google/android/material/internal/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 936
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_2

    goto/16 :goto_3

    .line 939
    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/google/android/material/internal/FlexItem;

    .line 942
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 943
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 944
    iget-object v15, v6, Lcom/google/android/material/internal/FlexboxHelper;->childrenFrozen:[Z

    aget-boolean v15, v15, v10

    if-nez v15, :cond_7

    invoke-interface {v12}, Lcom/google/android/material/internal/FlexItem;->getFlexShrink()F

    move-result v15

    cmpl-float v15, v15, v4

    if-lez v15, :cond_7

    int-to-float v13, v13

    .line 945
    invoke-interface {v12}, Lcom/google/android/material/internal/FlexItem;->getFlexShrink()F

    move-result v14

    mul-float v14, v14, v1

    sub-float/2addr v13, v14

    .line 946
    iget v14, v2, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    if-ne v5, v14, :cond_3

    add-float/2addr v13, v9

    const/4 v9, 0x0

    .line 950
    :cond_3
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 951
    invoke-interface {v12}, Lcom/google/android/material/internal/FlexItem;->getMinWidth()I

    move-result v4

    if-ge v14, v4, :cond_4

    .line 959
    invoke-interface {v12}, Lcom/google/android/material/internal/FlexItem;->getMinWidth()I

    move-result v14

    .line 960
    iget-object v4, v6, Lcom/google/android/material/internal/FlexboxHelper;->childrenFrozen:[Z

    aput-boolean v15, v4, v10

    .line 961
    iget v4, v2, Lcom/google/android/material/internal/FlexLine;->totalFlexShrink:F

    invoke-interface {v12}, Lcom/google/android/material/internal/FlexItem;->getFlexShrink()F

    move-result v7

    sub-float/2addr v4, v7

    iput v4, v2, Lcom/google/android/material/internal/FlexLine;->totalFlexShrink:F

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    int-to-float v4, v14

    sub-float/2addr v13, v4

    add-float/2addr v9, v13

    float-to-double v3, v9

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-double v15, v3, v16

    if-lez v15, :cond_5

    add-int/lit8 v14, v14, 0x1

    sub-float/2addr v9, v13

    goto :goto_1

    :cond_5
    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    cmpg-double v15, v3, v16

    if-gez v15, :cond_6

    add-int/lit8 v14, v14, -0x1

    add-float/2addr v9, v13

    .line 972
    :cond_6
    :goto_1
    iget v3, v2, Lcom/google/android/material/internal/FlexLine;->sumCrossSizeBefore:I

    move/from16 v4, p1

    .line 973
    invoke-direct {v6, v4, v12, v3}, Lcom/google/android/material/internal/FlexboxHelper;->getChildHeightMeasureSpecInternal(ILcom/google/android/material/internal/FlexItem;I)I

    move-result v3

    const/high16 v13, 0x40000000    # 2.0f

    .line 976
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 977
    invoke-virtual {v11, v13, v3}, Landroid/view/View;->measure(II)V

    .line 979
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 980
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 981
    iget-object v3, v6, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v3, v10, v11}, Lcom/google/android/material/internal/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    goto :goto_2

    :cond_7
    move/from16 v4, p1

    .line 987
    :goto_2
    invoke-interface {v12}, Lcom/google/android/material/internal/FlexItem;->getMarginTop()I

    move-result v3

    add-int/2addr v14, v3

    .line 988
    invoke-interface {v12}, Lcom/google/android/material/internal/FlexItem;->getMarginBottom()I

    move-result v3

    add-int/2addr v14, v3

    iget-object v3, v6, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    .line 989
    invoke-interface {v3, v11}, Lcom/google/android/material/internal/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v3

    add-int/2addr v14, v3

    .line 984
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 990
    iget v8, v2, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 991
    invoke-interface {v12}, Lcom/google/android/material/internal/FlexItem;->getMarginLeft()I

    move-result v10

    add-int/2addr v13, v10

    invoke-interface {v12}, Lcom/google/android/material/internal/FlexItem;->getMarginRight()I

    move-result v10

    add-int/2addr v13, v10

    add-int/2addr v8, v13

    iput v8, v2, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 992
    iget v8, v2, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v2, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    move v8, v3

    goto :goto_4

    :cond_8
    :goto_3
    move/from16 v4, p1

    :goto_4
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, p3

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_9
    move/from16 v4, p1

    if-eqz v7, :cond_a

    .line 995
    iget v1, v2, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    if-eq v0, v1, :cond_a

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 998
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/internal/FlexboxHelper;->shrinkFlexItems(ILcom/google/android/material/internal/FlexLine;IIZ)V

    :cond_a
    :goto_5
    return-void
.end method

.method private sortOrdersIntoReorderedIndices(ILjava/util/List;Landroid/util/SparseIntArray;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/material/internal/FlexboxHelper$Order;",
            ">;",
            "Landroid/util/SparseIntArray;",
            ")[I"
        }
    .end annotation

    .line 153
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 154
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->clear()V

    .line 155
    new-array p1, p1, [I

    .line 157
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/internal/FlexboxHelper$Order;

    .line 158
    iget v2, v1, Lcom/google/android/material/internal/FlexboxHelper$Order;->index:I

    aput v2, p1, v0

    .line 159
    iget v2, v1, Lcom/google/android/material/internal/FlexboxHelper$Order;->index:I

    iget v1, v1, Lcom/google/android/material/internal/FlexboxHelper$Order;->order:I

    invoke-virtual {p3, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private stretchViewVertically(Landroid/view/View;II)V
    .locals 2

    .line 1102
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/FlexItem;

    .line 1105
    invoke-interface {v0}, Lcom/google/android/material/internal/FlexItem;->getMarginTop()I

    move-result v1

    sub-int/2addr p2, v1

    .line 1106
    invoke-interface {v0}, Lcom/google/android/material/internal/FlexItem;->getMarginBottom()I

    move-result v1

    sub-int/2addr p2, v1

    iget-object v1, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    .line 1107
    invoke-interface {v1, p1}, Lcom/google/android/material/internal/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v1

    sub-int/2addr p2, v1

    .line 1108
    invoke-interface {v0}, Lcom/google/android/material/internal/FlexItem;->getMinHeight()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1109
    invoke-interface {v0}, Lcom/google/android/material/internal/FlexItem;->getMaxHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1110
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 1111
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1113
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1114
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 1116
    iget-object p2, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {p2, p3, p1}, Lcom/google/android/material/internal/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method calculateHorizontalFlexLines(Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;II)V
    .locals 8

    const v4, 0x7fffffff

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 173
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/internal/FlexboxHelper;->calculateFlexLines(Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    return-void
.end method

.method createReorderedIndices(Landroid/util/SparseIntArray;)[I
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getFlexItemCount()I

    move-result v0

    .line 109
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/FlexboxHelper;->createOrders(I)Ljava/util/List;

    move-result-object v1

    .line 110
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/internal/FlexboxHelper;->sortOrdersIntoReorderedIndices(ILjava/util/List;Landroid/util/SparseIntArray;)[I

    move-result-object p1

    return-object p1
.end method

.method createReorderedIndices(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Landroid/util/SparseIntArray;)[I
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getFlexItemCount()I

    move-result v0

    .line 76
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/FlexboxHelper;->createOrders(I)Ljava/util/List;

    move-result-object v1

    .line 77
    new-instance v2, Lcom/google/android/material/internal/FlexboxHelper$Order;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/material/internal/FlexboxHelper$Order;-><init>(Lcom/google/android/material/internal/FlexboxHelper$1;)V

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 78
    instance-of p1, p3, Lcom/google/android/material/internal/FlexItem;

    if-eqz p1, :cond_0

    .line 79
    check-cast p3, Lcom/google/android/material/internal/FlexItem;

    invoke-interface {p3}, Lcom/google/android/material/internal/FlexItem;->getOrder()I

    move-result p1

    iput p1, v2, Lcom/google/android/material/internal/FlexboxHelper$Order;->order:I

    goto :goto_0

    .line 81
    :cond_0
    iput v3, v2, Lcom/google/android/material/internal/FlexboxHelper$Order;->order:I

    :goto_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_3

    if-ne p2, v0, :cond_1

    goto :goto_2

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {p1}, Lcom/google/android/material/internal/FlexContainer;->getFlexItemCount()I

    move-result p1

    if-ge p2, p1, :cond_2

    .line 87
    iput p2, v2, Lcom/google/android/material/internal/FlexboxHelper$Order;->index:I

    :goto_1
    if-ge p2, v0, :cond_4

    .line 89
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/FlexboxHelper$Order;

    iget p3, p1, Lcom/google/android/material/internal/FlexboxHelper$Order;->index:I

    add-int/2addr p3, v3

    iput p3, p1, Lcom/google/android/material/internal/FlexboxHelper$Order;->index:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 94
    :cond_2
    iput v0, v2, Lcom/google/android/material/internal/FlexboxHelper$Order;->index:I

    goto :goto_3

    .line 85
    :cond_3
    :goto_2
    iput v0, v2, Lcom/google/android/material/internal/FlexboxHelper$Order;->index:I

    .line 96
    :cond_4
    :goto_3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v3

    .line 98
    invoke-direct {p0, v0, v1, p4}, Lcom/google/android/material/internal/FlexboxHelper;->sortOrdersIntoReorderedIndices(ILjava/util/List;Landroid/util/SparseIntArray;)[I

    move-result-object p1

    return-object p1
.end method

.method determineCrossSize(II)V
    .locals 9

    .line 1036
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1038
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1039
    iget-object v1, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/material/internal/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_4

    .line 1041
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getSumOfCrossSize()I

    move-result v0

    add-int/2addr v0, p2

    .line 1042
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 1043
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/FlexLine;

    sub-int/2addr p1, p2

    iput p1, v0, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    goto :goto_2

    .line 1045
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x2

    if-lt p2, v2, :cond_4

    if-ge v0, p1, :cond_4

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 1047
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 1049
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v3, p2, :cond_4

    .line 1050
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/internal/FlexLine;

    .line 1051
    iget v6, v5, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    int-to-float v6, v6

    add-float/2addr v6, p1

    .line 1052
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    if-ne v3, v7, :cond_1

    add-float/2addr v6, v2

    const/4 v2, 0x0

    .line 1056
    :cond_1
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v8, v7

    sub-float/2addr v6, v8

    add-float/2addr v2, v6

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v8, v2, v6

    if-lez v8, :cond_2

    add-int/lit8 v7, v7, 0x1

    sub-float/2addr v2, v6

    goto :goto_1

    :cond_2
    const/high16 v8, -0x40800000    # -1.0f

    cmpg-float v8, v2, v8

    if-gez v8, :cond_3

    add-int/lit8 v7, v7, -0x1

    add-float/2addr v2, v6

    .line 1065
    :cond_3
    :goto_1
    iput v7, v5, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method determineMainSize(II)V
    .locals 1

    const/4 v0, 0x0

    .line 739
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/FlexboxHelper;->determineMainSize(III)V

    return-void
.end method

.method isOrderChangedFromLastMeasurement(Landroid/util/SparseIntArray;)Z
    .locals 6

    .line 134
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getFlexItemCount()I

    move-result v0

    .line 135
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 139
    iget-object v4, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v4, v3}, Lcom/google/android/material/internal/FlexContainer;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 143
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/internal/FlexItem;

    .line 144
    invoke-interface {v4}, Lcom/google/android/material/internal/FlexItem;->getOrder()I

    move-result v4

    invoke-virtual {p1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_2

    return v2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method layoutSingleChildHorizontal(Landroid/view/View;IIII)V
    .locals 2

    .line 1133
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/FlexItem;

    .line 1134
    invoke-interface {v0}, Lcom/google/android/material/internal/FlexItem;->getMarginTop()I

    move-result v1

    add-int/2addr p3, v1

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexItem;->getMarginTop()I

    move-result v0

    add-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method stretchViews()V
    .locals 11

    .line 1073
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getFlexItemCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v0

    .line 1078
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    .line 1079
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/internal/FlexLine;

    .line 1080
    iget v5, v4, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    .line 1081
    iget v7, v4, Lcom/google/android/material/internal/FlexLine;->firstIndex:I

    add-int/2addr v7, v6

    .line 1082
    iget-object v8, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v8}, Lcom/google/android/material/internal/FlexContainer;->getFlexItemCount()I

    move-result v8

    if-lt v6, v8, :cond_1

    goto :goto_2

    .line 1085
    :cond_1
    iget-object v8, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v8, v7}, Lcom/google/android/material/internal/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1086
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_2

    goto :goto_2

    .line 1089
    :cond_2
    iget v9, v4, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    invoke-direct {p0, v8, v9, v7}, Lcom/google/android/material/internal/FlexboxHelper;->stretchViewVertically(Landroid/view/View;II)V

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
