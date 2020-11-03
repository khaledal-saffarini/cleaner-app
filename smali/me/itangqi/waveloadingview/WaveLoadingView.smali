.class public Lme/itangqi/waveloadingview/WaveLoadingView;
.super Landroid/view/View;
.source "WaveLoadingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;,
        Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;
    }
.end annotation


# static fields
.field private static final DEFAULT_AMPLITUDE_RATIO:F = 0.1f

.field private static final DEFAULT_AMPLITUDE_VALUE:F = 50.0f

.field private static final DEFAULT_BORDER_WIDTH:F = 0.0f

.field private static final DEFAULT_ROUND_RECTANGLE_X_AND_Y:I = 0x1e

.field private static final DEFAULT_STROKE_COLOR:I = 0x0

.field private static final DEFAULT_TITLE_BOTTOM_SIZE:F = 18.0f

.field private static final DEFAULT_TITLE_CENTER_SIZE:F = 22.0f

.field private static final DEFAULT_TITLE_COLOR:I

.field private static final DEFAULT_TITLE_STROKE_WIDTH:F = 0.0f

.field private static final DEFAULT_TITLE_TOP_SIZE:F = 18.0f

.field private static final DEFAULT_TRIANGLE_DIRECTION:I

.field private static final DEFAULT_WATER_LEVEL_RATIO:F = 0.5f

.field private static final DEFAULT_WAVE_BACKGROUND_COLOR:I

.field private static final DEFAULT_WAVE_COLOR:I

.field private static final DEFAULT_WAVE_LENGTH_RATIO:F = 1.0f

.field private static final DEFAULT_WAVE_PROGRESS_VALUE:I = 0x32

.field private static final DEFAULT_WAVE_SHAPE:I

.field private static final DEFAULT_WAVE_SHIFT_RATIO:F


# instance fields
.field private bitmapBuffer:Landroid/graphics/Bitmap;

.field private mAmplitudeRatio:F

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBottomTitle:Ljava/lang/String;

.field private mBottomTitlePaint:Landroid/graphics/Paint;

.field private mBottomTitleStrokePaint:Landroid/graphics/Paint;

.field private mCanvasHeight:I

.field private mCanvasSize:I

.field private mCanvasWidth:I

.field private mCenterTitle:Ljava/lang/String;

.field private mCenterTitlePaint:Landroid/graphics/Paint;

.field private mCenterTitleStrokePaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mDefaultWaterLevel:F

.field private mIsRoundRectangle:Z

.field private mProgressValue:I

.field private mRoundRectangleXY:I

.field private mShaderMatrix:Landroid/graphics/Matrix;

.field private mShapeType:I

.field private mTopTitle:Ljava/lang/String;

.field private mTopTitlePaint:Landroid/graphics/Paint;

.field private mTopTitleStrokePaint:Landroid/graphics/Paint;

.field private mTriangleDirection:I

.field private mWaterLevelRatio:F

.field private mWaveBgColor:I

.field private mWaveBgPaint:Landroid/graphics/Paint;

.field private mWaveColor:I

.field private mWavePaint:Landroid/graphics/Paint;

.field private mWaveShader:Landroid/graphics/BitmapShader;

.field private mWaveShiftRatio:F

