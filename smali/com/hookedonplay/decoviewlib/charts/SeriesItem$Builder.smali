.class public Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;
.super Ljava/lang/Object;
.source "SeriesItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hookedonplay/decoviewlib/charts/SeriesItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mChartStyle:Lcom/hookedonplay/decoviewlib/charts/SeriesItem$ChartStyle;

.field private mColor:I

.field private mColorSecondary:I

.field private mDrawAsPoint:Z

.field private mEdgeDetail:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialValue:F

.field private mInitialVisibility:Z

.field private mInset:Landroid/graphics/PointF;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLineWidth:F

.field private mMaxValue:F

.field private mMinValue:F

.field private mRoundCap:Z

.field private mSeriesLabel:Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;

.field private mShadowColor:I

.field private mShadowSize:F

.field private mShowPointWhenEmpty:Z

.field private mSpinClockwise:Z

.field private mSpinDuration:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    const/16 v1, 0xff

    .line 300
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mColor:I

    const/4 v0, 0x0

    .line 301
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mColorSecondary:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 302
    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mLineWidth:F

    const-wide/16 v0, 0x1388

    .line 303
    iput-wide v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mSpinDuration:J

    const/high16 v0, 0x42c80000    # 100.0f

    .line 305
    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mMaxValue:F

    const/4 v0, 0x1

    .line 307
    iput-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mInitialVisibility:Z

    .line 308
    iput-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mSpinClockwise:Z

    .line 309
    iput-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mRoundCap:Z

    .line 311
    sget-object v1, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$ChartStyle;->STYLE_DONUT:Lcom/hookedonplay/decoviewlib/charts/SeriesItem$ChartStyle;

    iput-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mChartStyle:Lcom/hookedonplay/decoviewlib/charts/SeriesItem$ChartStyle;

    .line 313
    iput-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mShowPointWhenEmpty:Z

    const/4 v0, 0x0

    .line 317
    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mShadowSize:F

    const/high16 v0, -0x1000000

    .line 318
    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mShadowColor:I

    .line 321
    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mColor:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    const/16 v1, 0xff

    .line 300
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mColor:I

    const/4 v0, 0x0

    .line 301
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mColorSecondary:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 302
    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mLineWidth:F

    const-wide/16 v0, 0x1388

    .line 303
    iput-wide v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mSpinDuration:J

    const/high16 v0, 0x42c80000    # 100.0f

    .line 305
    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mMaxValue:F

    const/4 v0, 0x1

    .line 307
    iput-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mInitialVisibility:Z

    .line 308
    iput-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mSpinClockwise:Z

    .line 309
    iput-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mRoundCap:Z

    .line 311
    sget-object v1, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$ChartStyle;->STYLE_DONUT:Lcom/hookedonplay/decoviewlib/charts/SeriesItem$ChartStyle;

    iput-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mChartStyle:Lcom/hookedonplay/decoviewlib/charts/SeriesItem$ChartStyle;

    .line 313
    iput-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mShowPointWhenEmpty:Z

    const/4 v0, 0x0

    .line 317
    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mShadowSize:F

    const/high16 v0, -0x1000000

    .line 318
    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mShadowColor:I

    .line 325
    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mColor:I

    .line 326
    iput p2, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mColorSecondary:I

    return-void
.end method

.method static synthetic access$000(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)I
    .locals 0

    .line 299
    iget p0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mColor:I

    return p0
.end method

.method static synthetic access$100(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)I
    .locals 0

    .line 299
    iget p0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mColorSecondary:I

    return p0
.end method

.method static synthetic access$1000(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)Z
    .locals 0

    .line 299
    iget-boolean p0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mDrawAsPoint:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$ChartStyle;
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mChartStyle:Lcom/hookedonplay/decoviewlib/charts/SeriesItem$ChartStyle;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)Z
    .locals 0

    .line 299
    iget-boolean p0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mShowPointWhenEmpty:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)Landroid/graphics/PointF;
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mInset:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)Ljava/util/ArrayList;
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mEdgeDetail:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mSeriesLabel:Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)F
    .locals 0

    .line 299
    iget p0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mShadowSize:F

    return p0
