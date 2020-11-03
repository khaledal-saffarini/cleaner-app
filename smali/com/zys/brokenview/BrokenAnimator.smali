.class Lcom/zys/brokenview/BrokenAnimator;
.super Landroid/animation/ValueAnimator;
.source "BrokenAnimator.java"


# static fields
.field static final STAGE_BREAKING:I = 0x1

.field static final STAGE_EARLYEND:I = 0x3

.field static final STAGE_FALLING:I = 0x2

.field static final STAGE_TEST:I


# instance fields
.field private SEGMENT:I

.field private bPressed:Z

.field private canReverse:Z

.field private circleRifts:[Landroid/graphics/Path;

.field private circleWidth:[I

.field private hasCircleRifts:Z

.field private lineRifts:[Lcom/zys/brokenview/LinePath;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBrokenView:Lcom/zys/brokenview/BrokenView;

.field private mConfig:Lcom/zys/brokenview/BrokenConfig;

.field private mTouchPoint:Landroid/graphics/Point;

.field private mView:Landroid/view/View;

.field private offsetX:I

.field private offsetY:I

.field private onDrawPM:Landroid/graphics/PathMeasure;

.field private onDrawPaint:Landroid/graphics/Paint;

.field private onDrawPath:Landroid/graphics/Path;

.field private pathArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private pieces:[Lcom/zys/brokenview/Piece;

.field private stage:I


# direct methods
.method public constructor <init>(Lcom/zys/brokenview/BrokenView;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Point;Lcom/zys/brokenview/BrokenConfig;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lcom/zys/brokenview/BrokenAnimator;->stage:I

    const/4 v1, 0x0

    .line 51
    iput-boolean v1, p0, Lcom/zys/brokenview/BrokenAnimator;->canReverse:Z

    .line 52
    iput-boolean v0, p0, Lcom/zys/brokenview/BrokenAnimator;->bPressed:Z

    .line 53
    iput-boolean v0, p0, Lcom/zys/brokenview/BrokenAnimator;->hasCircleRifts:Z

    .line 66
    iput-object p1, p0, Lcom/zys/brokenview/BrokenAnimator;->mBrokenView:Lcom/zys/brokenview/BrokenView;

    .line 67
    iput-object p2, p0, Lcom/zys/brokenview/BrokenAnimator;->mView:Landroid/view/View;

    .line 68
    iput-object p3, p0, Lcom/zys/brokenview/BrokenAnimator;->mBitmap:Landroid/graphics/Bitmap;

    .line 69
    iput-object p4, p0, Lcom/zys/brokenview/BrokenAnimator;->mTouchPoint:Landroid/graphics/Point;

    .line 70
    iput-object p5, p0, Lcom/zys/brokenview/BrokenAnimator;->mConfig:Lcom/zys/brokenview/BrokenConfig;

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zys/brokenview/BrokenAnimator;->pathArray:Ljava/util/ArrayList;

    .line 73
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/zys/brokenview/BrokenAnimator;->onDrawPath:Landroid/graphics/Path;

    .line 74
    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object p1, p0, Lcom/zys/brokenview/BrokenAnimator;->onDrawPM:Landroid/graphics/PathMeasure;

    .line 75
    iget-object p1, p0, Lcom/zys/brokenview/BrokenAnimator;->mConfig:Lcom/zys/brokenview/BrokenConfig;

    iget p1, p1, Lcom/zys/brokenview/BrokenConfig;->complexity:I

    new-array p1, p1, [Lcom/zys/brokenview/LinePath;

    iput-object p1, p0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    .line 76
    iget-object p1, p0, Lcom/zys/brokenview/BrokenAnimator;->mConfig:Lcom/zys/brokenview/BrokenConfig;

    iget p1, p1, Lcom/zys/brokenview/BrokenConfig;->complexity:I

    new-array p1, p1, [Landroid/graphics/Path;

    iput-object p1, p0, Lcom/zys/brokenview/BrokenAnimator;->circleRifts:[Landroid/graphics/Path;

    .line 77
    iget-object p1, p0, Lcom/zys/brokenview/BrokenAnimator;->mConfig:Lcom/zys/brokenview/BrokenConfig;

    iget p1, p1, Lcom/zys/brokenview/BrokenConfig;->complexity:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/zys/brokenview/BrokenAnimator;->circleWidth:[I

    .line 78
    iget-object p1, p0, Lcom/zys/brokenview/BrokenAnimator;->mConfig:Lcom/zys/brokenview/BrokenConfig;

    iget p1, p1, Lcom/zys/brokenview/BrokenConfig;->circleRiftsRadius:I

    iput p1, p0, Lcom/zys/brokenview/BrokenAnimator;->SEGMENT:I

    if-nez p1, :cond_0

    .line 80
    iput-boolean v1, p0, Lcom/zys/brokenview/BrokenAnimator;->hasCircleRifts:Z

    const/16 p1, 0x42

    .line 81
    iput p1, p0, Lcom/zys/brokenview/BrokenAnimator;->SEGMENT:I

    .line 84
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 85
    iget-object p2, p0, Lcom/zys/brokenview/BrokenAnimator;->mView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 86
    iget-object p2, p0, Lcom/zys/brokenview/BrokenAnimator;->mTouchPoint:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget p3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p3

    iput p2, p0, Lcom/zys/brokenview/BrokenAnimator;->offsetX:I

    .line 87
    iget-object p2, p0, Lcom/zys/brokenview/BrokenAnimator;->mTouchPoint:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    iget p3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p3

    iput p2, p0, Lcom/zys/brokenview/BrokenAnimator;->offsetY:I

    .line 89
    iget-object p2, p0, Lcom/zys/brokenview/BrokenAnimator;->mTouchPoint:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    neg-int p2, p2

    iget-object p3, p0, Lcom/zys/brokenview/BrokenAnimator;->mTouchPoint:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->y:I

    neg-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 94
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 95
    iget-object p3, p0, Lcom/zys/brokenview/BrokenAnimator;->mBrokenView:Lcom/zys/brokenview/BrokenView;

    invoke-virtual {p3, p2}, Lcom/zys/brokenview/BrokenView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 96
    iget-object p3, p0, Lcom/zys/brokenview/BrokenAnimator;->mTouchPoint:Landroid/graphics/Point;

    iget p4, p3, Landroid/graphics/Point;->x:I

    iget p5, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p5

    iput p4, p3, Landroid/graphics/Point;->x:I

    .line 97
    iget-object p3, p0, Lcom/zys/brokenview/BrokenAnimator;->mTouchPoint:Landroid/graphics/Point;

    iget p4, p3, Landroid/graphics/Point;->y:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p4, p2

    iput p4, p3, Landroid/graphics/Point;->y:I

    .line 99
    invoke-direct {p0, p1}, Lcom/zys/brokenview/BrokenAnimator;->buildBrokenLines(Landroid/graphics/Rect;)V

    .line 100
    invoke-direct {p0, p1}, Lcom/zys/brokenview/BrokenAnimator;->buildBrokenAreas(Landroid/graphics/Rect;)V

    .line 101
    invoke-direct {p0}, Lcom/zys/brokenview/BrokenAnimator;->buildPieces()V

    .line 102
    invoke-direct {p0}, Lcom/zys/brokenview/BrokenAnimator;->buildPaintShader()V

    .line 103
    invoke-direct {p0}, Lcom/zys/brokenview/BrokenAnimator;->warpStraightLines()V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 105
    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Lcom/zys/brokenview/BrokenAnimator;->setFloatValues([F)V

    .line 106
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-direct {p1, p2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, p1}, Lcom/zys/brokenview/BrokenAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 107
    iget-object p1, p0, Lcom/zys/brokenview/BrokenAnimator;->mConfig:Lcom/zys/brokenview/BrokenConfig;

    iget p1, p1, Lcom/zys/brokenview/BrokenConfig;->breakDuration:I

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/zys/brokenview/BrokenAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private buildBaselines([Lcom/zys/brokenview/LinePath;Landroid/graphics/Rect;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 165
    :goto_0
    iget-object v2, p0, Lcom/zys/brokenview/BrokenAnimator;->mConfig:Lcom/zys/brokenview/BrokenConfig;

    iget v2, v2, Lcom/zys/brokenview/BrokenConfig;->complexity:I

    if-ge v1, v2, :cond_0

    .line 166
    new-instance v2, Lcom/zys/brokenview/LinePath;

    invoke-direct {v2}, Lcom/zys/brokenview/LinePath;-><init>()V

    aput-object v2, p1, v1

    .line 167
    aget-object v2, p1, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/zys/brokenview/LinePath;->moveTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_0
    aget-object v1, p1, v0

    invoke-direct {p0, v1, p2}, Lcom/zys/brokenview/BrokenAnimator;->buildFirstLine(Lcom/zys/brokenview/LinePath;Landroid/graphics/Rect;)V

    .line 172
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/zys/brokenview/LinePath;->getEndY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/zys/brokenview/LinePath;->getEndX()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x4

    new-array v2, v2, [I

    .line 176
    iget v3, p2, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-int v3, v3

    aput v3, v2, v0

    .line 177
    iget v3, p2, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-int v3, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v3, 0x2

    .line 178
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget v6, p2, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-int v5, v5

    aput v5, v2, v3

    .line 179
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget v5, p2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-int v3, v5

    const/4 v5, 0x3

    aput v3, v2, v5

    .line 181
    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/zys/brokenview/LinePath;->getEndX()I

    move-result v3

    if-gez v3, :cond_1

    add-int/lit16 v1, v1, 0xb4

    goto :goto_1

    .line 183
    :cond_1
    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/zys/brokenview/LinePath;->getEndX()I

    move-result v3

    if-lez v3, :cond_2

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/zys/brokenview/LinePath;->getEndY()I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit16 v1, v1, 0x168

    .line 187
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/zys/brokenview/BrokenAnimator;->mConfig:Lcom/zys/brokenview/BrokenConfig;

    iget v0, v0, Lcom/zys/brokenview/BrokenConfig;->complexity:I

    const/16 v3, 0x168

    div-int v0, v3, v0

    div-int/2addr v0, v5

    .line 190
    :goto_2
    iget-object v5, p0, Lcom/zys/brokenview/BrokenAnimator;->mConfig:Lcom/zys/brokenview/BrokenConfig;

    iget v5, v5, Lcom/zys/brokenview/BrokenConfig;->complexity:I

    if-ge v4, v5, :cond_6

    .line 191
    iget-object v5, p0, Lcom/zys/brokenview/BrokenAnimator;->mConfig:Lcom/zys/brokenview/BrokenConfig;

    iget v5, v5, Lcom/zys/brokenview/BrokenConfig;->complexity:I

    div-int v5, v3, v5

    add-int/2addr v1, v5

    if-lt v1, v3, :cond_3

    add-int/lit16 v1, v1, -0x168

    :cond_3
    neg-int v5, v0

    .line 195
    invoke-static {v5, v0}, Lcom/zys/brokenview/Utils;->nextInt(II)I

    move-result v5

    add-int/2addr v5, v1

    if-lt v5, v3, :cond_4

    add-int/lit16 v5, v5, -0x168

    goto :goto_3

    :cond_4
    if-gez v5, :cond_5

    add-int/lit16 v5, v5, 0x168

    .line 201
    :cond_5
    :goto_3
    aget-object v6, p1, v4

    invoke-virtual {v6, v5, v2, p2}, Lcom/zys/brokenview/LinePath;->obtainEndPoint(I[ILandroid/graphics/Rect;)V

    .line 202
    aget-object v5, p1, v4

    invoke-virtual {v5}, Lcom/zys/brokenview/LinePath;->lineToEnd()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method private buildBrokenAreas(Landroid/graphics/Rect;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 240
    iget v2, v0, Lcom/zys/brokenview/BrokenAnimator;->SEGMENT:I

    mul-int/lit8 v3, v2, 0x7

    div-int/lit8 v3, v3, 0x9

    int-to-double v4, v2

    const-wide v6, 0x3ff199999999999aL    # 1.1

    .line 241
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v2, v4

    .line 248
    new-instance v4, Landroid/graphics/PathMeasure;

    invoke-direct {v4}, Landroid/graphics/PathMeasure;-><init>()V

    .line 249
    new-instance v5, Landroid/graphics/PathMeasure;

    invoke-direct {v5}, Landroid/graphics/PathMeasure;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 251
    :goto_0
    iget-object v11, v0, Lcom/zys/brokenview/BrokenAnimator;->mConfig:Lcom/zys/brokenview/BrokenConfig;

    iget v11, v11, Lcom/zys/brokenview/BrokenConfig;->complexity:I

    if-ge v8, v11, :cond_5

    .line 253
    iget-object v11, v0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v11, v11, v8

    invoke-static {v2}, Lcom/zys/brokenview/Utils;->dp2px(I)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Lcom/zys/brokenview/LinePath;->setStartLength(F)V

    if-lez v9, :cond_0

    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 258
    :cond_0
    invoke-static {v3}, Lcom/zys/brokenview/Utils;->dp2px(I)I

    move-result v9

    iget v10, v0, Lcom/zys/brokenview/BrokenAnimator;->SEGMENT:I

    invoke-static {v10}, Lcom/zys/brokenview/Utils;->dp2px(I)I

    move-result v10

    invoke-static {v9, v10}, Lcom/zys/brokenview/Utils;->nextInt(II)I

    move-result v9

    int-to-float v10, v9

    const/4 v9, 0x3

    .line 259
    invoke-static {v9}, Lcom/zys/brokenview/Utils;->nextInt(I)I

    move-result v9

    :goto_1
    add-int/lit8 v11, v8, -0x1

    const/4 v12, 0x1

    if-gez v11, :cond_1

    .line 262
    iget-object v11, v0, Lcom/zys/brokenview/BrokenAnimator;->mConfig:Lcom/zys/brokenview/BrokenConfig;

    iget v11, v11, Lcom/zys/brokenview/BrokenConfig;->complexity:I

    sub-int/2addr v11, v12

    .line 263
    :cond_1
    iget-object v13, v0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v13, v13, v8

    invoke-virtual {v4, v13, v7}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 264
    iget-object v13, v0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v13, v13, v11

    invoke-virtual {v5, v13, v7}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 266
    iget-boolean v13, v0, Lcom/zys/brokenview/BrokenAnimator;->hasCircleRifts:Z

    const/4 v14, 0x2

    if-eqz v13, :cond_3

    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v13

    cmpl-float v13, v13, v10

    if-lez v13, :cond_3

    invoke-virtual {v5}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v13

    cmpl-float v13, v13, v10

    if-lez v13, :cond_3

    new-array v13, v14, [F

    new-array v15, v14, [F

    .line 270
    iget-object v14, v0, Lcom/zys/brokenview/BrokenAnimator;->circleWidth:[I

    invoke-static {v12}, Lcom/zys/brokenview/Utils;->dp2px(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/zys/brokenview/Utils;->nextInt(I)I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    aput v16, v14, v8

    .line 271
    iget-object v14, v0, Lcom/zys/brokenview/BrokenAnimator;->circleRifts:[Landroid/graphics/Path;

    new-instance v16, Landroid/graphics/Path;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Path;-><init>()V

    aput-object v16, v14, v8

    const/4 v14, 0x0

    .line 272
    invoke-virtual {v4, v10, v13, v14}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 273
    iget-object v6, v0, Lcom/zys/brokenview/BrokenAnimator;->circleRifts:[Landroid/graphics/Path;

    aget-object v6, v6, v8

    aget v14, v13, v7

    aget v7, v13, v12

    invoke-virtual {v6, v14, v7}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v6, 0x0

    .line 274
    invoke-virtual {v5, v10, v15, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 275
    iget-object v6, v0, Lcom/zys/brokenview/BrokenAnimator;->circleRifts:[Landroid/graphics/Path;

    aget-object v6, v6, v8

    const/4 v7, 0x0

    aget v14, v15, v7

    aget v7, v15, v12

    invoke-virtual {v6, v14, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 278
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 279
    invoke-virtual {v5}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v7

    invoke-virtual {v5, v10, v7, v6, v12}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    const/4 v7, 0x0

    .line 280
    invoke-virtual {v6, v7, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 281
    iget-object v7, v0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Lcom/zys/brokenview/LinePath;->getEndPoint()Landroid/graphics/Point;

    move-result-object v7

    iget-object v11, v0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v11, v11, v8

    iget-object v11, v11, Lcom/zys/brokenview/LinePath;->points:Ljava/util/ArrayList;

    iget-object v14, v0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v14, v14, v8

    iget-object v14, v14, Lcom/zys/brokenview/LinePath;->points:Ljava/util/ArrayList;

    .line 282
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Point;

    .line 281
    invoke-virtual {v0, v6, v7, v11, v1}, Lcom/zys/brokenview/BrokenAnimator;->drawBorder(Landroid/graphics/Path;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 283
    iget-object v7, v0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/zys/brokenview/LinePath;->points:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v11, 0x2

    sub-int/2addr v7, v11

    :goto_2
    if-ltz v7, :cond_2

    .line 284
    iget-object v11, v0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v11, v11, v8

    iget-object v11, v11, Lcom/zys/brokenview/LinePath;->points:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    iget-object v14, v0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v14, v14, v8

    iget-object v14, v14, Lcom/zys/brokenview/LinePath;->points:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    invoke-virtual {v6, v11, v14}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 285
    aget v11, v13, v7

    aget v14, v13, v12

    invoke-virtual {v6, v11, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 286
    aget v11, v15, v7

    aget v14, v15, v12

    invoke-virtual {v6, v11, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 287
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 288
    iget-object v11, v0, Lcom/zys/brokenview/BrokenAnimator;->pathArray:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    const/4 v14, 0x0

    .line 292
    invoke-virtual {v6, v14, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 293
    aget v11, v15, v7

    aget v15, v15, v12

    invoke-virtual {v6, v11, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 294
    aget v11, v13, v7

    aget v12, v13, v12

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 295
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 296
    iget-object v11, v0, Lcom/zys/brokenview/BrokenAnimator;->pathArray:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    const/4 v14, 0x0

    .line 300
    new-instance v6, Landroid/graphics/Path;

    iget-object v13, v0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v13, v13, v11

    invoke-direct {v6, v13}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 301
    iget-object v13, v0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v11, v13, v11

    invoke-virtual {v11}, Lcom/zys/brokenview/LinePath;->getEndPoint()Landroid/graphics/Point;

    move-result-object v11

    iget-object v13, v0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v13, v13, v8

    iget-object v13, v13, Lcom/zys/brokenview/LinePath;->points:Ljava/util/ArrayList;

    iget-object v15, v0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v15, v15, v8

    iget-object v15, v15, Lcom/zys/brokenview/LinePath;->points:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v15, v12

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Point;

    invoke-virtual {v0, v6, v11, v12, v1}, Lcom/zys/brokenview/BrokenAnimator;->drawBorder(Landroid/graphics/Path;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 302
    iget-object v11, v0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v11, v11, v8

    iget-object v11, v11, Lcom/zys/brokenview/LinePath;->points:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x2

    sub-int/2addr v11, v12

    :goto_3
    if-ltz v11, :cond_4

    .line 303
    iget-object v12, v0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v12, v12, v8

    iget-object v12, v12, Lcom/zys/brokenview/LinePath;->points:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    iget-object v13, v0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v13, v13, v8

    iget-object v13, v13, Lcom/zys/brokenview/LinePath;->points:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    invoke-virtual {v6, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 304
    :cond_4
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 305
    iget-object v11, v0, Lcom/zys/brokenview/BrokenAnimator;->pathArray:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private buildBrokenLines(Landroid/graphics/Rect;)V
    .locals 14

    .line 114
    iget-object v0, p0, Lcom/zys/brokenview/BrokenAnimator;->mConfig:Lcom/zys/brokenview/BrokenConfig;

    iget v0, v0, Lcom/zys/brokenview/BrokenConfig;->complexity:I

    new-array v0, v0, [Lcom/zys/brokenview/LinePath;

    .line 115
    invoke-direct {p0, v0, p1}, Lcom/zys/brokenview/BrokenAnimator;->buildBaselines([Lcom/zys/brokenview/LinePath;Landroid/graphics/Rect;)V

    .line 116
    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 117
    :goto_0
    iget-object v3, p0, Lcom/zys/brokenview/BrokenAnimator;->mConfig:Lcom/zys/brokenview/BrokenConfig;

    iget v3, v3, Lcom/zys/brokenview/BrokenConfig;->complexity:I

    if-ge v2, v3, :cond_2

    .line 118
    iget-object v3, p0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    new-instance v4, Lcom/zys/brokenview/LinePath;

    invoke-direct {v4}, Lcom/zys/brokenview/LinePath;-><init>()V

    aput-object v4, v3, v2

    .line 119
    iget-object v3, p0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lcom/zys/brokenview/LinePath;->moveTo(FF)V

    .line 120
    iget-object v3, p0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v3, v3, v2

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/zys/brokenview/LinePath;->getEndPoint()Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zys/brokenview/LinePath;->setEndPoint(Landroid/graphics/Point;)V

    .line 122
    aget-object v3, v0, v2

    invoke-virtual {p1, v3, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 123
    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    .line 124
    iget v4, p0, Lcom/zys/brokenview/BrokenAnimator;->SEGMENT:I

    div-int/lit8 v5, v4, 0x2

    add-int/2addr v4, v5

    .line 126
    invoke-static {v4}, Lcom/zys/brokenview/Utils;->dp2px(I)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x1

    cmpl-float v5, v3, v5

    if-lez v5, :cond_1

    .line 127
    iget-object v5, p0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v5, v5, v2

    invoke-virtual {v5, v1}, Lcom/zys/brokenview/LinePath;->setStraight(Z)V

    const/4 v5, 0x2

    new-array v7, v5, [F

    .line 133
    iget v8, p0, Lcom/zys/brokenview/BrokenAnimator;->SEGMENT:I

    invoke-static {v8}, Lcom/zys/brokenview/Utils;->dp2px(I)I

    move-result v8

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v7, v9}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 134
    iget-object v8, p0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v8, v8, v2

    aget v10, v7, v1

    aget v11, v7, v6

    invoke-virtual {v8, v10, v11}, Lcom/zys/brokenview/LinePath;->lineTo(FF)V

    .line 136
    iget-object v8, p0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/zys/brokenview/LinePath;->points:Ljava/util/ArrayList;

    new-instance v10, Landroid/graphics/Point;

    aget v11, v7, v1

    float-to-int v11, v11

    aget v12, v7, v6

    float-to-int v12, v12

    invoke-direct {v10, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-static {v4}, Lcom/zys/brokenview/Utils;->dp2px(I)I

    move-result v4

    :cond_0
    int-to-float v8, v4

    .line 141
    invoke-virtual {p1, v8, v7, v9}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 144
    aget v8, v7, v1

    const/4 v10, 0x3

    invoke-static {v10}, Lcom/zys/brokenview/Utils;->dp2px(I)I

    move-result v11

    neg-int v11, v11

    invoke-static {v5}, Lcom/zys/brokenview/Utils;->dp2px(I)I

    move-result v12

    invoke-static {v11, v12}, Lcom/zys/brokenview/Utils;->nextInt(II)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v8, v11

    float-to-int v8, v8

    .line 145
    aget v11, v7, v6

    invoke-static {v5}, Lcom/zys/brokenview/Utils;->dp2px(I)I

    move-result v12

    neg-int v12, v12

    invoke-static {v10}, Lcom/zys/brokenview/Utils;->dp2px(I)I

    move-result v10

    invoke-static {v12, v10}, Lcom/zys/brokenview/Utils;->nextInt(II)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v11, v10

    float-to-int v10, v11

    .line 146
    iget-object v11, p0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v11, v11, v2

    int-to-float v12, v8

    int-to-float v13, v10

    invoke-virtual {v11, v12, v13}, Lcom/zys/brokenview/LinePath;->lineTo(FF)V

    .line 147
    iget-object v11, p0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v11, v11, v2

    iget-object v11, v11, Lcom/zys/brokenview/LinePath;->points:Ljava/util/ArrayList;

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v8, v10}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget v8, p0, Lcom/zys/brokenview/BrokenAnimator;->SEGMENT:I

    invoke-static {v8}, Lcom/zys/brokenview/Utils;->dp2px(I)I

    move-result v8

    add-int/2addr v4, v8

    int-to-float v8, v4

    cmpg-float v8, v8, v3

    if-ltz v8, :cond_0

    .line 150
    iget-object v3, p0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/zys/brokenview/LinePath;->lineToEnd()V

    goto :goto_1

    .line 154
    :cond_1
    iget-object v3, p0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v4, v0, v2

    aput-object v4, v3, v2

    .line 155
    aget-object v3, v3, v2

    invoke-virtual {v3, v6}, Lcom/zys/brokenview/LinePath;->setStraight(Z)V

    .line 157
    :goto_1
    iget-object v3, p0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/zys/brokenview/LinePath;->points:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/zys/brokenview/LinePath;->getEndPoint()Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private buildFirstLine(Lcom/zys/brokenview/LinePath;Landroid/graphics/Rect;)V
    .locals 9

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 210
    iget v2, p2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    const/4 v4, 0x1

    aput v2, v1, v4

    iget v2, p2, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x2

    aput v2, v1, v5

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v6, 0x3

    aput v2, v1, v6

    const/4 v2, -0x1

    const/4 v7, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 214
    aget v8, v1, v3

    if-le v8, v2, :cond_0

    .line 215
    aget v2, v1, v3

    move v7, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_5

    if-eq v7, v4, :cond_4

    if-eq v7, v5, :cond_3

    if-eq v7, v6, :cond_2

    goto :goto_1

    .line 230
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0}, Lcom/zys/brokenview/Utils;->nextInt(I)I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, p2}, Lcom/zys/brokenview/LinePath;->setEndPoint(II)V

    goto :goto_1

    .line 227
    :cond_3
    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v1}, Lcom/zys/brokenview/Utils;->nextInt(I)I

    move-result v1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    invoke-virtual {p1, v0, v1}, Lcom/zys/brokenview/LinePath;->setEndPoint(II)V

    goto :goto_1

    .line 224
    :cond_4
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0}, Lcom/zys/brokenview/Utils;->nextInt(I)I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, p2}, Lcom/zys/brokenview/LinePath;->setEndPoint(II)V

    goto :goto_1

    .line 221
    :cond_5
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v1}, Lcom/zys/brokenview/Utils;->nextInt(I)I

    move-result v1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    invoke-virtual {p1, v0, v1}, Lcom/zys/brokenview/LinePath;->setEndPoint(II)V

    .line 233
    :goto_1
    invoke-virtual {p1}, Lcom/zys/brokenview/LinePath;->lineToEnd()V

    return-void
.end method

.method private buildPaintShader()V
    .locals 4

    .line 363
    iget-object v0, p0, Lcom/zys/brokenview/BrokenAnimator;->mConfig:Lcom/zys/brokenview/BrokenConfig;

    iget-object v0, v0, Lcom/zys/brokenview/BrokenConfig;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zys/brokenview/BrokenAnimator;->onDrawPaint:Landroid/graphics/Paint;

    .line 365
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/zys/brokenview/BrokenAnimator;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 366
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 368
    iget v2, p0, Lcom/zys/brokenview/BrokenAnimator;->offsetX:I

    neg-int v2, v2

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget v3, p0, Lcom/zys/brokenview/BrokenAnimator;->offsetY:I

    neg-int v3, v3

    add-int/lit8 v3, v3, -0x7

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 369
    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 370
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    const/16 v2, 0x14

    new-array v2, v2, [F

    .line 372
    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 377
    iget-object v2, p0, Lcom/zys/brokenview/BrokenAnimator;->onDrawPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 378
    iget-object v1, p0, Lcom/zys/brokenview/BrokenAnimator;->onDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 379
    iget-object v0, p0, Lcom/zys/brokenview/BrokenAnimator;->onDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/zys/brokenview/BrokenAnimator;->mConfig:Lcom/zys/brokenview/BrokenConfig;

    iget-object v0, v0, Lcom/zys/brokenview/BrokenConfig;->paint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/zys/brokenview/BrokenAnimator;->onDrawPaint:Landroid/graphics/Paint;

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x40200000    # 2.5f
        0x0
        0x0
        0x0
        0x42c80000    # 100.0f
        0x0
        0x40200000    # 2.5f
        0x0
        0x0
        0x42c80000    # 100.0f
        0x0
        0x0
        0x40200000    # 2.5f
        0x0
        0x42c80000    # 100.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private buildPieces()V
    .locals 15

    .line 314
    iget-object v0, p0, Lcom/zys/brokenview/BrokenAnimator;->pathArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/zys/brokenview/Piece;

    iput-object v0, p0, Lcom/zys/brokenview/BrokenAnimator;->pieces:[Lcom/zys/brokenview/Piece;

    .line 315
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 316
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 317
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 318
    :goto_0
    iget-object v5, p0, Lcom/zys/brokenview/BrokenAnimator;->pieces:[Lcom/zys/brokenview/Piece;

    array-length v6, v5

    if-ge v4, v6, :cond_1

    const/4 v5, 0x2

    .line 319
    invoke-static {v5}, Lcom/zys/brokenview/Utils;->dp2px(I)I

    move-result v5

    const/16 v6, 0x9

    invoke-static {v6}, Lcom/zys/brokenview/Utils;->dp2px(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/zys/brokenview/Utils;->nextInt(II)I

    move-result v5

    .line 320
    iget-object v6, p0, Lcom/zys/brokenview/BrokenAnimator;->pathArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Path;

    .line 321
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    const/4 v8, 0x1

    .line 322
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 324
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v9

    float-to-int v9, v9

    mul-int/lit8 v10, v5, 0x2

    add-int/2addr v9, v10

    .line 325
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v11

    float-to-int v11, v11

    add-int/2addr v11, v10

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 324
    invoke-static {v9, v11, v10, v8}, Lcom/zys/brokenview/Utils;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    .line 327
    iget-object v6, p0, Lcom/zys/brokenview/BrokenAnimator;->pieces:[Lcom/zys/brokenview/Piece;

    new-instance v7, Lcom/zys/brokenview/Piece;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v8, v9, v5}, Lcom/zys/brokenview/Piece;-><init>(IILandroid/graphics/Bitmap;I)V

    aput-object v7, v6, v4

    goto/16 :goto_1

    .line 330
    :cond_0
    iget-object v10, p0, Lcom/zys/brokenview/BrokenAnimator;->pieces:[Lcom/zys/brokenview/Piece;

    new-instance v11, Lcom/zys/brokenview/Piece;

    iget v12, v7, Landroid/graphics/RectF;->left:F

    float-to-int v12, v12

    iget-object v13, p0, Lcom/zys/brokenview/BrokenAnimator;->mTouchPoint:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    add-int/2addr v12, v13

    sub-int/2addr v12, v5

    iget v13, v7, Landroid/graphics/RectF;->top:F

    float-to-int v13, v13

    iget-object v14, p0, Lcom/zys/brokenview/BrokenAnimator;->mTouchPoint:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    add-int/2addr v13, v14

    sub-int/2addr v13, v5

    invoke-direct {v11, v12, v13, v8, v5}, Lcom/zys/brokenview/Piece;-><init>(IILandroid/graphics/Bitmap;I)V

    aput-object v11, v10, v4

    .line 332
    iget-object v8, p0, Lcom/zys/brokenview/BrokenAnimator;->pieces:[Lcom/zys/brokenview/Piece;

    aget-object v8, v8, v4

    iget-object v8, v8, Lcom/zys/brokenview/Piece;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 333
    new-instance v8, Landroid/graphics/BitmapShader;

    iget-object v10, p0, Lcom/zys/brokenview/BrokenAnimator;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v8, v10, v11, v12}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 334
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 335
    iget v10, v7, Landroid/graphics/RectF;->left:F

    neg-float v10, v10

    iget v11, p0, Lcom/zys/brokenview/BrokenAnimator;->offsetX:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    int-to-float v5, v5

    add-float/2addr v10, v5

    iget v11, v7, Landroid/graphics/RectF;->top:F

    neg-float v11, v11

    iget v12, p0, Lcom/zys/brokenview/BrokenAnimator;->offsetY:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    add-float/2addr v11, v5

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 336
    invoke-virtual {v8, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 338
    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 339
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    .line 340
    iget v11, v7, Landroid/graphics/RectF;->left:F

    neg-float v11, v11

    add-float/2addr v11, v5

    iget v7, v7, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    add-float/2addr v7, v5

    invoke-virtual {v10, v6, v11, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    .line 343
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v6, -0xcccccd

    const/4 v7, 0x0

    .line 344
    invoke-virtual {v0, v5, v7, v7, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 345
    invoke-virtual {v2, v10, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 346
    invoke-virtual {v0, v7, v7, v7, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 349
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 350
    invoke-virtual {v2, v10, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 351
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 354
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/16 v5, 0xcc

    .line 355
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 356
    invoke-virtual {v2, v10, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 359
    :cond_1
    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-void
.end method

.method private warpStraightLines()V
    .locals 8

    .line 389
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 390
    :goto_0
    iget-object v3, p0, Lcom/zys/brokenview/BrokenAnimator;->mConfig:Lcom/zys/brokenview/BrokenConfig;

    iget v3, v3, Lcom/zys/brokenview/BrokenConfig;->complexity:I

    if-ge v2, v3, :cond_1

    .line 391
    iget-object v3, p0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/zys/brokenview/LinePath;->isStraight()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    iget-object v3, p0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 394
    iget-object v3, p0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v3, v3, v2

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/zys/brokenview/LinePath;->setStartLength(F)V

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 396
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    div-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 397
    aget v4, v3, v1

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/zys/brokenview/Utils;->dp2px(I)I

    move-result v6

    neg-int v6, v6

    invoke-static {v5}, Lcom/zys/brokenview/Utils;->dp2px(I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/zys/brokenview/Utils;->nextInt(II)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    float-to-int v4, v4

    .line 398
    aget v3, v3, v5

    invoke-static {v5}, Lcom/zys/brokenview/Utils;->dp2px(I)I

    move-result v6

    neg-int v6, v6

    invoke-static {v5}, Lcom/zys/brokenview/Utils;->dp2px(I)I

    move-result v5

    invoke-static {v6, v5}, Lcom/zys/brokenview/Utils;->nextInt(II)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    .line 399
    iget-object v5, p0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/zys/brokenview/LinePath;->reset()V

    .line 400
    iget-object v5, p0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6}, Lcom/zys/brokenview/LinePath;->moveTo(FF)V

    .line 401
    iget-object v5, p0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v5, v5, v2

    int-to-float v4, v4

    int-to-float v3, v3

    invoke-virtual {v5, v4, v3}, Lcom/zys/brokenview/LinePath;->lineTo(FF)V

    .line 402
    iget-object v3, p0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/zys/brokenview/LinePath;->lineToEnd()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public doReverse()Z
    .locals 1

    .line 499
    iget-boolean v0, p0, Lcom/zys/brokenview/BrokenAnimator;->canReverse:Z

    if-eqz v0, :cond_0

    .line 500
    iget-boolean v0, p0, Lcom/zys/brokenview/BrokenAnimator;->bPressed:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/zys/brokenview/BrokenAnimator;->bPressed:Z

    .line 501
    invoke-virtual {p0}, Lcom/zys/brokenview/BrokenAnimator;->reverse()V

    .line 503
    :cond_0
    iget-boolean v0, p0, Lcom/zys/brokenview/BrokenAnimator;->canReverse:Z

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 10

    .line 507
    invoke-virtual {p0}, Lcom/zys/brokenview/BrokenAnimator;->isStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 511
    :cond_0
    invoke-virtual {p0}, Lcom/zys/brokenview/BrokenAnimator;->getAnimatedFraction()F

    move-result v0

    .line 512
    invoke-virtual {p0}, Lcom/zys/brokenview/BrokenAnimator;->getStage()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    .line 513
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 514
    iget-object v2, p0, Lcom/zys/brokenview/BrokenAnimator;->mTouchPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v5, p0, Lcom/zys/brokenview/BrokenAnimator;->mTouchPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    .line 516
    :goto_0
    iget-object v5, p0, Lcom/zys/brokenview/BrokenAnimator;->mConfig:Lcom/zys/brokenview/BrokenConfig;

    iget v5, v5, Lcom/zys/brokenview/BrokenConfig;->complexity:I

    if-ge v2, v5, :cond_4

    .line 517
    iget-object v5, p0, Lcom/zys/brokenview/BrokenAnimator;->onDrawPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 518
    iget-object v5, p0, Lcom/zys/brokenview/BrokenAnimator;->onDrawPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 519
    iget-object v5, p0, Lcom/zys/brokenview/BrokenAnimator;->onDrawPM:Landroid/graphics/PathMeasure;

    iget-object v6, p0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 520
    iget-object v5, p0, Lcom/zys/brokenview/BrokenAnimator;->onDrawPM:Landroid/graphics/PathMeasure;

    invoke-virtual {v5}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    .line 521
    iget-object v6, p0, Lcom/zys/brokenview/BrokenAnimator;->lineRifts:[Lcom/zys/brokenview/LinePath;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/zys/brokenview/LinePath;->getStartLength()F

    move-result v6

    sub-float v7, v5, v6

    mul-float v7, v7, v0

    add-float/2addr v6, v7

    cmpl-float v7, v6, v5

    if-lez v7, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    .line 525
    :goto_1
    iget-object v6, p0, Lcom/zys/brokenview/BrokenAnimator;->onDrawPM:Landroid/graphics/PathMeasure;

    iget-object v7, p0, Lcom/zys/brokenview/BrokenAnimator;->onDrawPath:Landroid/graphics/Path;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v5, v7, v1}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 526
    iget-object v5, p0, Lcom/zys/brokenview/BrokenAnimator;->onDrawPath:Landroid/graphics/Path;

    invoke-virtual {v5, v8, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 527
    iget-object v5, p0, Lcom/zys/brokenview/BrokenAnimator;->onDrawPath:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/zys/brokenview/BrokenAnimator;->onDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 529
    iget-boolean v5, p0, Lcom/zys/brokenview/BrokenAnimator;->hasCircleRifts:Z

    if-eqz v5, :cond_3

    .line 530
    iget-object v5, p0, Lcom/zys/brokenview/BrokenAnimator;->circleRifts:[Landroid/graphics/Path;

    aget-object v5, v5, v2

    if-eqz v5, :cond_3

    float-to-double v5, v0

    const-wide v7, 0x3fb999999999999aL    # 0.1

    cmpl-double v9, v5, v7

    if-lez v9, :cond_3

    .line 531
    iget-object v5, p0, Lcom/zys/brokenview/BrokenAnimator;->onDrawPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v5, 0x3dcccccd    # 0.1f

    sub-float v5, v0, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v5, v5, v6

    cmpl-float v6, v5, v3

    if-lez v6, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    .line 534
    :cond_2
    iget-object v6, p0, Lcom/zys/brokenview/BrokenAnimator;->onDrawPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/zys/brokenview/BrokenAnimator;->circleWidth:[I

    aget v7, v7, v2

    int-to-float v7, v7

    mul-float v7, v7, v5

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 535
    iget-object v5, p0, Lcom/zys/brokenview/BrokenAnimator;->circleRifts:[Landroid/graphics/Path;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/zys/brokenview/BrokenAnimator;->onDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    float-to-double v2, v0

    const-wide v5, 0x3fe999999999999aL    # 0.8

    cmpl-double v0, v2, v5

    if-lez v0, :cond_5

    .line 539
    iget-boolean v0, p0, Lcom/zys/brokenview/BrokenAnimator;->bPressed:Z

    if-eqz v0, :cond_5

    .line 540
    iput-boolean v1, p0, Lcom/zys/brokenview/BrokenAnimator;->canReverse:Z

    .line 541
    invoke-virtual {p0, v4}, Lcom/zys/brokenview/BrokenAnimator;->setRepeatCount(I)V

    .line 543
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    .line 545
    :cond_6
    invoke-virtual {p0}, Lcom/zys/brokenview/BrokenAnimator;->getStage()I

    move-result v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v2, v5, :cond_9

    .line 546
    iget-object v2, p0, Lcom/zys/brokenview/BrokenAnimator;->pieces:[Lcom/zys/brokenview/Piece;

    array-length v3, v2

    .line 547
    array-length v5, v2

    :goto_2
    if-ge v1, v5, :cond_8

    aget-object v7, v2, v1

    .line 548
    iget-object v8, v7, Lcom/zys/brokenview/Piece;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_7

    invoke-virtual {v7, v0}, Lcom/zys/brokenview/Piece;->advance(F)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 549
    iget-object v8, v7, Lcom/zys/brokenview/Piece;->bitmap:Landroid/graphics/Bitmap;

    iget-object v7, v7, Lcom/zys/brokenview/Piece;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v8, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, -0x1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    if-nez v3, :cond_b

    const/4 p1, 0x3

    .line 554
    invoke-virtual {p0, p1}, Lcom/zys/brokenview/BrokenAnimator;->setStage(I)V

    .line 555
    iget-object p1, p0, Lcom/zys/brokenview/BrokenAnimator;->mBrokenView:Lcom/zys/brokenview/BrokenView;

    iget-object v0, p0, Lcom/zys/brokenview/BrokenAnimator;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/zys/brokenview/BrokenView;->onBrokenFallingEnd(Landroid/view/View;)V

    goto :goto_5

    .line 558
    :cond_9
    invoke-virtual {p0}, Lcom/zys/brokenview/BrokenAnimator;->getStage()I

    move-result v2

    if-nez v2, :cond_b

    .line 559
    iget-object v2, p0, Lcom/zys/brokenview/BrokenAnimator;->pieces:[Lcom/zys/brokenview/Piece;

    array-length v2, v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    div-float/2addr v0, v3

    float-to-int v0, v0

    :goto_4
    if-gt v1, v0, :cond_b

    .line 562
    iget-object v2, p0, Lcom/zys/brokenview/BrokenAnimator;->pieces:[Lcom/zys/brokenview/Piece;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/zys/brokenview/Piece;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a

    .line 563
    iget-object v2, p0, Lcom/zys/brokenview/BrokenAnimator;->pieces:[Lcom/zys/brokenview/Piece;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/zys/brokenview/Piece;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/zys/brokenview/BrokenAnimator;->pieces:[Lcom/zys/brokenview/Piece;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/zys/brokenview/Piece;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 566
    :cond_b
    :goto_5
    iget-object p1, p0, Lcom/zys/brokenview/BrokenAnimator;->mBrokenView:Lcom/zys/brokenview/BrokenView;

    invoke-virtual {p1}, Lcom/zys/brokenview/BrokenView;->invalidate()V

    return v4
.end method

.method public drawBorder(Landroid/graphics/Path;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 2

    .line 408
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p4, Landroid/graphics/Rect;->right:I

    if-ne v0, v1, :cond_3

    .line 409
    iget p2, p3, Landroid/graphics/Point;->x:I

    iget v0, p4, Landroid/graphics/Rect;->right:I

    if-ne p2, v0, :cond_0

    .line 410
    iget p2, p3, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 411
    :cond_0
    iget p2, p3, Landroid/graphics/Point;->y:I

    iget v0, p4, Landroid/graphics/Rect;->top:I

    if-ne p2, v0, :cond_1

    .line 412
    iget p2, p4, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget p4, p4, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 413
    iget p2, p3, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 415
    :cond_1
    iget p2, p3, Landroid/graphics/Point;->x:I

    iget v0, p4, Landroid/graphics/Rect;->left:I

    if-ne p2, v0, :cond_2

    .line 416
    iget p2, p4, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget v0, p4, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 417
    iget p2, p4, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p4, p4, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 418
    iget p2, p3, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 419
    :cond_2
    iget p2, p3, Landroid/graphics/Point;->y:I

    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    if-ne p2, v0, :cond_f

    .line 420
    iget p2, p4, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget v0, p4, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 421
    iget p2, p4, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget v0, p4, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 422
    iget p2, p4, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    int-to-float p4, p4

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 423
    iget p2, p3, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 426
    :cond_3
    iget v0, p2, Landroid/graphics/Point;->y:I

    iget v1, p4, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_7

    .line 427
    iget p2, p3, Landroid/graphics/Point;->y:I

    iget v0, p4, Landroid/graphics/Rect;->top:I

    if-ne p2, v0, :cond_4

    .line 428
    iget p2, p3, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 429
    :cond_4
    iget p2, p3, Landroid/graphics/Point;->x:I

    iget v0, p4, Landroid/graphics/Rect;->left:I

    if-ne p2, v0, :cond_5

    .line 430
    iget p2, p4, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p4, p4, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 431
    iget p2, p3, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 432
    :cond_5
    iget p2, p3, Landroid/graphics/Point;->y:I

    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    if-ne p2, v0, :cond_6

    .line 433
    iget p2, p4, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget v0, p4, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 434
    iget p2, p4, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    int-to-float p4, p4

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 435
    iget p2, p3, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 436
    :cond_6
    iget p2, p3, Landroid/graphics/Point;->x:I

    iget v0, p4, Landroid/graphics/Rect;->right:I

    if-ne p2, v0, :cond_f

    .line 437
    iget p2, p4, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget v0, p4, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 438
    iget p2, p4, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 439
    iget p2, p4, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    int-to-float p4, p4

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 440
    iget p2, p3, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 443
    :cond_7
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p4, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_b

    .line 444
    iget p2, p3, Landroid/graphics/Point;->x:I

    iget v0, p4, Landroid/graphics/Rect;->left:I

    if-ne p2, v0, :cond_8

    .line 445
    iget p2, p3, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 446
    :cond_8
    iget p2, p3, Landroid/graphics/Point;->y:I

    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    if-ne p2, v0, :cond_9

    .line 447
    iget p2, p4, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    int-to-float p4, p4

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 448
    iget p2, p3, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 449
    :cond_9
    iget p2, p3, Landroid/graphics/Point;->x:I

    iget v0, p4, Landroid/graphics/Rect;->right:I

    if-ne p2, v0, :cond_a

    .line 450
    iget p2, p4, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 451
    iget p2, p4, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    int-to-float p4, p4

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 452
    iget p2, p3, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 453
    :cond_a
    iget p2, p3, Landroid/graphics/Point;->y:I

    iget v0, p4, Landroid/graphics/Rect;->top:I

    if-ne p2, v0, :cond_f

    .line 454
    iget p2, p4, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 455
    iget p2, p4, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 456
    iget p2, p4, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget p4, p4, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 457
    iget p2, p3, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 460
    :cond_b
    iget p2, p2, Landroid/graphics/Point;->y:I

    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    if-ne p2, v0, :cond_f

    .line 461
    iget p2, p3, Landroid/graphics/Point;->y:I

    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    if-ne p2, v0, :cond_c

    .line 462
    iget p2, p3, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 464
    :cond_c
    iget p2, p3, Landroid/graphics/Point;->x:I

    iget v0, p4, Landroid/graphics/Rect;->right:I

    if-ne p2, v0, :cond_d

    .line 465
    iget p2, p4, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    int-to-float p4, p4

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 466
    iget p2, p3, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 467
    :cond_d
    iget p2, p3, Landroid/graphics/Point;->y:I

    iget v0, p4, Landroid/graphics/Rect;->top:I

    if-ne p2, v0, :cond_e

    .line 468
    iget p2, p4, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 469
    iget p2, p4, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget p4, p4, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 470
    iget p2, p3, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 471
    :cond_e
    iget p2, p3, Landroid/graphics/Point;->x:I

    iget v0, p4, Landroid/graphics/Rect;->left:I

    if-ne p2, v0, :cond_f

    .line 472
    iget p2, p4, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 473
    iget p2, p4, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget v0, p4, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 474
    iget p2, p4, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p4, p4, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 475
    iget p2, p3, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_f
    :goto_0
    return-void
.end method

.method public getStage()I
    .locals 1

    .line 484
    iget v0, p0, Lcom/zys/brokenview/BrokenAnimator;->stage:I

    return v0
.end method

.method public setFallingDuration()V
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/zys/brokenview/BrokenAnimator;->mConfig:Lcom/zys/brokenview/BrokenConfig;

    iget v0, v0, Lcom/zys/brokenview/BrokenConfig;->fallDuration:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/zys/brokenview/BrokenAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public setStage(I)V
    .locals 0

    .line 481
    iput p1, p0, Lcom/zys/brokenview/BrokenAnimator;->stage:I

    return-void
.end method

.method public start()V
    .locals 1

    .line 493
    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    .line 494
    iput-boolean v0, p0, Lcom/zys/brokenview/BrokenAnimator;->canReverse:Z

    .line 495
    iget-object v0, p0, Lcom/zys/brokenview/BrokenAnimator;->mBrokenView:Lcom/zys/brokenview/BrokenView;

    invoke-virtual {v0}, Lcom/zys/brokenview/BrokenView;->invalidate()V

    return-void
.end method