.field private waveShiftAnim:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "#212121"

    .line 50
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lme/itangqi/waveloadingview/WaveLoadingView;->DEFAULT_WAVE_COLOR:I

    const-string v1, "#00000000"

    .line 51
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lme/itangqi/waveloadingview/WaveLoadingView;->DEFAULT_WAVE_BACKGROUND_COLOR:I

    .line 52
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lme/itangqi/waveloadingview/WaveLoadingView;->DEFAULT_TITLE_COLOR:I

    .line 57
    sget-object v0, Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;->CIRCLE:Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;

    invoke-virtual {v0}, Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;->ordinal()I

    move-result v0

    sput v0, Lme/itangqi/waveloadingview/WaveLoadingView;->DEFAULT_WAVE_SHAPE:I

    .line 58
    sget-object v0, Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;->NORTH:Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;

    invoke-virtual {v0}, Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;->ordinal()I

    move-result v0

    sput v0, Lme/itangqi/waveloadingview/WaveLoadingView;->DEFAULT_TRIANGLE_DIRECTION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, v0}, Lme/itangqi/waveloadingview/WaveLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, p1, p2, v0}, Lme/itangqi/waveloadingview/WaveLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 136
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 94
    iput v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaterLevelRatio:F

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveShiftRatio:F

    const/16 v0, 0x32

    .line 96
    iput v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mProgressValue:I

    .line 137
    invoke-direct {p0, p1, p2, p3}, Lme/itangqi/waveloadingview/WaveLoadingView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private adjustAlpha(IF)I
    .locals 2

    .line 772
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 773
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 774
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 775
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 776
    invoke-static {p2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private dp2px(F)I
    .locals 1

    .line 791
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private getEquilateralTriangle(Landroid/graphics/Point;III)Landroid/graphics/Path;
    .locals 8

    const/4 v0, 0x0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    const/4 v5, 0x2

    if-nez p4, :cond_0

    .line 808
    new-instance v0, Landroid/graphics/Point;

    iget p4, p1, Landroid/graphics/Point;->x:I

    add-int/2addr p4, p2

    iget v6, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v0, p4, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 809
    new-instance p4, Landroid/graphics/Point;

    iget v6, p1, Landroid/graphics/Point;->x:I

    div-int/2addr p2, v5

    add-int/2addr v6, p2

    int-to-double p2, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v3, v1

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, p2

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p2, v3

    double-to-int p2, p2

    invoke-direct {p4, v6, p2}, Landroid/graphics/Point;-><init>(II)V

    :goto_0
    move-object p3, p4

    goto/16 :goto_1

    :cond_0
    const/4 v6, 0x1

    if-ne p4, v6, :cond_1

    .line 813
    new-instance v0, Landroid/graphics/Point;

    iget p4, p1, Landroid/graphics/Point;->x:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, p3

    invoke-direct {v0, p4, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 814
    new-instance p4, Landroid/graphics/Point;

    iget v6, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v6, p2

    iget v7, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, p3

    invoke-direct {p4, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 815
    iget v6, p1, Landroid/graphics/Point;->x:I

    div-int/2addr p2, v5

    add-int/2addr v6, p2

    iput v6, p1, Landroid/graphics/Point;->x:I

    .line 816
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v3, v1

    int-to-double p2, p3

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, p2

    double-to-int p2, v3

    iput p2, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_1
    if-ne p4, v5, :cond_2

    .line 820
    new-instance v0, Landroid/graphics/Point;

    iget p4, p1, Landroid/graphics/Point;->x:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, p3

    invoke-direct {v0, p4, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 821
    new-instance p3, Landroid/graphics/Point;

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v3, v1

    int-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    double-to-int p2, v3

    iget p4, p1, Landroid/graphics/Point;->y:I

    div-int/2addr p4, v5

    invoke-direct {p3, p2, p4}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x3

    if-ne p4, v6, :cond_3

    .line 825
    new-instance v0, Landroid/graphics/Point;

    iget p4, p1, Landroid/graphics/Point;->x:I

    add-int/2addr p4, p2

    iget v6, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, p3

    invoke-direct {v0, p4, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 826
    new-instance p3, Landroid/graphics/Point;

    iget p4, p1, Landroid/graphics/Point;->x:I

    add-int/2addr p4, p2

    iget v6, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p3, p4, v6}, Landroid/graphics/Point;-><init>(II)V

    int-to-double v6, p2

    .line 827
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v3, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v6, v3

    double-to-int p2, v6

    iput p2, p1, Landroid/graphics/Point;->x:I

    .line 828
    iget p2, p1, Landroid/graphics/Point;->y:I

    div-int/2addr p2, v5

    iput p2, p1, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_3
    move-object p3, v0

    .line 831
    :goto_1
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 832
    iget p4, p1, Landroid/graphics/Point;->x:I

    int-to-float p4, p4

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p2, p4, p1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 833
    iget p1, v0, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget p4, v0, Landroid/graphics/Point;->y:I

    int-to-float p4, p4

    invoke-virtual {p2, p1, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 834
    iget p1, p3, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    return-object p2
.end method

.method private haveBoundsChanged()Z
    .locals 2

    .line 430
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->bitmapBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 431
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->bitmapBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

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

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 141
    iput-object p1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mContext:Landroid/content/Context;

    .line 143
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 144
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWavePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 147
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 148
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveBgPaint:Landroid/graphics/Paint;

    .line 149
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    invoke-direct {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->initAnimation()V

    .line 154
    sget-object v0, Lme/itangqi/library/R$styleable;->WaveLoadingView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 157
    sget p2, Lme/itangqi/library/R$styleable;->WaveLoadingView_wlv_shapeType:I

    sget p3, Lme/itangqi/waveloadingview/WaveLoadingView;->DEFAULT_WAVE_SHAPE:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mShapeType:I

    .line 160
    sget p2, Lme/itangqi/library/R$styleable;->WaveLoadingView_wlv_waveColor:I

    sget p3, Lme/itangqi/waveloadingview/WaveLoadingView;->DEFAULT_WAVE_COLOR:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveColor:I

    .line 161
    sget p2, Lme/itangqi/library/R$styleable;->WaveLoadingView_wlv_wave_background_Color:I

    sget p3, Lme/itangqi/waveloadingview/WaveLoadingView;->DEFAULT_WAVE_BACKGROUND_COLOR:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveBgColor:I

    .line 163
    iget-object p3, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    sget p2, Lme/itangqi/library/R$styleable;->WaveLoadingView_wlv_waveAmplitude:I

    const/high16 p3, 0x42480000    # 50.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p2, p3

    const p3, 0x3dcccccd    # 0.1f

    cmpl-float v0, p2, p3

    if-lez v0, :cond_0

    const p2, 0x3dcccccd    # 0.1f

    .line 167
    :cond_0
    iput p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mAmplitudeRatio:F

    .line 170
    sget p2, Lme/itangqi/library/R$styleable;->WaveLoadingView_wlv_progressValue:I

    const/16 p3, 0x32

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mProgressValue:I

    .line 171
    invoke-virtual {p0, p2}, Lme/itangqi/waveloadingview/WaveLoadingView;->setProgressValue(I)V

    .line 174
    sget p2, Lme/itangqi/library/R$styleable;->WaveLoadingView_wlv_round_rectangle:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mIsRoundRectangle:Z

    .line 175
    sget p2, Lme/itangqi/library/R$styleable;->WaveLoadingView_wlv_round_rectangle_x_and_y:I

    const/16 p3, 0x1e

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mRoundRectangleXY:I

    .line 178
    sget p2, Lme/itangqi/library/R$styleable;->WaveLoadingView_wlv_triangle_direction:I

    sget p3, Lme/itangqi/waveloadingview/WaveLoadingView;->DEFAULT_TRIANGLE_DIRECTION:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTriangleDirection:I

    .line 181
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBorderPaint:Landroid/graphics/Paint;

    .line 182
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 183
    iget-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 184
    iget-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBorderPaint:Landroid/graphics/Paint;

    sget p3, Lme/itangqi/library/R$styleable;->WaveLoadingView_wlv_borderWidth:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lme/itangqi/waveloadingview/WaveLoadingView;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 185
    iget-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBorderPaint:Landroid/graphics/Paint;

    sget p3, Lme/itangqi/library/R$styleable;->WaveLoadingView_wlv_borderColor:I

    sget v3, Lme/itangqi/waveloadingview/WaveLoadingView;->DEFAULT_WAVE_COLOR:I

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTopTitlePaint:Landroid/graphics/Paint;

    .line 189
    sget p3, Lme/itangqi/library/R$styleable;->WaveLoadingView_wlv_titleTopColor:I

    sget v3, Lme/itangqi/waveloadingview/WaveLoadingView;->DEFAULT_TITLE_COLOR:I

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    iget-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTopTitlePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 191
    iget-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTopTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 192
    iget-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTopTitlePaint:Landroid/graphics/Paint;

    sget p3, Lme/itangqi/library/R$styleable;->WaveLoadingView_wlv_titleTopSize:I

    const/high16 v3, 0x41900000    # 18.0f

    invoke-direct {p0, v3}, Lme/itangqi/waveloadingview/WaveLoadingView;->sp2px(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, p3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 194
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTopTitleStrokePaint:Landroid/graphics/Paint;

    .line 195
    sget p3, Lme/itangqi/library/R$styleable;->WaveLoadingView_wlv_titleTopStrokeColor:I

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    iget-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTopTitleStrokePaint:Landroid/graphics/Paint;

    sget p3, Lme/itangqi/library/R$styleable;->WaveLoadingView_wlv_titleTopStrokeWidth:I

    invoke-direct {p0, v0}, Lme/itangqi/waveloadingview/WaveLoadingView;->dp2px(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, p3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 197
    iget-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTopTitleStrokePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 198
    iget-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTopTitleStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 199
    iget-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTopTitleStrokePaint:Landroid/graphics/Paint;

    iget-object p3, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTopTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getTextSize()F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 201
    sget p2, Lme/itangqi/library/R$styleable;->WaveLoadingView_wlv_titleTop:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTopTitle:Ljava/lang/String;

    .line 204
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitlePaint:Landroid/graphics/Paint;

    .line 205
    sget p3, Lme/itangqi/library/R$styleable;->WaveLoadingView_wlv_titleCenterColor:I

    sget v4, Lme/itangqi/waveloadingview/WaveLoadingView;->DEFAULT_TITLE_COLOR:I

    invoke-virtual {p1, p3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    iget-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitlePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 207
    iget-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 208
    iget-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitlePaint:Landroid/graphics/Paint;

    sget p3, Lme/itangqi/library/R$styleable;->WaveLoadingView_wlv_titleCenterSize:I

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-direct {p0, v4}, Lme/itangqi/waveloadingview/WaveLoadingView;->sp2px(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, p3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 210
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitleStrokePaint:Landroid/graphics/Paint;

    .line 211
    sget p3, Lme/itangqi/library/R$styleable;->WaveLoadingView_wlv_titleCenterStrokeColor:I

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    iget-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitleStrokePaint:Landroid/graphics/Paint;

    sget p3, Lme/itangqi/library/R$styleable;->WaveLoadingView_wlv_titleCenterStrokeWidth:I

    invoke-direct {p0, v0}, Lme/itangqi/waveloadingview/WaveLoadingView;->dp2px(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, p3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 213
    iget-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitleStrokePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 214
    iget-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitleStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 215
    iget-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitleStrokePaint:Landroid/graphics/Paint;

    iget-object p3, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getTextSize()F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 217
    sget p2, Lme/itangqi/library/R$styleable;->WaveLoadingView_wlv_titleCenter:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitle:Ljava/lang/String;

    .line 220
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitlePaint:Landroid/graphics/Paint;

    .line 221
    sget p3, Lme/itangqi/library/R$styleable;->WaveLoadingView_wlv_titleBottomColor:I

    sget v4, Lme/itangqi/waveloadingview/WaveLoadingView;->DEFAULT_TITLE_COLOR:I

    invoke-virtual {p1, p3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    iget-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitlePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 223
    iget-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 224
    iget-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitlePaint:Landroid/graphics/Paint;

    sget p3, Lme/itangqi/library/R$styleable;->WaveLoadingView_wlv_titleBottomSize:I

    invoke-direct {p0, v3}, Lme/itangqi/waveloadingview/WaveLoadingView;->sp2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 226
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitleStrokePaint:Landroid/graphics/Paint;

    .line 227
    sget p3, Lme/itangqi/library/R$styleable;->WaveLoadingView_wlv_titleBottomStrokeColor:I

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    iget-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitleStrokePaint:Landroid/graphics/Paint;

    sget p3, Lme/itangqi/library/R$styleable;->WaveLoadingView_wlv_titleBottomStrokeWidth:I

    invoke-direct {p0, v0}, Lme/itangqi/waveloadingview/WaveLoadingView;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 229
    iget-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitleStrokePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 230
    iget-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitleStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 231
    iget-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitleStrokePaint:Landroid/graphics/Paint;

    iget-object p3, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getTextSize()F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 233
    sget p2, Lme/itangqi/library/R$styleable;->WaveLoadingView_wlv_titleBottom:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitle:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initAnimation()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 743
    fill-array-data v0, :array_0

    const-string v1, "waveShiftRatio"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->waveShiftAnim:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    .line 744
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 745
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->waveShiftAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 746
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->waveShiftAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 747
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 748
    iget-object v1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->waveShiftAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private measureHeight(I)I
    .locals 2

    .line 468
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 469
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 479
    :cond_1
    iget p1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCanvasHeight:I

    :goto_0
    add-int/lit8 p1, p1, 0x2

    return p1
.end method

.method private measureWidth(I)I
    .locals 2

    .line 450
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 451
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 461
    :cond_1
    iget p1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCanvasWidth:I

    :goto_0
    return p1
.end method

.method private sp2px(F)I
    .locals 1

    .line 786
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private updateWaveShader()V
    .locals 20

    move-object/from16 v0, p0

    .line 383
    iget-object v1, v0, Lme/itangqi/waveloadingview/WaveLoadingView;->bitmapBuffer:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->haveBoundsChanged()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 384
    :cond_0
    iget-object v1, v0, Lme/itangqi/waveloadingview/WaveLoadingView;->bitmapBuffer:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 385
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 386
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getMeasuredWidth()I

    move-result v1

    .line 387
    invoke-virtual/range {p0 .. p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getMeasuredHeight()I

    move-result v2

    if-lez v1, :cond_4

    if-lez v2, :cond_4

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v5, v1

    .line 389
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    int-to-float v5, v2

    const v6, 0x3dcccccd    # 0.1f

    mul-float v6, v6, v5

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v5, v5, v7

    .line 391
    iput v5, v0, Lme/itangqi/waveloadingview/WaveLoadingView;->mDefaultWaterLevel:F

    int-to-float v5, v1

    .line 394
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 395
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 397
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v8, 0x40000000    # 2.0f

    .line 398
    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v8, 0x1

    .line 399
    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    add-int/2addr v1, v8

    add-int/2addr v2, v8

    .line 406
    new-array v13, v1, [F

    .line 408
    iget v8, v0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveColor:I

    const v9, 0x3e99999a    # 0.3f

    invoke-direct {v0, v8, v9}, Lme/itangqi/waveloadingview/WaveLoadingView;->adjustAlpha(IF)I

    move-result v8

    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v16, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v1, :cond_2

    int-to-double v8, v12

    .line 410
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v3

    .line 411
    iget v10, v0, Lme/itangqi/waveloadingview/WaveLoadingView;->mDefaultWaterLevel:F

    float-to-double v10, v10

    move-wide/from16 v17, v3

    float-to-double v3, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v8

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v3

    double-to-float v3, v10

    int-to-float v11, v12

    int-to-float v4, v2

    move-object v8, v14

    move v9, v11

    move v10, v3

    move/from16 v19, v12

    move v12, v4

    move-object v4, v13

    move-object v13, v15

    .line 412
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 413
    aput v3, v4, v19

    add-int/lit8 v12, v19, 0x1

    move-object v13, v4

    move-wide/from16 v3, v17

    goto :goto_0

    :cond_2
    move-object v4, v13

    .line 416
    iget v3, v0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveColor:I

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v5, v3

    float-to-int v3, v5

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_3

    int-to-float v11, v5

    add-int v6, v5, v3

    .line 419
    rem-int/2addr v6, v1

    aget v10, v4, v6

    int-to-float v12, v2

    move-object v8, v14

    move v9, v11

    move-object v13, v15

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 423
    :cond_3
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v7, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveShader:Landroid/graphics/BitmapShader;

    .line 424
    iget-object v2, v0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWavePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_4
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .line 707
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public endAnimation()V
    .locals 1

    .line 701
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    return-void
.end method

.method public getAmplitudeRatio()F
    .locals 1

    .line 549
    iget v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mAmplitudeRatio:F

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    .line 524
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getBorderWidth()F
    .locals 1

    .line 514
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getBottomTitle()Ljava/lang/String;
    .locals 1

    .line 619
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getBottomTitleColor()I
    .locals 1

    .line 643
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getBottomTitleSize()F
    .locals 1

    .line 667
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getCenterTitle()Ljava/lang/String;
    .locals 1

    .line 611
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCenterTitleColor()I
    .locals 1

    .line 635
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getCenterTitleSize()F
    .locals 1

    .line 659
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getProgressValue()I
    .locals 1

    .line 568
    iget v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mProgressValue:I

    return v0
.end method

.method public getShapeType()I
    .locals 1

    .line 533
    iget v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mShapeType:I

    return v0
.end method

.method public getTopTitle()Ljava/lang/String;
    .locals 1

    .line 603
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTopTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTopTitleColor()I
    .locals 1

    .line 627
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTopTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getWaterLevelRatio()F
    .locals 1

    .line 590
    iget v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaterLevelRatio:F

    return v0
.end method

.method public getWaveBgColor()I
    .locals 1

    .line 493
    iget v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveBgColor:I

    return v0
.end method

.method public getWaveColor()I
    .locals 1

    .line 505
    iget v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveColor:I

    return v0
.end method

.method public getWaveShiftRatio()F
    .locals 1

    .line 579
    iget v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveShiftRatio:F

    return v0
.end method

.method public getsetTopTitleSize()F
    .locals 1

    .line 651
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTopTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 753
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->startAnimation()V

    .line 754
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 759
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->cancelAnimation()V

    .line 760
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 240
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iput v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCanvasSize:I

    .line 241
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget v1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCanvasSize:I

    if-ge v0, v1, :cond_0

    .line 242
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iput v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCanvasSize:I

    .line 246
    :cond_0
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_d

    .line 248
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWavePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-nez v0, :cond_1

    .line 249
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWavePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 254
    :cond_1
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mShaderMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mAmplitudeRatio:F

    const v2, 0x3dcccccd    # 0.1f

    div-float/2addr v1, v2

    iget v2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mDefaultWaterLevel:F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 257
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mShaderMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveShiftRatio:F

    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    iget v2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaterLevelRatio:F

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float v2, v6, v2

    .line 258
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v2, v2, v5

    .line 257
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 261
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 264
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v7

    .line 267
    iget v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mShapeType:I

    const/4 v8, 0x2

    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    if-eq v0, v8, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    .line 306
    :cond_2
    iget-boolean v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mIsRoundRectangle:Z

    if-eqz v0, :cond_4

    cmpl-float v0, v7, v4

    if-lez v0, :cond_3

    .line 308
    new-instance v0, Landroid/graphics/RectF;

    div-float/2addr v7, v9

    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v7

    sub-float/2addr v1, v6

    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v7

    sub-float/2addr v2, v6

    invoke-direct {v0, v7, v7, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 309
    iget v1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mRoundRectangleXY:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 310
    iget v1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mRoundRectangleXY:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWavePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 312
    :cond_3
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 313
    iget v1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mRoundRectangleXY:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 314
    iget v1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mRoundRectangleXY:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWavePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_4
    cmpl-float v0, v7, v4

    if-lez v0, :cond_5

    div-float/2addr v7, v9

    .line 318
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v7

    sub-float v3, v0, v6

    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v7

    sub-float v4, v0, v6

    iget-object v5, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveBgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v7

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 319
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v7

    sub-float v3, v0, v6

    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v7

    sub-float v4, v0, v6

    iget-object v5, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWavePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 321
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveBgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 322
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWavePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_6
    cmpl-float v0, v7, v4

    if-lez v0, :cond_7

    div-float v2, v7, v9

    .line 294
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v2

    sub-float v3, v0, v6

    .line 295
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v2

    sub-float v4, v0, v6

    iget-object v5, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v2

    .line 291
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 299
    :cond_7
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v0, v7

    .line 300
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v4, v0, v7

    iget-object v5, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveBgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v7

    move v2, v7

    .line 299
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 301
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v0, v7

    .line 302
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v4, v0, v7

    iget-object v5, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWavePaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 301
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_8
    cmpl-float v0, v7, v4

    if-lez v0, :cond_9

    .line 279
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v9

    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v9

    .line 280
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v7

    div-float/2addr v2, v9

    sub-float/2addr v2, v3

    iget-object v3, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBorderPaint:Landroid/graphics/Paint;

    .line 279
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 283
    :cond_9
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v9

    sub-float/2addr v0, v7

    .line 285
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v9

    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    iget-object v3, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 286
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v9

    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    iget-object v3, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWavePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 271
    :cond_a
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 272
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getHeight()I

    move-result v2

    iget v3, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTriangleDirection:I

    invoke-direct {p0, v0, v1, v2, v3}, Lme/itangqi/waveloadingview/WaveLoadingView;->getEquilateralTriangle(Landroid/graphics/Point;III)Landroid/graphics/Path;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 274
    iget-object v1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWavePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 331
    :goto_0
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTopTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    if-nez v0, :cond_b

    .line 332
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTopTitlePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTopTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 334
    iget-object v2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTopTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    div-float/2addr v3, v9

    .line 335
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    div-float/2addr v4, v1

    iget-object v5, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTopTitleStrokePaint:Landroid/graphics/Paint;

    .line 334
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 337
    iget-object v2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTopTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    div-float/2addr v3, v9

    .line 338
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v4, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTopTitlePaint:Landroid/graphics/Paint;

    .line 337
    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 341
    :cond_b
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 342
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitlePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 344
    iget-object v2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    div-float/2addr v3, v9

    .line 345
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getHeight()I

    move-result v4

    div-int/2addr v4, v8

    int-to-float v4, v4

    iget-object v5, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitleStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    iget-object v6, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitleStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    add-float/2addr v5, v6

    div-float/2addr v5, v9

    sub-float/2addr v4, v5

    iget-object v5, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitleStrokePaint:Landroid/graphics/Paint;

    .line 344
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 347
    iget-object v2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    div-float/2addr v3, v9

    .line 348
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getHeight()I

    move-result v0

    div-int/2addr v0, v8

    int-to-float v0, v0

    iget-object v4, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v9

    sub-float/2addr v0, v4

    iget-object v4, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitlePaint:Landroid/graphics/Paint;

    .line 347
    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 351
    :cond_c
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 352
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitlePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 354
    iget-object v2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    div-float/2addr v3, v9

    .line 355
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    int-to-float v4, v4

    div-float/2addr v4, v1

    iget-object v5, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitleStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    iget-object v6, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitleStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    add-float/2addr v5, v6

    div-float/2addr v5, v9

    sub-float/2addr v4, v5

    iget-object v5, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitleStrokePaint:Landroid/graphics/Paint;

    .line 354
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 357
    iget-object v2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    div-float/2addr v3, v9

    .line 358
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v4, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v1, v4

    div-float/2addr v1, v9

    sub-float/2addr v0, v1

    iget-object v1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitlePaint:Landroid/graphics/Paint;

    .line 357
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 361
    :cond_d
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWavePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_e
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 436
    invoke-direct {p0, p1}, Lme/itangqi/waveloadingview/WaveLoadingView;->measureWidth(I)I

    move-result p1

    .line 437
    invoke-direct {p0, p2}, Lme/itangqi/waveloadingview/WaveLoadingView;->measureHeight(I)I

    move-result p2

    .line 439
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getShapeType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 440
    invoke-virtual {p0, p1, p2}, Lme/itangqi/waveloadingview/WaveLoadingView;->setMeasuredDimension(II)V

    goto :goto_1

    :cond_0
    if-ge p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move p1, p2

    .line 443
    :goto_0
    invoke-virtual {p0, p1, p1}, Lme/itangqi/waveloadingview/WaveLoadingView;->setMeasuredDimension(II)V

    :goto_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 367
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 369
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->getShapeType()I

    move-result p3

    const/4 p4, 0x3

    if-ne p3, p4, :cond_0

    .line 370
    iput p1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCanvasWidth:I

    .line 371
    iput p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCanvasHeight:I

    goto :goto_0

    .line 373
    :cond_0
    iput p1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCanvasSize:I

    if-ge p2, p1, :cond_1

    .line 375
    iput p2, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCanvasSize:I

    .line 377
    :cond_1
    :goto_0
    invoke-direct {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->updateWaveShader()V

    return-void
.end method

.method public pauseAnimation()V
    .locals 2

    .line 715
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 716
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 717
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    :cond_0
    return-void
.end method

.method public resumeAnimation()V
    .locals 2

    .line 725
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 726
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    :cond_0
    return-void
.end method

.method public setAmplitudeRatio(I)V
    .locals 2

    .line 542
    iget v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mAmplitudeRatio:F

    int-to-float p1, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 543
    iput p1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mAmplitudeRatio:F

    .line 544
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setAnimDuration(J)V
    .locals 1

    .line 738
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->waveShiftAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 518
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 519
    invoke-direct {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->updateWaveShader()V

    .line 520
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->invalidate()V

    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1

    .line 509
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 510
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->invalidate()V

    return-void
.end method

.method public setBottomTitle(Ljava/lang/String;)V
    .locals 0

    .line 615
    iput-object p1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitle:Ljava/lang/String;

    return-void
.end method

.method public setBottomTitleColor(I)V
    .locals 1

    .line 639
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setBottomTitleSize(F)V
    .locals 1

    .line 663
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitlePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lme/itangqi/waveloadingview/WaveLoadingView;->sp2px(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setBottomTitleStrokeColor(I)V
    .locals 1

    .line 683
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitleStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setBottomTitleStrokeWidth(F)V
    .locals 1

    .line 679
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mBottomTitleStrokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lme/itangqi/waveloadingview/WaveLoadingView;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setCenterTitle(Ljava/lang/String;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitle:Ljava/lang/String;

    return-void
.end method

.method public setCenterTitleColor(I)V
    .locals 1

    .line 631
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setCenterTitleSize(F)V
    .locals 1

    .line 655
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitlePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lme/itangqi/waveloadingview/WaveLoadingView;->sp2px(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setCenterTitleStrokeColor(I)V
    .locals 1

    .line 691
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitleStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setCenterTitleStrokeWidth(F)V
    .locals 1

    .line 687
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mCenterTitleStrokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lme/itangqi/waveloadingview/WaveLoadingView;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setProgressValue(I)V
    .locals 3

    .line 558
    iput p1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mProgressValue:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 559
    iget v1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaterLevelRatio:F

    const/4 v2, 0x0

    aput v1, v0, v2

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const-string p1, "waterLevelRatio"

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    .line 560
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 561
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 562
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 563
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 564
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public setShapeType(Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;)V
    .locals 0

    .line 528
    invoke-virtual {p1}, Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;->ordinal()I

    move-result p1

    iput p1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mShapeType:I

    .line 529
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->invalidate()V

    return-void
.end method

.method public setTopTitle(Ljava/lang/String;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTopTitle:Ljava/lang/String;

    return-void
.end method

.method public setTopTitleColor(I)V
    .locals 1

    .line 623
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTopTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setTopTitleSize(F)V
    .locals 1

    .line 647
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTopTitlePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lme/itangqi/waveloadingview/WaveLoadingView;->sp2px(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setTopTitleStrokeColor(I)V
    .locals 1

    .line 675
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTopTitleStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setTopTitleStrokeWidth(F)V
    .locals 1

    .line 671
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mTopTitleStrokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lme/itangqi/waveloadingview/WaveLoadingView;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setWaterLevelRatio(F)V
    .locals 1

    .line 583
    iget v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaterLevelRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 584
    iput p1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaterLevelRatio:F

    .line 585
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setWaveBgColor(I)V
    .locals 1

    .line 486
    iput p1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveBgColor:I

    .line 487
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 488
    invoke-direct {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->updateWaveShader()V

    .line 489
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->invalidate()V

    return-void
.end method

.method public setWaveColor(I)V
    .locals 0

    .line 497
    iput p1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveColor:I

    .line 500
    invoke-direct {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->updateWaveShader()V

    .line 501
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->invalidate()V

    return-void
.end method

.method public setWaveShiftRatio(F)V
    .locals 1

    .line 572
    iget v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveShiftRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 573
    iput p1, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mWaveShiftRatio:F

    .line 574
    invoke-virtual {p0}, Lme/itangqi/waveloadingview/WaveLoadingView;->invalidate()V

    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .line 695
    iget-object v0, p0, Lme/itangqi/waveloadingview/WaveLoadingView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method
