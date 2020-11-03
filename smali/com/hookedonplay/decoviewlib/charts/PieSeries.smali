.class public Lcom/hookedonplay/decoviewlib/charts/PieSeries;
.super Lcom/hookedonplay/decoviewlib/charts/ArcSeries;
.source "PieSeries.java"


# direct methods
.method public constructor <init>(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;II)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;-><init>(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;II)V

    return-void
.end method

.method private drawArcEdgeDetail(Landroid/graphics/Canvas;)V
    .locals 7

    .line 70
    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/charts/PieSeries;->getSeriesItem()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getEdgeDetail()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 75
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

    .line 76
    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;->getEdgeType()Lcom/hookedonplay/decoviewlib/charts/EdgeDetail$EdgeType;

    move-result-object v2

    sget-object v3, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail$EdgeType;->EDGE_INNER:Lcom/hookedonplay/decoviewlib/charts/EdgeDetail$EdgeType;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 79
    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/PieSeries;->TAG:Ljava/lang/String;

    const-string v2, "EDGE_INNER Not Yet Implemented for pie chart"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;->getClipPath()Landroid/graphics/Path;

    move-result-object v3

    if-nez v3, :cond_3

    .line 83
    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;->getRatio()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/hookedonplay/decoviewlib/charts/PieSeries;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    mul-float v3, v3, v4

    .line 85
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 86
    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/hookedonplay/decoviewlib/charts/PieSeries;->mBoundsInset:Landroid/graphics/RectF;

    invoke-direct {v5, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 87
    invoke-virtual {v5, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 88
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 89
    invoke-virtual {v1, v4}, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;->setClipPath(Landroid/graphics/Path;)V

    .line 92
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
    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/hookedonplay/decoviewlib/charts/PieSeries;->drawClippedArc(Landroid/graphics/Canvas;Landroid/graphics/Path;ILandroid/graphics/Region$Op;)V

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z
    .locals 1

    .line 43
    invoke-super {p0, p1, p2}, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 47
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hookedonplay/decoviewlib/charts/PieSeries;->drawArc(Landroid/graphics/Canvas;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/hookedonplay/decoviewlib/charts/PieSeries;->drawArcEdgeDetail(Landroid/graphics/Canvas;)V

    return v0
.end method

.method protected drawArc(Landroid/graphics/Canvas;)V
    .locals 6

    .line 54
    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/PieSeries;->mBoundsInset:Landroid/graphics/RectF;

    iget v2, p0, Lcom/hookedonplay/decoviewlib/charts/PieSeries;->mArcAngleStart:F

    iget v3, p0, Lcom/hookedonplay/decoviewlib/charts/PieSeries;->mArcAngleSweep:F

    iget-object v5, p0, Lcom/hookedonplay/decoviewlib/charts/PieSeries;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected drawClippedArc(Landroid/graphics/Canvas;Landroid/graphics/Path;ILandroid/graphics/Region$Op;)V
    .locals 1

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 107
    :try_start_0
    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    iget-object p2, p0, Lcom/hookedonplay/decoviewlib/charts/PieSeries;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    .line 115
    iget-object p4, p0, Lcom/hookedonplay/decoviewlib/charts/PieSeries;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p4

    .line 116
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/PieSeries;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    iget-object p3, p0, Lcom/hookedonplay/decoviewlib/charts/PieSeries;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 118
    invoke-virtual {p0, p1}, Lcom/hookedonplay/decoviewlib/charts/PieSeries;->drawArc(Landroid/graphics/Canvas;)V

    .line 119
    iget-object p3, p0, Lcom/hookedonplay/decoviewlib/charts/PieSeries;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object p2, p0, Lcom/hookedonplay/decoviewlib/charts/PieSeries;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 109
    :catch_0
    iget-object p2, p0, Lcom/hookedonplay/decoviewlib/charts/PieSeries;->TAG:Ljava/lang/String;

    const-string p3, "clipPath unavailable on API 11 - 17 without disabling hardware acceleration. (EdgeDetail functionality requires clipPath). Call DecoView.enableCompatibilityMode() to enable"

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
