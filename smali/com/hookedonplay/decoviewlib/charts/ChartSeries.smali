.class public abstract Lcom/hookedonplay/decoviewlib/charts/ChartSeries;
.super Ljava/lang/Object;
.source "ChartSeries.java"


# static fields
.field private static final MIN_SWEEP_ANGLE:F = 0.1f

.field private static final MIN_SWEEP_ANGLE_FLAT:F = 0.1f

.field private static final MIN_SWEEP_ANGLE_NONE:F

.field private static final MIN_SWEEP_ANGLE_PIE:F


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected mAngleStart:I

.field protected mAngleSweep:I

.field protected mBounds:Landroid/graphics/RectF;

.field protected mBoundsInset:Landroid/graphics/RectF;

.field private mColorAnimate:Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;

.field protected mDrawMode:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

.field protected mEffect:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;

.field private mEventCurrent:Lcom/hookedonplay/decoviewlib/events/DecoEvent;

.field private mIsPaused:Z

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPercentComplete:F

.field protected mPositionCurrentEnd:F

.field protected mPositionEnd:F

.field protected mPositionStart:F

.field protected final mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

.field private mValueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

.field private mVisible:Z


# direct methods
.method constructor <init>(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;II)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->TAG:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 70
    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPercentComplete:F

    const/16 v0, 0xb4

    .line 82
    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mAngleStart:I

    const/16 v0, 0x168

    .line 86
    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mAngleSweep:I

    .line 126
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    .line 127
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getInitialVisibility()Z

    move-result p1

    iput-boolean p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mVisible:Z

    .line 128
    invoke-virtual {p0, p2, p3}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->setupView(II)V

    .line 129
    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->reset()V

    return-void
.end method

.method static synthetic access$002(Lcom/hookedonplay/decoviewlib/charts/ChartSeries;Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;)Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mColorAnimate:Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;

    return-object p1
.end method

.method static synthetic access$102(Lcom/hookedonplay/decoviewlib/charts/ChartSeries;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mVisible:Z

    return p1
.end method


# virtual methods
.method protected adjustDrawPointAngle(F)F
    .locals 2

    .line 538
    iget v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mAngleStart:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->getMinSweepAngle()F

    move-result v1

    sub-float/2addr p1, v1

    add-float/2addr v0, p1

    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr v0, p1

    return v0
.end method

.method protected adjustSweepDirection(F)F
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getSpinClockwise()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    neg-float p1, p1

    :goto_0
    return p1
.end method

.method protected abstract applyGradientToPaint()V
.end method

.method protected calcCurrentPosition(FFFFF)F
    .locals 4

    sub-float/2addr p1, p3

    sub-float/2addr p2, p3

    sub-float/2addr p4, p3

    sub-float p3, p1, p2

    .line 613
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    float-to-double v0, p3

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double p3, v0, v2

    if-gez p3, :cond_0

    div-float/2addr p1, p4

    return p1

    .line 617
    :cond_0
    iget-object p3, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mDrawMode:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    sget-object v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_HIDE:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    if-eq p3, v0, :cond_1

    iget-object p3, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mDrawMode:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    sget-object v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_SHOW:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    if-eq p3, v0, :cond_1

    iget-object p3, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mDrawMode:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    sget-object v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_COLOR_CHANGE:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    if-ne p3, v0, :cond_2

    :cond_1
    const/high16 p5, 0x3f800000    # 1.0f

    .line 625
    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p3

    float-to-double v0, p3

    cmpg-double p3, v0, v2

    if-gez p3, :cond_3

    div-float p2, p1, p4

    mul-float p5, p5, p1

    sub-float p3, p1, p5

    mul-float p2, p2, p3

    div-float/2addr p2, p1

    return p2

    :cond_3
    div-float p3, p2, p4

    sub-float p4, p2, p1

    mul-float p5, p5, p4

    add-float/2addr p1, p5

    mul-float p3, p3, p1

    div-float/2addr p3, p2

    return p3
.end method

.method public cancelAnimation()V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mValueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mEventCurrent:Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    .line 273
    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mColorAnimate:Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;

    if-eqz v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v2}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 275
    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mColorAnimate:Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z
    .locals 8

    .line 491
    iget-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mVisible:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_5

    .line 495
    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 499
    invoke-virtual {p0, p2}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->processBoundsChange(Landroid/graphics/RectF;)V

    .line 501
    iget-object p2, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mDrawMode:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    sget-object v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_EFFECT:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    if-ne p2, v0, :cond_2

    .line 503
    iget-object v2, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mEffect:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;

    if-eqz v2, :cond_1

    .line 504
    iget-object v4, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mBoundsInset:Landroid/graphics/RectF;

    iget v5, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPercentComplete:F

    iget p2, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mAngleStart:I

    int-to-float v6, p2

    iget p2, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mAngleSweep:I

    int-to-float v7, p2

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V

    :cond_1
    return v1

    .line 509
    :cond_2
    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->processRevealEffect()V

    .line 511
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mColorAnimate:Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;

    if-eqz p1, :cond_3

    .line 512
    iget-object p2, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPercentComplete:F

    invoke-virtual {p1, v0}, Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;->getColorCurrent(F)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 513
    :cond_3
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->getSeriesItem()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getColor()I

    move-result p2

    if-eq p1, p2, :cond_4

    .line 514
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->getSeriesItem()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 496
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Drawing bounds can not be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public drawLabel(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 7

    .line 470
    iget-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mVisible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p2, :cond_2

    .line 474
    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getSeriesLabel()Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getSeriesLabel()Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->getPositionPercent()F

    move-result v5

    iget v6, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPositionCurrentEnd:F

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1

    .line 475
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Drawing bounds can not be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getMinSweepAngle()F
    .locals 3

    .line 641
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->showPointWhenEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getChartStyle()Lcom/hookedonplay/decoviewlib/charts/SeriesItem$ChartStyle;

    move-result-object v0

    sget-object v2, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$ChartStyle;->STYLE_PIE:Lcom/hookedonplay/decoviewlib/charts/SeriesItem$ChartStyle;

    if-ne v0, v2, :cond_1

    return v1

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    const v2, 0x3dcccccd    # 0.1f

    if-ne v0, v1, :cond_2

    :cond_2
    return v2
.end method

.method public getPositionPercent()F
    .locals 3

    .line 666
    iget v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPositionCurrentEnd:F

    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getMaxValue()F

    move-result v1

    iget-object v2, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v2}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getMinValue()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public getSeriesItem()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    return-object v0
