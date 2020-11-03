.class public abstract Lcom/hookedonplay/decoviewlib/charts/ArcSeries;
.super Lcom/hookedonplay/decoviewlib/charts/ChartSeries;
.source "ArcSeries.java"


# instance fields
.field protected mArcAngleStart:F

.field protected mArcAngleSweep:F


# direct methods
.method constructor <init>(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;-><init>(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;II)V

    return-void
.end method


# virtual methods
.method protected applyGradientToPaint()V
    .locals 7

    .line 78
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getSecondaryColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget v0, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mAngleSweep:I

    const/16 v1, 0x168

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ge v0, v1, :cond_0

    new-array v0, v5, [I

    .line 87
    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getColor()I

    move-result v1

    aput v1, v0, v4

    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getSecondaryColor()I

    move-result v1

    aput v1, v0, v3

    new-array v1, v5, [F

    .line 88
    fill-array-data v1, :array_0

    .line 89
    new-instance v3, Landroid/graphics/SweepGradient;

    iget-object v4, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-direct {v3, v4, v5, v0, v1}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 90
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 91
    iget v1, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mAngleStart:I

    int-to-float v1, v1

    iget v4, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mAngleSweep:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v4, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 92
    invoke-virtual {v3, v0}, Landroid/graphics/SweepGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 98
    iget-object v6, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v6}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getSecondaryColor()I

    move-result v6

    aput v6, v1, v4

    iget-object v6, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v6}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getColor()I

    move-result v6

    aput v6, v1, v3

    iget-object v6, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v6}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getSecondaryColor()I

    move-result v6

    aput v6, v1, v5

    new-array v0, v0, [F

    const/4 v6, 0x0

    aput v6, v0, v4

    const/high16 v4, 0x3f000000    # 0.5f

    .line 99
    iget v6, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mAngleSweep:I

    int-to-float v6, v6

    div-float/2addr v6, v2

    mul-float v6, v6, v4

    aput v6, v0, v3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v5

    .line 100
    new-instance v3, Landroid/graphics/SweepGradient;

    iget-object v2, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v4, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-direct {v3, v2, v4, v1, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z
    .locals 6

    .line 55
    invoke-super {p0, p1, p2}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    .line 59
    :cond_0
    iget v1, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mPositionStart:F

    iget v2, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mPositionEnd:F

    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getMinValue()F

    move-result v3

    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getMaxValue()F

    move-result v4

    iget v5, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mPercentComplete:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->calcCurrentPosition(FFFFF)F

    move-result p1

    .line 60
    iget v0, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mAngleSweep:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->verifyMinSweepAngle(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->adjustSweepDirection(F)F

    move-result p1

    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mArcAngleSweep:F

    .line 61
    iget p1, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mAngleStart:I

    int-to-float p1, p1

    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mArcAngleStart:F

    .line 63
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getDrawAsPoint()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 64
    iget p1, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mArcAngleSweep:F

    invoke-virtual {p0, p1}, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->adjustDrawPointAngle(F)F

    move-result p1

    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mArcAngleStart:F

    .line 65
    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->getMinSweepAngle()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->adjustSweepDirection(F)F

    move-result p1

    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mArcAngleSweep:F

    goto :goto_0

    .line 66
    :cond_1
    iget p1, p0, Lcom/hookedonplay/decoviewlib/charts/ArcSeries;->mArcAngleSweep:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    return p2

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method abstract drawArc(Landroid/graphics/Canvas;)V
.end method