.end method

.method static synthetic access$1800(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)I
    .locals 0

    .line 299
    iget p0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mShadowColor:I

    return p0
.end method

.method static synthetic access$200(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)F
    .locals 0

    .line 299
    iget p0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mLineWidth:F

    return p0
.end method

.method static synthetic access$300(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)J
    .locals 2

    .line 299
    iget-wide v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mSpinDuration:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)F
    .locals 0

    .line 299
    iget p0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mMinValue:F

    return p0
.end method

.method static synthetic access$500(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)F
    .locals 0

    .line 299
    iget p0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mMaxValue:F

    return p0
.end method

.method static synthetic access$600(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)F
    .locals 0

    .line 299
    iget p0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mInitialValue:F

    return p0
.end method

.method static synthetic access$700(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)Z
    .locals 0

    .line 299
    iget-boolean p0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mInitialVisibility:Z

    return p0
.end method

.method static synthetic access$800(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)Z
    .locals 0

    .line 299
    iget-boolean p0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mSpinClockwise:Z

    return p0
.end method

.method static synthetic access$900(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)Z
    .locals 0

    .line 299
    iget-boolean p0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mRoundCap:Z

    return p0
.end method


# virtual methods
.method public addEdgeDetail(Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 404
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mEdgeDetail:Ljava/util/ArrayList;

    return-object p0

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mEdgeDetail:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mEdgeDetail:Ljava/util/ArrayList;

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mEdgeDetail:Ljava/util/ArrayList;

    new-instance v1, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;

    invoke-direct {v1, p1}, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;-><init>(Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;
    .locals 2

    .line 432
    new-instance v0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;-><init>(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;Lcom/hookedonplay/decoviewlib/charts/SeriesItem$1;)V

    return-object v0
.end method

.method public setCapRounded(Z)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;
    .locals 0

    .line 353
    iput-boolean p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mRoundCap:Z

    return-object p0
.end method

.method public setChartStyle(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$ChartStyle;)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mChartStyle:Lcom/hookedonplay/decoviewlib/charts/SeriesItem$ChartStyle;

    return-object p0
.end method

.method public setDrawAsPoint(Z)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;
    .locals 0

    .line 358
    iput-boolean p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mDrawAsPoint:Z

    return-object p0
.end method

.method public setInitialVisibility(Z)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;
    .locals 0

    .line 343
    iput-boolean p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mInitialVisibility:Z

    return-object p0
.end method

.method public setInset(Landroid/graphics/PointF;)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mInset:Landroid/graphics/PointF;

    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public setLineWidth(F)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;
    .locals 0

    .line 330
    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mLineWidth:F

    return-object p0
.end method

.method public setRange(FFF)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;
    .locals 1

    cmpl-float v0, p1, p2

    if-gez v0, :cond_1

    cmpl-float v0, p1, p3

    if-gtz v0, :cond_0

    cmpg-float v0, p2, p3

    if-ltz v0, :cond_0

    .line 374
    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mMinValue:F

    .line 375
    iput p2, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mMaxValue:F

    .line 376
    iput p3, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mInitialValue:F

    return-object p0

    .line 372
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Initial value must be in the range of min .. max"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 369
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minimum value must be less that maximum value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSeriesLabel(Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mSeriesLabel:Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;

    return-object p0
.end method

.method public setShadowColor(I)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;
    .locals 0

    .line 425
    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mShadowColor:I

    return-object p0
.end method

.method public setShadowSize(F)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;
    .locals 0

    .line 420
    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mShadowSize:F

    return-object p0
.end method

.method public setShowPointWhenEmpty(Z)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;
    .locals 0

    .line 393
    iput-boolean p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mShowPointWhenEmpty:Z

    return-object p0
.end method

.method public setSpinClockwise(Z)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;
    .locals 0

    .line 348
    iput-boolean p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mSpinClockwise:Z

    return-object p0
.end method

.method public setSpinDuration(J)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;
    .locals 3

    const-wide/16 v0, 0x64

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 338
    iput-wide p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->mSpinDuration:J

    return-object p0

    .line 336
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SpinDuration must be > 100 (value is in ms)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
