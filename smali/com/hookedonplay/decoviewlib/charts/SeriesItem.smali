.class public Lcom/hookedonplay/decoviewlib/charts/SeriesItem;
.super Ljava/lang/Object;
.source "SeriesItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;,
        Lcom/hookedonplay/decoviewlib/charts/SeriesItem$SeriesItemListener;,
        Lcom/hookedonplay/decoviewlib/charts/SeriesItem$ChartStyle;
    }
.end annotation


# instance fields
.field private final mChartStyle:Lcom/hookedonplay/decoviewlib/charts/SeriesItem$ChartStyle;

.field private mColor:I

.field private mColorSecondary:I

.field private final mDrawAsPoint:Z

.field private mEdgeDetail:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;",
            ">;"
        }
    .end annotation
.end field

.field private final mInitialValue:F

.field private final mInitialVisibility:Z

.field private mInset:Landroid/graphics/PointF;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mLineWidth:F

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hookedonplay/decoviewlib/charts/SeriesItem$SeriesItemListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxValue:F

.field private final mMinValue:F

.field private final mRoundCap:Z

.field private mSeriesLabel:Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;

.field private mShadowColor:I

.field private mShadowSize:F

.field private final mShowPointWhenEmpty:Z

.field private final mSpinClockwise:Z

.field private final mSpinDuration:J


# direct methods
.method private constructor <init>(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)V
    .locals 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->access$000(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mColor:I

    .line 132
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->access$100(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mColorSecondary:I

    .line 133
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->access$200(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)F

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mLineWidth:F

    .line 134
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->access$300(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mSpinDuration:J

    .line 135
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->access$400(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)F

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mMinValue:F

    .line 136
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->access$500(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)F

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mMaxValue:F

    .line 137
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->access$600(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)F

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mInitialValue:F

    .line 138
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->access$700(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mInitialVisibility:Z

    .line 139
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->access$800(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mSpinClockwise:Z

    .line 140
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->access$900(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mRoundCap:Z

    .line 141
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->access$1000(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mDrawAsPoint:Z

    .line 142
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->access$1100(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$ChartStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mChartStyle:Lcom/hookedonplay/decoviewlib/charts/SeriesItem$ChartStyle;

    .line 143
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->access$1200(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 144
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->access$1300(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mShowPointWhenEmpty:Z

    .line 145
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->access$1400(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mInset:Landroid/graphics/PointF;

    .line 146
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->access$1500(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mEdgeDetail:Ljava/util/ArrayList;

    .line 147
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->access$1600(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;

    move-result-object v0

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mSeriesLabel:Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;

    .line 148
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->access$1700(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)F

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mShadowSize:F

    .line 149
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->access$1800(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)I

    move-result p1

    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mShadowColor:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;Lcom/hookedonplay/decoviewlib/charts/SeriesItem$1;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;-><init>(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;)V

    return-void
.end method


# virtual methods
.method public addArcSeriesItemListener(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$SeriesItemListener;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mListeners:Ljava/util/ArrayList;

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addEdgeDetail(Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 233
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mEdgeDetail:Ljava/util/ArrayList;

    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mEdgeDetail:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mEdgeDetail:Ljava/util/ArrayList;

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mEdgeDetail:Ljava/util/ArrayList;

    new-instance v1, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;

    invoke-direct {v1, p1}, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;-><init>(Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getChartStyle()Lcom/hookedonplay/decoviewlib/charts/SeriesItem$ChartStyle;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mChartStyle:Lcom/hookedonplay/decoviewlib/charts/SeriesItem$ChartStyle;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mColor:I

    return v0
.end method

.method public getDrawAsPoint()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mDrawAsPoint:Z

    return v0
.end method

.method public getEdgeDetail()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;",
            ">;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mEdgeDetail:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInitialValue()F
    .locals 1

    .line 189
    iget v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mInitialValue:F

    return v0
.end method

.method public getInitialVisibility()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mInitialVisibility:Z

    return v0
.end method

.method public getInset()Landroid/graphics/PointF;
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mInset:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mInset:Landroid/graphics/PointF;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mInset:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getLineWidth()F
    .locals 1

    .line 169
    iget v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mLineWidth:F

    return v0
.end method

.method getListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/hookedonplay/decoviewlib/charts/SeriesItem$SeriesItemListener;",
            ">;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMaxValue()F
    .locals 1

    .line 185
    iget v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mMaxValue:F

    return v0
.end method

.method public getMinValue()F
    .locals 1

    .line 181
    iget v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mMinValue:F

    return v0
.end method

.method public getRoundCap()Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mRoundCap:Z

    return v0
.end method

.method public getSecondaryColor()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mColorSecondary:I

    return v0
.end method

.method public getSeriesLabel()Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mSeriesLabel:Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;

    return-object v0
.end method

.method public getShadowColor()I
    .locals 1

    .line 263
    iget v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mShadowColor:I

    return v0
.end method

.method public getShadowSize()F
    .locals 1

    .line 255
    iget v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mShadowSize:F

    return v0
.end method

.method public getSpinClockwise()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mSpinClockwise:Z

    return v0
.end method

.method public getSpinDuration()J
    .locals 2

    .line 177
    iget-wide v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mSpinDuration:J

    return-wide v0
.end method

.method public setColor(I)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mColor:I

    return-void
.end method

.method public setLineWidth(F)V
    .locals 0

    .line 173
    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mLineWidth:F

    return-void
.end method

.method public setSecondaryColor(I)V
    .locals 0

    .line 165
    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mColorSecondary:I

    return-void
.end method

.method public setSeriesLabel(Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mSeriesLabel:Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;

    return-void
.end method

.method public setShadowColor(I)V
    .locals 0

    .line 259
    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mShadowColor:I

    return-void
.end method

.method public setShadowSize(F)V
    .locals 0

    .line 251
    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mShadowSize:F

    return-void
.end method

.method public showPointWhenEmpty()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->mShowPointWhenEmpty:Z

    return v0
.end method