.end method

.method public isPaused()Z
    .locals 1

    .line 709
    iget-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mIsPaused:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 675
    iget-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mVisible:Z

    return v0
.end method

.method public pause()Z
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mValueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mIsPaused:Z

    if-nez v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mValueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x1

    .line 684
    iput-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mIsPaused:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected processBoundsChange(Landroid/graphics/RectF;)V
    .locals 2

    .line 574
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mBounds:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 575
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mBounds:Landroid/graphics/RectF;

    .line 576
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mBoundsInset:Landroid/graphics/RectF;

    .line 577
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getInset()Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 578
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mBoundsInset:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getInset()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getInset()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 580
    :cond_1
    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->applyGradientToPaint()V

    :cond_2
    return-void
.end method

.method protected processRevealEffect()V
    .locals 5

    .line 548
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mDrawMode:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    sget-object v1, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_HIDE:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mDrawMode:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    sget-object v1, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_SHOW:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    if-eq v0, v1, :cond_1

    .line 550
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getLineWidth()F

    move-result v0

    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getLineWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    return-void

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getLineWidth()F

    move-result v0

    .line 557
    iget v1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPercentComplete:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float v0, v0, v1

    .line 559
    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v3}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getColor()I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPercentComplete:F

    sub-float/2addr v2, v4

    mul-float v3, v3, v2

    float-to-int v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 561
    :cond_2
    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v2}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getColor()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 564
    :goto_0
    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public reset()V
    .locals 4

    .line 437
    sget-object v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_MOVE:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mDrawMode:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    .line 438
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getInitialVisibility()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mVisible:Z

    .line 440
    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->cancelAnimation()V

    .line 442
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getMinValue()F

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPositionStart:F

    .line 443
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getInitialValue()F

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPositionEnd:F

    .line 444
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getInitialValue()F

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPositionCurrentEnd:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 445
    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPercentComplete:F

    .line 447
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPaint:Landroid/graphics/Paint;

    .line 448
    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getChartStyle()Lcom/hookedonplay/decoviewlib/charts/SeriesItem$ChartStyle;

    move-result-object v1

    sget-object v2, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$ChartStyle;->STYLE_DONUT:Lcom/hookedonplay/decoviewlib/charts/SeriesItem$ChartStyle;

    if-ne v1, v2, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 450
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getLineWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 451
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getRoundCap()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_1

    :cond_1
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 452
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 454
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getShadowSize()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v2}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getShadowSize()F

    move-result v2

    iget-object v3, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v3}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getShadowColor()I

    move-result v3

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_2
    const/4 v0, 0x0

    .line 460
    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mBounds:Landroid/graphics/RectF;

    .line 462
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$SeriesItemListener;

    .line 463
    iget v2, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPercentComplete:F

    iget v3, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPositionCurrentEnd:F

    invoke-interface {v1, v2, v3}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$SeriesItemListener;->onSeriesItemAnimationProgress(FF)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public resume()Z
    .locals 1

    .line 696
    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mEventCurrent:Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    invoke-virtual {p0, v0}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->startAnimateMove(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPosition(F)V
    .locals 0

    .line 718
    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPositionStart:F

    .line 719
    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPositionEnd:F

    .line 720
    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPositionCurrentEnd:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 721
    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPercentComplete:F

    return-void
.end method

.method public setupView(II)V
    .locals 1

    if-ltz p1, :cond_2

    const/16 v0, 0x168

    if-gt p1, v0, :cond_2

    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    .line 147
    iput p2, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mAngleStart:I

    .line 148
    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mAngleSweep:I

    .line 154
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getSpinClockwise()Z

    move-result p1

    if-nez p1, :cond_0

    .line 155
    iget p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mAngleStart:I

    iget p2, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mAngleSweep:I

    add-int/2addr p1, p2

    rem-int/2addr p1, v0

    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mAngleStart:I

    :cond_0
    const/4 p1, 0x0

    .line 157
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mBounds:Landroid/graphics/RectF;

    return-void

    .line 144
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Rotate angle of view must be in the range 0..360"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Total angle of view must be in the range 0..360"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startAnimateColorChange(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
    .locals 3

    .line 333
    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->cancelAnimation()V

    .line 334
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->notifyStartListener()V

    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mVisible:Z

    .line 337
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEventType()Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    move-result-object v0

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mDrawMode:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    const/4 v0, 0x0

    .line 338
    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPercentComplete:F

    .line 340
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->isColorSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    new-instance v0, Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;

    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getColor()I

    move-result v1

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getColor()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;-><init>(II)V

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mColorAnimate:Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;

    .line 343
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->setColor(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 350
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mValueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    .line 352
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEffectDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 353
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mValueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mValueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 359
    :goto_0
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mValueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$5;

    invoke-direct {v1, p0}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$5;-><init>(Lcom/hookedonplay/decoviewlib/charts/ChartSeries;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 370
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mValueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$6;

    invoke-direct {v1, p0, p1}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$6;-><init>(Lcom/hookedonplay/decoviewlib/charts/ChartSeries;Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 377
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mValueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    return-void

    .line 345
    :cond_1
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->TAG:Ljava/lang/String;

    const-string v0, "Must set new color to start CHANGE_COLOR event"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startAnimateEffect(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 388
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEffectType()Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 395
    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->cancelAnimation()V

    .line 396
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->notifyStartListener()V

    const/4 v0, 0x1

    .line 398
    iput-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mVisible:Z

    .line 399
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEventType()Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    move-result-object v0

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mDrawMode:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    .line 400
    new-instance v0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEffectType()Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    move-result-object v1

    iget-object v2, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getDisplayText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;-><init>(Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;Landroid/graphics/Paint;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mEffect:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;

    .line 401
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEffectRotations()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->setRotationCount(I)V

    const/4 v0, 0x0

    .line 403
    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPercentComplete:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 405
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mValueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    .line 406
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEffectDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 407
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 408
    :goto_0
    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mValueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 410
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mValueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$7;

    invoke-direct {v1, p0}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$7;-><init>(Lcom/hookedonplay/decoviewlib/charts/ChartSeries;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 420
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mValueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$8;

    invoke-direct {v1, p0, p1}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$8;-><init>(Lcom/hookedonplay/decoviewlib/charts/ChartSeries;Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 430
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mValueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    return-void

    .line 389
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to execute null effect type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startAnimateHideShow(Lcom/hookedonplay/decoviewlib/events/DecoEvent;Z)V
    .locals 3

    .line 288
    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->cancelAnimation()V

    .line 289
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->notifyStartListener()V

    .line 292
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEventType()Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    move-result-object v0

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mDrawMode:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 293
    :goto_0
    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPercentComplete:F

    const/4 v0, 0x1

    .line 294
    iput-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mVisible:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 297
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mValueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    .line 299
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEffectDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 300
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mValueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 302
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mValueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$3;

    invoke-direct {v1, p0, p2}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$3;-><init>(Lcom/hookedonplay/decoviewlib/charts/ChartSeries;Z)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 315
    iget-object p2, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mValueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$4;

    invoke-direct {v0, p0, p1}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$4;-><init>(Lcom/hookedonplay/decoviewlib/charts/ChartSeries;Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    invoke-virtual {p2, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 324
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mValueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startAnimateMove(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
    .locals 13

    const/4 v0, 0x0

    .line 168
    iput-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mIsPaused:Z

    .line 169
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEventType()Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    move-result-object v1

    iput-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mDrawMode:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    const/4 v1, 0x1

    .line 170
    iput-boolean v1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mVisible:Z

    .line 172
    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->cancelAnimation()V

    .line 173
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mEventCurrent:Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    .line 175
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->isColorSet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    new-instance v3, Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;

    iget-object v4, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v4}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getColor()I

    move-result v4

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getColor()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;-><init>(II)V

    iput-object v3, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mColorAnimate:Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;

    .line 178
    iget-object v3, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->setColor(I)V

    .line 180
    :cond_0
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEndPosition()F

    move-result v3

    .line 183
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->notifyStartListener()V

    .line 185
    iget v4, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPositionCurrentEnd:F

    iput v4, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPositionStart:F

    .line 186
    iput v3, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPositionEnd:F

    .line 188
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEffectDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_5

    .line 190
    iget v8, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPositionEnd:F

    iget v9, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPositionStart:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v12, v8, v10

    if-gez v12, :cond_1

    goto :goto_1

    :cond_1
    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    .line 208
    iget-object v4, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v4}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getSpinDuration()J

    move-result-wide v4

    long-to-float v4, v4

    iget v5, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPositionStart:F

    iget v6, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPositionEnd:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    .line 209
    invoke-virtual {v6}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getMaxValue()F

    move-result v6

    div-float/2addr v5, v6

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 208
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-long v4, v4

    :cond_2
    const/4 v6, 0x2

    new-array v6, v6, [F

    .line 213
    iget v7, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPositionStart:F

    aput v7, v6, v0

    aput v3, v6, v1

    invoke-static {v6}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mValueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    .line 214
    invoke-virtual {v0, v4, v5}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 223
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mValueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 227
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mValueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 231
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mValueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$1;

    invoke-direct {v1, p0}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$1;-><init>(Lcom/hookedonplay/decoviewlib/charts/ChartSeries;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 249
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mValueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$2;

    invoke-direct {v1, p0, v2, p1}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$2;-><init>(Lcom/hookedonplay/decoviewlib/charts/ChartSeries;ZLcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 260
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mValueAnimator:Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    return-void

    .line 191
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->cancelAnimation()V

    .line 192
    iget v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPositionEnd:F

    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPositionCurrentEnd:F

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mEventCurrent:Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 194
    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPercentComplete:F

    .line 195
    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getListeners()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$SeriesItemListener;

    .line 196
    iget v3, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPositionEnd:F

    invoke-interface {v2, v0, v3}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$SeriesItemListener;->onSeriesItemAnimationProgress(FF)V

    goto :goto_2

    .line 198
    :cond_6
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->notifyEndListener()V

    return-void
.end method

.method protected verifyMinSweepAngle(F)F
    .locals 2

    .line 597
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->getMinSweepAngle()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->getSeriesItem()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->showPointWhenEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->getMinSweepAngle()F

    move-result p1

    :cond_0
    return p1
.end method
