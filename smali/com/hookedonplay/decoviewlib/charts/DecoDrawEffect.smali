.class public Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;
.super Ljava/lang/Object;
.source "DecoDrawEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;
    }
.end annotation


# static fields
.field private static final EXPLODE_CIRCLE_MAX:F = 0.1f

.field private static final EXPLODE_CIRCLE_MIN:F = 0.01f

.field private static final EXPLODE_LINE_COUNT:I = 0x9

.field private static final EXPLODE_LINE_MAX:F = 0.1f

.field private static final EXPLODE_LINE_MIN:F = 0.01f

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_LINE_WIDTH:F = 100.0f

.field private static final MIN_LINE_WIDTH:F = 10.0f


# instance fields
.field private mCircuits:I

.field private final mEffectType:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintExplode:Landroid/graphics/Paint;

.field private mPaintText:Landroid/graphics/Paint;

.field private final mSpinBounds:Landroid/graphics/RectF;

.field private mText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;Landroid/graphics/Paint;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mSpinBounds:Landroid/graphics/RectF;

    const/4 v0, 0x6

    .line 83
    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mCircuits:I

    .line 104
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mEffectType:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    .line 105
    invoke-direct {p0, p2}, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->setPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method constructor <init>(Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;Landroid/graphics/Paint;Ljava/lang/String;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mSpinBounds:Landroid/graphics/RectF;

    const/4 v0, 0x6

    .line 83
    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mCircuits:I

    .line 97
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mEffectType:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    .line 98
    invoke-direct {p0, p2}, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->setPaint(Landroid/graphics/Paint;)V

    .line 99
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-virtual {p0, p3, p1}, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->setText(Ljava/lang/String;I)V

    return-void
.end method

.method private determineLineWidth(Landroid/graphics/Paint;F)F
    .locals 1

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    .line 137
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, 0x41200000    # 10.0f

    .line 138
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    mul-float p1, p1, p2

    return p1
.end method

.method private drawExplodeLine(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFFZ)V
    .locals 6

    float-to-double v0, p5

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 353
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, p3

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    add-float/2addr v2, v3

    .line 354
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, p3

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    add-float/2addr v3, v4

    .line 355
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, p4

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    add-float/2addr v4, v5

    .line 356
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v0, v0, p4

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    add-float/2addr v0, v1

    if-nez p7, :cond_0

    .line 359
    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mPaintExplode:Landroid/graphics/Paint;

    move p2, v2

    move p3, v3

    move p4, v4

    move p5, v0

    move-object p6, v1

    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x3c23d70a    # 0.01f

    mul-float v1, v1, v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    const v5, 0x3dcccccd    # 0.1f

    mul-float v3, v3, v5

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float v5, v5, v2

    sub-float/2addr v3, v5

    mul-float v3, v3, p6

    add-float/2addr v1, v3

    .line 365
    iget-object v2, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mPaintExplode:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private getSweepAngle(F)F
    .locals 7

    float-to-double v0, p1

    const/high16 v2, 0x40000000    # 2.0f

    const v3, 0x41ef3333    # 29.9f

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v6, v0, v4

    if-gez v6, :cond_0

    const v0, 0x3dcccccd    # 0.1f

    mul-float p1, p1, v2

    mul-float p1, p1, v3

    add-float/2addr p1, v0

    return p1

    :cond_0
    const/high16 v0, 0x41f00000    # 30.0f

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr p1, v1

    mul-float p1, p1, v2

    mul-float p1, p1, v3

    sub-float/2addr v0, p1

    return v0
.end method

.method private setPaint(Landroid/graphics/Paint;)V
    .locals 2

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mPaint:Landroid/graphics/Paint;

    .line 120
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 121
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v1}, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->determineLineWidth(Landroid/graphics/Paint;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mPaintExplode:Landroid/graphics/Paint;

    .line 130
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 131
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mPaintExplode:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 132
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mPaintExplode:Landroid/graphics/Paint;

    const v1, 0x3f28f5c3    # 0.66f

    invoke-direct {p0, p1, v1}, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->determineLineWidth(Landroid/graphics/Paint;F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V
    .locals 7

    .line 171
    sget-object v0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$1;->$SwitchMap$com$hookedonplay$decoviewlib$charts$DecoDrawEffect$EffectType:[I

    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mEffectType:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->drawMoveToCenter(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->drawExplode(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    .line 185
    invoke-virtual {p0, p1, p2, p3}, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->drawText(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    goto :goto_0

    :cond_2
    const v0, 0x3f19999a    # 0.6f

    cmpg-float v1, p3, v0

    if-gtz v1, :cond_3

    const v0, 0x3fd55555

    mul-float v4, p3, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    .line 175
    invoke-virtual/range {v1 .. v6}, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->drawMoveToCenter(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V

    goto :goto_0

    :cond_3
    sub-float/2addr p3, v0

    const p4, 0x3ecccccc    # 0.39999998f

    div-float/2addr p3, p4

    .line 178
    invoke-virtual {p0, p1, p2, p3}, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->drawExplode(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    .line 179
    invoke-virtual {p0, p1, p2, p3}, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->drawText(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    :goto_0
    return-void
.end method

.method public drawExplode(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 17

    move-object/from16 v8, p0

    .line 316
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 317
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float v0, v0, v2

    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    const v4, 0x3c23d70a    # 0.01f

    mul-float v3, v3, v4

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v4, v4, v2

    const/high16 v2, 0x437f0000    # 255.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x40000000    # 2.0f

    const/16 v10, 0xff

    cmpl-float v7, p3, v5

    if-lez v7, :cond_1

    sub-float v5, p3, v5

    mul-float v5, v5, v6

    sub-float v3, v0, v3

    mul-float v3, v3, v5

    sub-float/2addr v0, v3

    mul-float v5, v5, v2

    float-to-int v3, v5

    rsub-int v3, v3, 0xff

    move v11, v3

    goto :goto_1

    :cond_1
    mul-float v5, p3, v6

    sub-float/2addr v0, v3

    mul-float v5, v5, v0

    add-float v0, v3, v5

    const/16 v11, 0xff

    .line 331
    :goto_1
    iget-object v3, v8, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v12

    if-ge v11, v10, :cond_2

    .line 333
    iget-object v3, v8, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mPaintExplode:Landroid/graphics/Paint;

    int-to-float v5, v12

    int-to-float v7, v11

    div-float/2addr v7, v2

    mul-float v5, v5, v7

    float-to-int v2, v5

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 336
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v6

    sub-float/2addr v2, v4

    mul-float v2, v2, p3

    float-to-int v2, v2

    int-to-float v2, v2

    add-float v13, v4, v2

    sub-float v14, v13, v0

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_2
    const/16 v0, 0x9

    if-ge v7, v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    move v4, v13

    move v5, v15

    move/from16 v6, p3

    move/from16 v16, v7

    move v7, v9

    .line 341
    invoke-direct/range {v0 .. v7}, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->drawExplodeLine(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFFZ)V

    const/high16 v0, 0x42200000    # 40.0f

    add-float/2addr v15, v0

    add-int/lit8 v7, v16, 0x1

    goto :goto_2

    :cond_3
    if-ge v11, v10, :cond_4

    .line 346
    iget-object v0, v8, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_4
    return-void
.end method

.method public drawMoveToCenter(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 214
    iget-object v2, v0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mEffectType:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    sget-object v3, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;->EFFECT_SPIRAL_OUT:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1

    iget-object v2, v0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mEffectType:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    sget-object v3, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;->EFFECT_SPIRAL_OUT_FILL:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 218
    :goto_1
    iget-object v3, v0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mEffectType:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    sget-object v6, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;->EFFECT_SPIRAL_IN:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    if-eq v3, v6, :cond_2

    iget-object v3, v0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mEffectType:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    sget-object v6, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;->EFFECT_SPIRAL_EXPLODE:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    if-eq v3, v6, :cond_2

    const/4 v4, 0x1

    .line 222
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    const/high16 v6, 0x41200000    # 10.0f

    sub-float/2addr v3, v6

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v5

    sub-float/2addr v7, v6

    .line 224
    iget v5, v0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mCircuits:I

    int-to-float v5, v5

    const/high16 v6, 0x43b40000    # 360.0f

    mul-float v5, v5, v6

    .line 226
    iget-object v8, v0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mEffectType:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    sget-object v9, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;->EFFECT_SPIRAL_OUT_FILL:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    if-ne v8, v9, :cond_3

    add-float v8, v5, v6

    goto :goto_2

    :cond_3
    move v8, v5

    :goto_2
    mul-float v9, v8, v1

    if-eqz v4, :cond_4

    move v4, v9

    goto :goto_3

    :cond_4
    neg-float v4, v9

    :goto_3
    add-float v4, p4, v4

    rem-float/2addr v4, v6

    .line 229
    invoke-direct {v0, v1}, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->getSweepAngle(F)F

    move-result v10

    .line 231
    iget-object v11, v0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mSpinBounds:Landroid/graphics/RectF;

    move-object/from16 v12, p2

    invoke-virtual {v11, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v2, :cond_5

    sub-float v1, v11, v1

    .line 240
    :cond_5
    iget-object v2, v0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mEffectType:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    sget-object v12, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;->EFFECT_SPIRAL_OUT_FILL:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    if-ne v2, v12, :cond_9

    sub-float v2, v8, v6

    cmpl-float v2, v9, v2

    if-lez v2, :cond_8

    .line 242
    iget-object v1, v0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    rem-float/2addr v9, v6

    const/4 v1, 0x0

    cmpg-float v1, v9, v1

    if-gtz v1, :cond_6

    goto :goto_4

    :cond_6
    move v6, v9

    :goto_4
    cmpl-float v1, v6, p5

    if-lez v1, :cond_7

    move/from16 v6, p5

    :cond_7
    move/from16 v13, p4

    move v14, v6

    goto :goto_6

    :cond_8
    div-float/2addr v5, v8

    sub-float v2, v11, v5

    cmpl-float v5, v1, v2

    if-lez v5, :cond_a

    sub-float/2addr v1, v2

    sub-float/2addr v11, v2

    div-float/2addr v1, v11

    .line 257
    iget-object v2, v0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mSpinBounds:Landroid/graphics/RectF;

    mul-float v3, v3, v1

    mul-float v7, v7, v1

    invoke-virtual {v2, v3, v7}, Landroid/graphics/RectF;->inset(FF)V

    goto :goto_5

    .line 263
    :cond_9
    iget-object v2, v0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mSpinBounds:Landroid/graphics/RectF;

    mul-float v3, v3, v1

    mul-float v7, v7, v1

    invoke-virtual {v2, v3, v7}, Landroid/graphics/RectF;->inset(FF)V

    :cond_a
    :goto_5
    move v13, v4

    move v14, v10

    .line 266
    :goto_6
    iget-object v12, v0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mSpinBounds:Landroid/graphics/RectF;

    const/4 v15, 0x0

    iget-object v1, v0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawText(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mText:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mPaintText:Landroid/graphics/Paint;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 292
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mPaintText:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const v0, 0x3f333333    # 0.7f

    cmpl-float v1, p3, v0

    if-lez v1, :cond_0

    sub-float/2addr p3, v0

    const v0, 0x3e99999a    # 0.3f

    div-float/2addr p3, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p3, p3, v0

    sub-float/2addr v0, p3

    float-to-int p3, v0

    .line 297
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 301
    :cond_0
    iget p3, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p3, v0

    .line 302
    iget v0, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p2, v1

    add-float/2addr v0, p2

    iget-object p2, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result p2

    iget-object v2, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr p2, v2

    div-float/2addr p2, v1

    sub-float/2addr v0, p2

    .line 303
    iget-object p2, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mText:Ljava/lang/String;

    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public postExecuteVisibility()Z
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mEffectType:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    sget-object v1, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;->EFFECT_SPIRAL_OUT:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mEffectType:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    sget-object v1, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;->EFFECT_SPIRAL_OUT_FILL:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setRotationCount(I)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mCircuits:I

    return-void
.end method

.method public setText(Ljava/lang/String;I)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mText:Ljava/lang/String;

    .line 150
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mPaintText:Landroid/graphics/Paint;

    .line 151
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mPaintText:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 153
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->mPaintText:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method
