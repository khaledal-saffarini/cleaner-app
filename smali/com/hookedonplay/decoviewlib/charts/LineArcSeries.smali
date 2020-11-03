.class public Lcom/hookedonplay/decoviewlib/charts/LineArcSeries;
.super Lcom/hookedonplay/decoviewlib/charts/ArcSeries;
.source "LineArcSeries.java"


# direct methods
.method public constructor <init>(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;-><init>(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;II)V

    return-void
.end method

.method private drawArcEdgeDetail(Landroid/graphics/Canvas;)V
    .locals 7

    .line 75
    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/charts/LineArcSeries;->getSeriesItem()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getEdgeDetail()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;

    .line 81
    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;->getEdgeType()Lcom/hookedonplay/decoviewlib/charts/EdgeDetail$EdgeType;

    move-result-object v2

    sget-object v3, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail$EdgeType;->EDGE_INNER:Lcom/hookedonplay/decoviewlib/charts/EdgeDetail$EdgeType;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 82
    :goto_1
    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;->getClipPath()Landroid/graphics/Path;

    move-result-object v3

    if-nez v3, :cond_3

    .line 83
    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;->getRatio()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/hookedonplay/decoviewlib/charts/LineArcSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v4}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getLineWidth()F

    move-result v4

    mul-float v3, v3, v4

    if-eqz v2, :cond_2

    neg-float v3, v3

    .line 88
    :cond_2
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 89
    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/hookedonplay/decoviewlib/charts/LineArcSeries;->mBoundsInset:Landroid/graphics/RectF;

    invoke-direct {v5, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 90
    invoke-virtual {v5, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 91
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 92
    invoke-virtual {v1, v4}, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;->setClipPath(Landroid/graphics/Path;)V

    .line 94
    :cond_3
    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;->getClipPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;->getColor()I

    move-result v1

    if-eqz v2, :cond_4

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    goto :goto_2

    :cond_4
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    :goto_2
    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/hookedonplay/decoviewlib/charts/LineArcSeries;->drawClippedArc(Landroid/graphics/Canvas;Landroid/graphics/Path;ILandroid/graphics/Region$Op;)V

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z
    .locals 1

    .line 46
    invoke-super {p0, p1, p2}, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 50
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hookedonplay/decoviewlib/charts/LineArcSeries;->drawArc(Landroid/graphics/Canvas;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/hookedonplay/decoviewlib/charts/LineArcSeries;->drawArcEdgeDetail(Landroid/graphics/Canvas;)V

    return v0
.end method

.method protected drawArc(Landroid/graphics/Canvas;)V
    .locals 7

    .line 56
    iget v0, p0, Lcom/hookedonplay/decoviewlib/charts/LineArcSeries;->mArcAngleSweep:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/hookedonplay/decoviewlib/charts/LineArcSeries;->mBoundsInset:Landroid/graphics/RectF;

    iget v3, p0, Lcom/hookedonplay/decoviewlib/charts/LineArcSeries;->mArcAngleStart:F

    iget v4, p0, Lcom/hookedonplay/decoviewlib/charts/LineArcSeries;->mArcAngleSweep:F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/hookedonplay/decoviewlib/charts/LineArcSeries;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected drawClippedArc(Landroid/graphics/Canvas;Landroid/graphics/Path;ILandroid/graphics/Region$Op;)V
    .locals 0

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 109
    :try_start_0
    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    iget-object p2, p0, Lcom/hookedonplay/decoviewlib/charts/LineArcSeries;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    .line 117
    iget-object p4, p0, Lcom/hookedonplay/decoviewlib/charts/LineArcSeries;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    invoke-virtual {p0, p1}, Lcom/hookedonplay/decoviewlib/charts/LineArcSeries;->drawArc(Landroid/graphics/Canvas;)V

    .line 119
    iget-object p3, p0, Lcom/hookedonplay/decoviewlib/charts/LineArcSeries;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 111
    :catch_0
    iget-object p2, p0, Lcom/hookedonplay/decoviewlib/charts/LineArcSeries;->TAG:Ljava/lang/String;

    const-string p3, "clipPath unavailable on API 11 - 17 without disabling hardware acceleration. (EdgeDetail functionality requires clipPath). Call DecoView.enableCompatibilityMode() to enable"

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
