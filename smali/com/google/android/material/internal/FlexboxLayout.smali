.class public Lcom/google/android/material/internal/FlexboxLayout;
.super Landroid/view/ViewGroup;
.source "FlexboxLayout.java"

# interfaces
.implements Lcom/google/android/material/internal/FlexContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;,
        Lcom/google/android/material/internal/FlexboxLayout$DividerMode;
    }
.end annotation


# static fields
.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I


# instance fields
.field private dividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

.field private dividerDrawableVertical:Landroid/graphics/drawable/Drawable;

.field private dividerHorizontalHeight:I

.field private dividerVerticalWidth:I

.field private flexLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/internal/FlexLine;",
            ">;"
        }
    .end annotation
.end field

.field private flexLinesResult:Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;

.field private flexWrap:I

.field private flexboxHelper:Lcom/google/android/material/internal/FlexboxHelper;

.field private orderCache:Landroid/util/SparseIntArray;

.field private reorderedIndices:[I

.field private showDividerHorizontal:I

.field private showDividerVertical:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 173
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 177
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 158
    new-instance p1, Lcom/google/android/material/internal/FlexboxHelper;

    invoke-direct {p1, p0}, Lcom/google/android/material/internal/FlexboxHelper;-><init>(Lcom/google/android/material/internal/FlexContainer;)V

    iput-object p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexboxHelper:Lcom/google/android/material/internal/FlexboxHelper;

    .line 160
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    .line 166
    new-instance p1, Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;

    invoke-direct {p1}, Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLinesResult:Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;

    return-void
.end method

.method private allFlexLinesAreDummyBefore(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 898
    iget-object v2, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/FlexLine;

    invoke-virtual {v2}, Lcom/google/android/material/internal/FlexLine;->getItemCountNotGone()I

    move-result v2

    if-lez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private allViewsAreGoneBefore(II)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    if-gt v1, p2, :cond_1

    sub-int v2, p1, v1

    .line 863
    invoke-virtual {p0, v2}, Lcom/google/android/material/internal/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 864
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private drawDividersHorizontal(Landroid/graphics/Canvas;Z)V
    .locals 12

    .line 500
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->getPaddingLeft()I

    move-result v0

    .line 501
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->getPaddingRight()I

    move-result v1

    .line 502
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int/2addr v2, v0

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 503
    iget-object v3, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_8

    .line 504
    iget-object v5, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/internal/FlexLine;

    const/4 v6, 0x0

    .line 505
    :goto_1
    iget v7, v5, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    if-ge v6, v7, :cond_5

    .line 506
    iget v7, v5, Lcom/google/android/material/internal/FlexLine;->firstIndex:I

    add-int/2addr v7, v6

    .line 507
    invoke-virtual {p0, v7}, Lcom/google/android/material/internal/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 508
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    goto :goto_4

    .line 511
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;

    .line 514
    invoke-direct {p0, v7, v6}, Lcom/google/android/material/internal/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz p2, :cond_1

    .line 517
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v7

    iget v10, v9, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v10

    goto :goto_2

    .line 519
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v10, v9, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v7, v10

    iget v10, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    sub-int/2addr v7, v10

    .line 522
    :goto_2
    iget v10, v5, Lcom/google/android/material/internal/FlexLine;->top:I

    iget v11, v5, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    invoke-direct {p0, p1, v7, v10, v11}, Lcom/google/android/material/internal/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    .line 526
    :cond_2
    iget v7, v5, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_4

    .line 527
    iget v7, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerVertical:I

    and-int/lit8 v7, v7, 0x4

    if-lez v7, :cond_4

    if-eqz p2, :cond_3

    .line 530
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v8, v9, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    sub-int/2addr v7, v8

    goto :goto_3

    .line 532
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v7

    iget v8, v9, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    .line 535
    :goto_3
    iget v8, v5, Lcom/google/android/material/internal/FlexLine;->top:I

    iget v9, v5, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/google/android/material/internal/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 541
    :cond_5
    invoke-direct {p0, v4}, Lcom/google/android/material/internal/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 542
    iget v6, v5, Lcom/google/android/material/internal/FlexLine;->top:I

    iget v7, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerHorizontalHeight:I

    sub-int/2addr v6, v7

    .line 543
    invoke-direct {p0, p1, v0, v6, v2}, Lcom/google/android/material/internal/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    .line 546
    :cond_6
    invoke-direct {p0, v4}, Lcom/google/android/material/internal/FlexboxLayout;->hasEndDividerAfterFlexLine(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 547
    iget v6, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerHorizontal:I

    and-int/lit8 v6, v6, 0x4

    if-lez v6, :cond_7

    .line 548
    iget v5, v5, Lcom/google/android/material/internal/FlexLine;->bottom:I

    .line 549
    invoke-direct {p0, p1, v0, v5, v2}, Lcom/google/android/material/internal/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private drawHorizontalDivider(Landroid/graphics/Canvas;III)V
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    add-int/2addr p4, p2

    .line 567
    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerHorizontalHeight:I

    add-int/2addr v1, p3

    invoke-virtual {v0, p2, p3, p4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 568
    iget-object p2, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawVerticalDivider(Landroid/graphics/Canvas;III)V
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 559
    :cond_0
    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    add-int/2addr v1, p2

    add-int/2addr p4, p3

    invoke-virtual {v0, p2, p3, v1, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 560
    iget-object p2, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private hasDividerBeforeChildAtAlongMainAxis(II)Z
    .locals 1

    .line 846
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/FlexboxLayout;->allViewsAreGoneBefore(II)Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 847
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 848
    iget p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerVertical:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2

    .line 850
    :cond_1
    iget p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerHorizontal:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    :cond_2
    return p2

    .line 853
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 854
    iget p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerVertical:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    :cond_4
    return p2

    .line 856
    :cond_5
    iget p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerHorizontal:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_6

    const/4 p2, 0x1

    :cond_6
    return p2
.end method

.method private hasDividerBeforeFlexLine(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_7

    .line 878
    iget-object v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 881
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/FlexboxLayout;->allFlexLinesAreDummyBefore(I)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 882
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 883
    iget p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerHorizontal:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 885
    :cond_2
    iget p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerVertical:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    .line 888
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 889
    iget p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerHorizontal:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0

    .line 891
    :cond_6
    iget p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerVertical:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    :goto_0
    return v0
.end method

.method private hasEndDividerAfterFlexLine(I)Z
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_5

    .line 912
    iget-object v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    add-int/2addr p1, v1

    .line 916
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 917
    iget-object v2, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/FlexLine;

    invoke-virtual {v2}, Lcom/google/android/material/internal/FlexLine;->getItemCountNotGone()I

    move-result v2

    if-lez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 921
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 922
    iget p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerHorizontal:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    .line 924
    :cond_4
    iget p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerVertical:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    :goto_1
    return v0
.end method

.method private layoutHorizontal(ZII)V
    .locals 23

    move-object/from16 v0, p0

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlexboxLayout;->getPaddingLeft()I

    move-result v1

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlexboxLayout;->getPaddingRight()I

    move-result v2

    sub-int v3, p3, p2

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlexboxLayout;->getPaddingTop()I

    move-result v4

    .line 410
    iget-object v5, v0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_8

    .line 411
    iget-object v8, v0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/internal/FlexLine;

    .line 412
    invoke-direct {v0, v7}, Lcom/google/android/material/internal/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 413
    iget v9, v0, Lcom/google/android/material/internal/FlexboxLayout;->dividerHorizontalHeight:I

    add-int/2addr v4, v9

    :cond_0
    int-to-float v9, v1

    sub-int v10, v3, v2

    int-to-float v10, v10

    const/4 v11, 0x0

    .line 418
    invoke-static {v11, v11}, Ljava/lang/Math;->max(FF)F

    move-result v15

    const/4 v14, 0x0

    .line 420
    :goto_1
    iget v11, v8, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    if-ge v14, v11, :cond_7

    .line 421
    iget v11, v8, Lcom/google/android/material/internal/FlexLine;->firstIndex:I

    add-int/2addr v11, v14

    .line 422
    invoke-virtual {v0, v11}, Lcom/google/android/material/internal/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_6

    .line 423
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_1

    goto/16 :goto_6

    .line 426
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;

    .line 427
    iget v12, v13, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->leftMargin:I

    int-to-float v12, v12

    add-float/2addr v9, v12

    .line 428
    iget v12, v13, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->rightMargin:I

    int-to-float v12, v12

    sub-float/2addr v10, v12

    .line 431
    invoke-direct {v0, v11, v14}, Lcom/google/android/material/internal/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 432
    iget v11, v0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    int-to-float v12, v11

    add-float/2addr v9, v12

    sub-float/2addr v10, v12

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    goto :goto_2

    :cond_2
    move/from16 v17, v9

    move/from16 v18, v10

    const/16 v19, 0x0

    .line 436
    :goto_2
    iget v9, v8, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ne v14, v9, :cond_3

    iget v9, v0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerVertical:I

    and-int/lit8 v9, v9, 0x4

    if-lez v9, :cond_3

    .line 437
    iget v9, v0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    move/from16 v20, v9

    goto :goto_3

    :cond_3
    const/16 v20, 0x0

    :goto_3
    if-eqz p1, :cond_4

    .line 441
    iget-object v9, v0, Lcom/google/android/material/internal/FlexboxLayout;->flexboxHelper:Lcom/google/android/material/internal/FlexboxHelper;

    .line 443
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int v11, v10, v11

    .line 445
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v21

    .line 446
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int v22, v4, v10

    move-object/from16 v10, v16

    move v12, v4

    move-object v6, v13

    move/from16 v13, v21

    move/from16 v21, v14

    move/from16 v14, v22

    .line 441
    invoke-virtual/range {v9 .. v14}, Lcom/google/android/material/internal/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;IIII)V

    goto :goto_4

    :cond_4
    move-object v6, v13

    move/from16 v21, v14

    .line 448
    iget-object v9, v0, Lcom/google/android/material/internal/FlexboxLayout;->flexboxHelper:Lcom/google/android/material/internal/FlexboxHelper;

    .line 450
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 452
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int v13, v10, v12

    .line 453
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int v14, v4, v10

    move-object/from16 v10, v16

    move v12, v4

    .line 448
    invoke-virtual/range {v9 .. v14}, Lcom/google/android/material/internal/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;IIII)V

    .line 455
    :goto_4
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v15

    iget v10, v6, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->rightMargin:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    add-float v17, v17, v9

    .line 456
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v15

    iget v6, v6, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->leftMargin:I

    int-to-float v6, v6

    add-float/2addr v9, v6

    sub-float v18, v18, v9

    if-eqz p1, :cond_5

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v9, v8

    move-object/from16 v10, v16

    move/from16 v11, v20

    move/from16 v13, v19

    .line 459
    invoke-virtual/range {v9 .. v14}, Lcom/google/android/material/internal/FlexLine;->updatePositionFromView(Landroid/view/View;IIII)V

    goto :goto_5

    :cond_5
    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v9, v8

    move-object/from16 v10, v16

    move/from16 v11, v19

    move/from16 v13, v20

    .line 466
    invoke-virtual/range {v9 .. v14}, Lcom/google/android/material/internal/FlexLine;->updatePositionFromView(Landroid/view/View;IIII)V

    :goto_5
    move/from16 v9, v17

    move/from16 v10, v18

    goto :goto_7

    :cond_6
    :goto_6
    move/from16 v21, v14

    :goto_7
    add-int/lit8 v14, v21, 0x1

    goto/16 :goto_1

    .line 474
    :cond_7
    iget v6, v8, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    add-int/2addr v4, v6

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private measureHorizontal(II)V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 248
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLinesResult:Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;

    invoke-virtual {v0}, Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;->reset()V

    .line 249
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexboxHelper:Lcom/google/android/material/internal/FlexboxHelper;

    iget-object v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLinesResult:Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/material/internal/FlexboxHelper;->calculateHorizontalFlexLines(Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;II)V

    .line 251
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLinesResult:Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;

    iget-object v0, v0, Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;->flexLines:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    .line 253
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexboxHelper:Lcom/google/android/material/internal/FlexboxHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/internal/FlexboxHelper;->determineMainSize(II)V

    .line 255
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexboxHelper:Lcom/google/android/material/internal/FlexboxHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/google/android/material/internal/FlexboxHelper;->determineCrossSize(II)V

    .line 258
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexboxHelper:Lcom/google/android/material/internal/FlexboxHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/FlexboxHelper;->stretchViews()V

    .line 259
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLinesResult:Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;

    iget v0, v0, Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;->childState:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/FlexboxLayout;->setMeasuredDimensionForFlex(III)V

    return-void
.end method

.method private setMeasuredDimensionForFlex(III)V
    .locals 9

    .line 272
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 273
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 274
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 275
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 276
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->getSumOfCrossSize()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    .line 277
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->getLargestMainSize()I

    move-result v5

    const/high16 v6, 0x1000000

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    if-eq v0, v8, :cond_3

    if-eqz v0, :cond_2

    if-ne v0, v7, :cond_1

    if-ge v1, v5, :cond_0

    .line 283
    invoke-static {p3, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p3

    .line 285
    :cond_0
    invoke-static {v1, p1, p3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    goto :goto_1

    .line 304
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown width mode is set: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 300
    :cond_2
    invoke-static {v5, p1, p3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    goto :goto_1

    :cond_3
    if-ge v1, v5, :cond_4

    .line 290
    invoke-static {p3, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p3

    goto :goto_0

    :cond_4
    move v1, v5

    .line 294
    :goto_0
    invoke-static {v1, p1, p3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    :goto_1
    const/16 v0, 0x100

    if-eq v2, v8, :cond_8

    if-eqz v2, :cond_7

    if-ne v2, v7, :cond_6

    if-ge v3, v4, :cond_5

    .line 311
    invoke-static {p3, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p3

    .line 314
    :cond_5
    invoke-static {v3, p2, p3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    goto :goto_3

    .line 335
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown height mode is set: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 331
    :cond_7
    invoke-static {v4, p2, p3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    goto :goto_3

    :cond_8
    if-ge v3, v4, :cond_9

    .line 320
    invoke-static {p3, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p3

    goto :goto_2

    :cond_9
    move v3, v4

    .line 325
    :goto_2
    invoke-static {v3, p2, p3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 337
    :goto_3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/internal/FlexboxLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method private setWillNotDrawFlag()V
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 832
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/FlexboxLayout;->setWillNotDraw(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 834
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/FlexboxLayout;->setWillNotDraw(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->orderCache:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->getChildCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->orderCache:Landroid/util/SparseIntArray;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexboxHelper:Lcom/google/android/material/internal/FlexboxHelper;

    iget-object v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->orderCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/material/internal/FlexboxHelper;->createReorderedIndices(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Landroid/util/SparseIntArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->reorderedIndices:[I

    .line 233
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 573
    instance-of p1, p1, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;

    return p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/FlexboxLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 583
    instance-of v0, p1, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 584
    new-instance v0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;

    check-cast p1, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;-><init>(Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;)V

    return-object v0

    .line 585
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 586
    new-instance v0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 588
    :cond_1
    new-instance v0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;
    .locals 2

    .line 578
    new-instance v0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getChildHeightMeasureSpec(III)I
    .locals 0

    .line 675
    invoke-static {p1, p2, p3}, Lcom/google/android/material/internal/FlexboxLayout;->getChildMeasureSpec(III)I

    move-result p1

    return p1
.end method

.method public getChildWidthMeasureSpec(III)I
    .locals 0

    .line 670
    invoke-static {p1, p2, p3}, Lcom/google/android/material/internal/FlexboxLayout;->getChildMeasureSpec(III)I

    move-result p1

    return p1
.end method

.method public getDecorationLengthCrossAxis(Landroid/view/View;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getDecorationLengthMainAxis(Landroid/view/View;II)I
    .locals 1

    .line 626
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 627
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/internal/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 628
    iget p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    add-int/2addr v0, p1

    .line 630
    :cond_0
    iget p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerVertical:I

    and-int/lit8 p1, p1, 0x4

    if-lez p1, :cond_3

    .line 631
    iget p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    goto :goto_0

    .line 634
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/internal/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 635
    iget p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerHorizontalHeight:I

    add-int/2addr v0, p1

    .line 637
    :cond_2
    iget p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerHorizontal:I

    and-int/lit8 p1, p1, 0x4

    if-lez p1, :cond_3

    .line 638
    iget p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerHorizontalHeight:I

    :goto_0
    add-int/2addr v0, p1

    :cond_3
    return v0
.end method

.method public getDividerDrawableHorizontal()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerDrawableVertical()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getFlexItemAt(I)Landroid/view/View;
    .locals 0

    .line 200
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/FlexboxLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getFlexItemCount()I
    .locals 1

    .line 195
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getFlexLines()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/material/internal/FlexLine;",
            ">;"
        }
    .end annotation

    .line 613
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 614
    iget-object v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/FlexLine;

    .line 615
    invoke-virtual {v2}, Lcom/google/android/material/internal/FlexLine;->getItemCountNotGone()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 618
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getFlexLinesInternal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/material/internal/FlexLine;",
            ">;"
        }
    .end annotation

    .line 699
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    return-object v0
.end method

.method public getFlexWrap()I
    .locals 1

    .line 594
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexWrap:I

    return v0
.end method

.method public getLargestMainSize()I
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/high16 v1, -0x80000000

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/FlexLine;

    .line 344
    iget v2, v2, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getReorderedChildAt(I)Landroid/view/View;
    .locals 2

    if-ltz p1, :cond_1

    .line 212
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->reorderedIndices:[I

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    aget p1, v0, p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/FlexboxLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getReorderedFlexItemAt(I)Landroid/view/View;
    .locals 0

    .line 220
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getSumOfCrossSize()I
    .locals 5

    .line 352
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 353
    iget-object v3, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/internal/FlexLine;

    .line 356
    invoke-direct {p0, v1}, Lcom/google/android/material/internal/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 358
    iget v4, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerHorizontalHeight:I

    goto :goto_1

    .line 360
    :cond_0
    iget v4, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    :goto_1
    add-int/2addr v2, v4

    .line 365
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/android/material/internal/FlexboxLayout;->hasEndDividerAfterFlexLine(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 366
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 367
    iget v4, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerHorizontalHeight:I

    goto :goto_2

    .line 369
    :cond_2
    iget v4, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    :goto_2
    add-int/2addr v2, v4

    .line 372
    :cond_3
    iget v3, v3, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public isMainAxisDirectionHorizontal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 483
    :cond_0
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerHorizontal:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerVertical:I

    if-nez v0, :cond_1

    return-void

    .line 487
    :cond_1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 489
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/internal/FlexboxLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 384
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 386
    :goto_0
    invoke-direct {p0, p3, p2, p4}, Lcom/google/android/material/internal/FlexboxLayout;->layoutHorizontal(ZII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->orderCache:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->getChildCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->orderCache:Landroid/util/SparseIntArray;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexboxHelper:Lcom/google/android/material/internal/FlexboxHelper;

    iget-object v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->orderCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/FlexboxHelper;->isOrderChangedFromLastMeasurement(Landroid/util/SparseIntArray;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexboxHelper:Lcom/google/android/material/internal/FlexboxHelper;

    iget-object v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->orderCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/FlexboxHelper;->createReorderedIndices(Landroid/util/SparseIntArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->reorderedIndices:[I

    .line 190
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/FlexboxLayout;->measureHorizontal(II)V

    return-void
.end method

.method public onNewFlexItemAdded(Landroid/view/View;IILcom/google/android/material/internal/FlexLine;)V
    .locals 0

    .line 681
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/internal/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 682
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 683
    iget p1, p4, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    iget p2, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    add-int/2addr p1, p2

    iput p1, p4, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 684
    iget p1, p4, Lcom/google/android/material/internal/FlexLine;->dividerLengthInMainSize:I

    iget p2, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    add-int/2addr p1, p2

    iput p1, p4, Lcom/google/android/material/internal/FlexLine;->dividerLengthInMainSize:I

    goto :goto_0

    .line 686
    :cond_0
    iget p1, p4, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    iget p2, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerHorizontalHeight:I

    add-int/2addr p1, p2

    iput p1, p4, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 687
    iget p1, p4, Lcom/google/android/material/internal/FlexLine;->dividerLengthInMainSize:I

    iget p2, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerHorizontalHeight:I

    add-int/2addr p1, p2

    iput p1, p4, Lcom/google/android/material/internal/FlexLine;->dividerLengthInMainSize:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onNewFlexLineAdded(Lcom/google/android/material/internal/FlexLine;)V
    .locals 2

    .line 655
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerVertical:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_1

    .line 657
    iget v0, p1, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 658
    iget v0, p1, Lcom/google/android/material/internal/FlexLine;->dividerLengthInMainSize:I

    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/google/android/material/internal/FlexLine;->dividerLengthInMainSize:I

    goto :goto_0

    .line 661
    :cond_0
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerHorizontal:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_1

    .line 662
    iget v0, p1, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerHorizontalHeight:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 663
    iget v0, p1, Lcom/google/android/material/internal/FlexLine;->dividerLengthInMainSize:I

    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerHorizontalHeight:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/google/android/material/internal/FlexLine;->dividerLengthInMainSize:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 737
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/FlexboxLayout;->setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V

    .line 738
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/FlexboxLayout;->setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 753
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 755
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerHorizontalHeight:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 757
    iput p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerHorizontalHeight:I

    .line 759
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/internal/FlexboxLayout;->setWillNotDrawFlag()V

    .line 760
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->requestLayout()V

    return-void
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 775
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 777
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 779
    iput p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    .line 781
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/internal/FlexboxLayout;->setWillNotDrawFlag()V

    .line 782
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->requestLayout()V

    return-void
.end method

.method public setFlexLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/internal/FlexLine;",
            ">;)V"
        }
    .end annotation

    .line 694
    iput-object p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    return-void
.end method

.method public setFlexWrap(I)V
    .locals 1

    .line 599
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexWrap:I

    if-eq v0, p1, :cond_0

    .line 600
    iput p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexWrap:I

    .line 601
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDivider(I)V
    .locals 0

    .line 796
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/FlexboxLayout;->setShowDividerVertical(I)V

    .line 797
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/FlexboxLayout;->setShowDividerHorizontal(I)V

    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .locals 1

    .line 824
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerHorizontal:I

    if-eq p1, v0, :cond_0

    .line 825
    iput p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerHorizontal:I

    .line 826
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDividerVertical(I)V
    .locals 1

    .line 809
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerVertical:I

    if-eq p1, v0, :cond_0

    .line 810
    iput p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerVertical:I

    .line 811
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public updateViewCache(ILandroid/view/View;)V
    .locals 0

    return-void
.end method
