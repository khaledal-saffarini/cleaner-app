.class public Lcom/hookedonplay/decoviewlib/DecoView;
.super Landroid/view/View;
.source "DecoView.java"

# interfaces
.implements Lcom/hookedonplay/decoviewlib/events/DecoEventManager$ArcEventManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;,
        Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mArcBounds:Landroid/graphics/RectF;

.field private mCanvasHeight:I

.field private mCanvasWidth:I

.field private mChartSeries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hookedonplay/decoviewlib/charts/ChartSeries;",
            ">;"
        }
    .end annotation
.end field

.field private mDecoEventManager:Lcom/hookedonplay/decoviewlib/events/DecoEventManager;

.field private mDefaultLineWidth:F

.field private mHorizGravity:Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;

.field private mMeasureViewableArea:[F

.field private mRotateAngle:I

.field private mTotalAngle:I

.field private mVertGravity:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->TAG:Ljava/lang/String;

    .line 50
    sget-object p1, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;->GRAVITY_VERTICAL_CENTER:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mVertGravity:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    .line 51
    sget-object p1, Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;->GRAVITY_HORIZONTAL_CENTER:Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;

    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mHorizGravity:Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;

    const/4 p1, -0x1

    .line 60
    iput p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mCanvasWidth:I

    .line 61
    iput p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mCanvasHeight:I

    const/high16 p1, 0x41f00000    # 30.0f

    .line 69
    iput p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mDefaultLineWidth:F

    const/16 p1, 0x168

    .line 81
    iput p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mTotalAngle:I

    .line 91
    invoke-direct {p0}, Lcom/hookedonplay/decoviewlib/DecoView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->TAG:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;->GRAVITY_VERTICAL_CENTER:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mVertGravity:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    .line 51
    sget-object v0, Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;->GRAVITY_HORIZONTAL_CENTER:Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mHorizGravity:Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mCanvasWidth:I

    .line 61
    iput v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mCanvasHeight:I

    const/high16 v0, 0x41f00000    # 30.0f

    .line 69
    iput v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mDefaultLineWidth:F

    const/16 v1, 0x168

    .line 81
    iput v1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mTotalAngle:I

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v2, Lcom/hookedonplay/decoviewlib/R$styleable;->DecoView:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 104
    :try_start_0
    sget p2, Lcom/hookedonplay/decoviewlib/R$styleable;->DecoView_dv_lineWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mDefaultLineWidth:F

    .line 105
    sget p2, Lcom/hookedonplay/decoviewlib/R$styleable;->DecoView_dv_rotateAngle:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 106
    sget v0, Lcom/hookedonplay/decoviewlib/R$styleable;->DecoView_dv_totalAngle:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mTotalAngle:I

    .line 107
    invoke-static {}, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;->values()[Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    move-result-object v0

    sget v1, Lcom/hookedonplay/decoviewlib/R$styleable;->DecoView_dv_arc_gravity_vertical:I

    sget-object v2, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;->GRAVITY_VERTICAL_CENTER:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    invoke-virtual {v2}, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;->ordinal()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mVertGravity:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    .line 108
    invoke-static {}, Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;->values()[Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;

    move-result-object v0

    sget v1, Lcom/hookedonplay/decoviewlib/R$styleable;->DecoView_dv_arc_gravity_horizontal:I

    sget-object v2, Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;->GRAVITY_HORIZONTAL_CENTER:Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;

    invoke-virtual {v2}, Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;->ordinal()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mHorizGravity:Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    iget p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mTotalAngle:I

    invoke-virtual {p0, p1, p2}, Lcom/hookedonplay/decoviewlib/DecoView;->configureAngles(II)V

    .line 115
    invoke-direct {p0}, Lcom/hookedonplay/decoviewlib/DecoView;->initView()V

    return-void

    :catchall_0
    move-exception p2

    .line 110
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    throw p2
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->TAG:Ljava/lang/String;

    .line 50
    sget-object p1, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;->GRAVITY_VERTICAL_CENTER:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mVertGravity:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    .line 51
    sget-object p1, Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;->GRAVITY_HORIZONTAL_CENTER:Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;

    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mHorizGravity:Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;

    const/4 p1, -0x1

    .line 60
    iput p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mCanvasWidth:I

    .line 61
    iput p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mCanvasHeight:I

    const/high16 p1, 0x41f00000    # 30.0f

    .line 69
    iput p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mDefaultLineWidth:F

    const/16 p1, 0x168

    .line 81
    iput p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mTotalAngle:I

    .line 120
    invoke-direct {p0}, Lcom/hookedonplay/decoviewlib/DecoView;->initView()V

    return-void
.end method

.method private createVisualEditorTrack()V
    .locals 5

    .line 238
    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/DecoView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    const/16 v1, 0xda

    const/16 v2, 0xff

    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;-><init>(I)V

    const/4 v1, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    .line 240
    invoke-virtual {v0, v1, v3, v3}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setRange(FFF)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v0

    iget v4, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mDefaultLineWidth:F

    .line 241
    invoke-virtual {v0, v4}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setLineWidth(F)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->build()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    move-result-object v0

    .line 239
    invoke-virtual {p0, v0}, Lcom/hookedonplay/decoviewlib/DecoView;->addSeries(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;)I

    .line 243
    new-instance v0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    const/16 v4, 0x40

    invoke-static {v2, v2, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;-><init>(I)V

    const/high16 v2, 0x41c80000    # 25.0f

    .line 244
    invoke-virtual {v0, v1, v3, v2}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setRange(FFF)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v0

    iget v1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mDefaultLineWidth:F

    .line 245
    invoke-virtual {v0, v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setLineWidth(F)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->build()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    move-result-object v0

    .line 243
    invoke-virtual {p0, v0}, Lcom/hookedonplay/decoviewlib/DecoView;->addSeries(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;)I

    :cond_0
    return-void
.end method

.method private executeEffect(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)Z
    .locals 5

    .line 550
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEventType()Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_EFFECT:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return v2

    .line 558
    :cond_1
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getIndexPosition()I

    move-result v0

    if-gez v0, :cond_2

    .line 559
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EffectType "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEventType()Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must specify valid data series index"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 567
    :cond_2
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEffectType()Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    move-result-object v0

    sget-object v1, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;->EFFECT_SPIRAL_EXPLODE:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    .line 569
    :goto_0
    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 570
    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    .line 571
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getIndexPosition()I

    move-result v4

    if-eq v0, v4, :cond_3

    .line 572
    invoke-virtual {v1, p1, v2}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->startAnimateHideShow(Lcom/hookedonplay/decoviewlib/events/DecoEvent;Z)V

    goto :goto_1

    .line 574
    :cond_3
    invoke-virtual {v1, p1}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->startAnimateEffect(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v3

    .line 580
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 581
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getIndexPosition()I

    move-result v0

    if-eq v0, v2, :cond_6

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getIndexPosition()I

    move-result v0

    if-gez v0, :cond_7

    .line 582
    :cond_6
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    .line 583
    invoke-virtual {v0, p1}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->startAnimateEffect(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    return v3
.end method

.method private executeMove(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
    .locals 3

    .line 414
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEventType()Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_MOVE:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    if-eq v0, v1, :cond_0

    .line 415
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEventType()Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_COLOR_CHANGE:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    if-eq v0, v1, :cond_0

    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 420
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getIndexPosition()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 424
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getIndexPosition()I

    move-result v0

    if-ltz v0, :cond_2

    .line 425
    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 426
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getIndexPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    .line 427
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEventType()Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    move-result-object v1

    sget-object v2, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_COLOR_CHANGE:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    if-ne v1, v2, :cond_1

    .line 428
    invoke-virtual {v0, p1}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->startAnimateColorChange(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    goto :goto_0

    .line 430
    :cond_1
    invoke-virtual {v0, p1}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->startAnimateMove(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    goto :goto_0

    .line 433
    :cond_2
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring move request: Invalid array index. Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Size: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 421
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index: Position out of range (Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getIndexPosition()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Series Count: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    return-void
.end method

.method private executeReveal(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)Z
    .locals 6

    .line 522
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEventType()Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_SHOW:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 523
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEventType()Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_HIDE:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    if-eq v0, v1, :cond_0

    return v2

    .line 527
    :cond_0
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEventType()Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_SHOW:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    if-ne v0, v1, :cond_1

    .line 528
    invoke-virtual {p0, v2}, Lcom/hookedonplay/decoviewlib/DecoView;->setVisibility(I)V

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 532
    :goto_0
    iget-object v3, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 533
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getIndexPosition()I

    move-result v3

    if-eq v3, v0, :cond_2

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getIndexPosition()I

    move-result v3

    if-gez v3, :cond_4

    .line 534
    :cond_2
    iget-object v3, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    .line 535
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEventType()Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    move-result-object v4

    sget-object v5, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_SHOW:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, p1, v4}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->startAnimateHideShow(Lcom/hookedonplay/decoviewlib/events/DecoEvent;Z)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method private getEventManager()Lcom/hookedonplay/decoviewlib/events/DecoEventManager;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mDecoEventManager:Lcom/hookedonplay/decoviewlib/events/DecoEventManager;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager;

    invoke-direct {v0, p0}, Lcom/hookedonplay/decoviewlib/events/DecoEventManager;-><init>(Lcom/hookedonplay/decoviewlib/events/DecoEventManager$ArcEventManagerListener;)V

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mDecoEventManager:Lcom/hookedonplay/decoviewlib/events/DecoEventManager;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mDecoEventManager:Lcom/hookedonplay/decoviewlib/events/DecoEventManager;

    return-object v0
.end method

.method private getLabelPosition(I)F
    .locals 4

    .line 383
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    .line 385
    :goto_0
    iget-object v2, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 386
    iget-object v2, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    .line 387
    invoke-virtual {v2}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->getPositionPercent()F

    move-result v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    .line 388
    invoke-virtual {v2}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->getPositionPercent()F

    move-result v1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 392
    :cond_1
    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->getPositionPercent()F

    move-result p1

    cmpg-float p1, v1, p1

    if-gez p1, :cond_3

    .line 394
    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->getPositionPercent()F

    move-result p1

    add-float/2addr p1, v1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iget v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mTotalAngle:I

    int-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    .line 397
    iget v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mRotateAngle:I

    int-to-float v0, v0

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v0, v2

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    sub-float/2addr p1, v0

    goto :goto_1

    :cond_2
    return p1

    :cond_3
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method private getWidestLine()F
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 330
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    .line 331
    invoke-virtual {v2}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->getSeriesItem()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getLineWidth()F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private initView()V
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/DecoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hookedonplay/decoviewlib/util/GenericFunctions;->initialize(Landroid/content/Context;)V

    .line 154
    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/DecoView;->enableCompatibilityMode()V

    .line 155
    invoke-direct {p0}, Lcom/hookedonplay/decoviewlib/DecoView;->createVisualEditorTrack()V

    return-void
.end method

.method private recalcLayout()V
    .locals 10

    .line 269
    iget v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mCanvasWidth:I

    if-lez v0, :cond_8

    iget v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mCanvasHeight:I

    if-gtz v0, :cond_0

    goto/16 :goto_3

    .line 273
    :cond_0
    invoke-direct {p0}, Lcom/hookedonplay/decoviewlib/DecoView;->getWidestLine()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 277
    iget v1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mCanvasWidth:I

    iget v2, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mCanvasHeight:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    if-le v1, v2, :cond_1

    sub-int/2addr v1, v2

    .line 279
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    goto :goto_0

    :cond_1
    sub-int/2addr v2, v1

    .line 281
    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    move v2, v1

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 285
    :goto_1
    iget-object v4, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mVertGravity:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    sget-object v5, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;->GRAVITY_VERTICAL_FILL:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    if-ne v4, v5, :cond_3

    const/4 v2, 0x0

    .line 289
    :cond_3
    iget-object v4, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mHorizGravity:Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;

    sget-object v5, Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;->GRAVITY_HORIZONTAL_FILL:Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;

    if-ne v4, v5, :cond_4

    const/4 v1, 0x0

    .line 296
    :cond_4
    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/DecoView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    .line 297
    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/DecoView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    .line 298
    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/DecoView;->getPaddingRight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v1

    .line 299
    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/DecoView;->getPaddingBottom()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v2

    .line 301
    new-instance v8, Landroid/graphics/RectF;

    add-float/2addr v4, v0

    add-float/2addr v5, v0

    iget v9, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mCanvasWidth:I

    int-to-float v9, v9

    sub-float/2addr v9, v0

    sub-float/2addr v9, v6

    iget v6, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mCanvasHeight:I

    int-to-float v6, v6

    sub-float/2addr v6, v0

    sub-float/2addr v6, v7

    invoke-direct {v8, v4, v5, v9, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mArcBounds:Landroid/graphics/RectF;

    .line 306
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mVertGravity:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    sget-object v4, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;->GRAVITY_VERTICAL_TOP:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    if-ne v0, v4, :cond_5

    .line 307
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mArcBounds:Landroid/graphics/RectF;

    neg-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2

    .line 308
    :cond_5
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mVertGravity:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    sget-object v4, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;->GRAVITY_VERTICAL_BOTTOM:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    if-ne v0, v4, :cond_6

    .line 309
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mArcBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 312
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mHorizGravity:Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;

    sget-object v2, Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;->GRAVITY_HORIZONTAL_LEFT:Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;

    if-ne v0, v2, :cond_7

    .line 313
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mArcBounds:Landroid/graphics/RectF;

    neg-float v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_3

    .line 314
    :cond_7
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mHorizGravity:Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;

    sget-object v2, Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;->GRAVITY_HORIZONTAL_RIGHT:Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;

    if-ne v0, v2, :cond_8

    .line 315
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mArcBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->offset(FF)V

    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public addEvent(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
    .locals 1

    .line 451
    invoke-direct {p0}, Lcom/hookedonplay/decoviewlib/DecoView;->getEventManager()Lcom/hookedonplay/decoviewlib/events/DecoEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hookedonplay/decoviewlib/events/DecoEventManager;->add(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    return-void
.end method

.method public addSeries(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;)I
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    .line 190
    :cond_0
    new-instance v0, Lcom/hookedonplay/decoviewlib/DecoView$1;

    invoke-direct {v0, p0}, Lcom/hookedonplay/decoviewlib/DecoView$1;-><init>(Lcom/hookedonplay/decoviewlib/DecoView;)V

    invoke-virtual {p1, v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->addArcSeriesItemListener(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$SeriesItemListener;)V

    .line 203
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getLineWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 204
    iget v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mDefaultLineWidth:F

    invoke-virtual {p1, v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->setLineWidth(F)V

    .line 208
    :cond_1
    sget-object v0, Lcom/hookedonplay/decoviewlib/DecoView$2;->$SwitchMap$com$hookedonplay$decoviewlib$charts$SeriesItem$ChartStyle:[I

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getChartStyle()Lcom/hookedonplay/decoviewlib/charts/SeriesItem$ChartStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$ChartStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 224
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Chart Style not implemented"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 217
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->TAG:Ljava/lang/String;

    const-string v2, "STYLE_LINE_* is currently experimental"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v0, Lcom/hookedonplay/decoviewlib/charts/LineSeries;

    iget v2, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mTotalAngle:I

    iget v3, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mRotateAngle:I

    invoke-direct {v0, p1, v2, v3}, Lcom/hookedonplay/decoviewlib/charts/LineSeries;-><init>(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;II)V

    .line 219
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mHorizGravity:Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;

    invoke-virtual {v0, p1}, Lcom/hookedonplay/decoviewlib/charts/LineSeries;->setHorizGravity(Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;)V

    .line 220
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mVertGravity:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    invoke-virtual {v0, p1}, Lcom/hookedonplay/decoviewlib/charts/LineSeries;->setVertGravity(Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;)V

    goto :goto_1

    .line 213
    :cond_4
    new-instance v0, Lcom/hookedonplay/decoviewlib/charts/PieSeries;

    iget v2, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mTotalAngle:I

    iget v3, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mRotateAngle:I

    invoke-direct {v0, p1, v2, v3}, Lcom/hookedonplay/decoviewlib/charts/PieSeries;-><init>(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;II)V

    goto :goto_1

    .line 210
    :cond_5
    new-instance v0, Lcom/hookedonplay/decoviewlib/charts/LineArcSeries;

    iget v2, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mTotalAngle:I

    iget v3, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mRotateAngle:I

    invoke-direct {v0, p1, v2, v3}, Lcom/hookedonplay/decoviewlib/charts/LineArcSeries;-><init>(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;II)V

    .line 226
    :goto_1
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 227
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mMeasureViewableArea:[F

    .line 229
    invoke-direct {p0}, Lcom/hookedonplay/decoviewlib/DecoView;->recalcLayout()V

    .line 230
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    return p1
.end method

.method public configureAngles(II)V
    .locals 2

    if-lez p1, :cond_2

    .line 138
    iput p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mTotalAngle:I

    add-int/lit16 v0, p2, 0x10e

    const/16 v1, 0x168

    .line 139
    rem-int/2addr v0, v1

    iput v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mRotateAngle:I

    if-ge p1, v1, :cond_0

    rsub-int p1, p1, 0x168

    .line 142
    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x5a

    add-int/2addr p1, p2

    rem-int/2addr p1, v1

    iput p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mRotateAngle:I

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 146
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    .line 147
    iget v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mTotalAngle:I

    iget v1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mRotateAngle:I

    invoke-virtual {p2, v0, v1}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->setupView(II)V

    goto :goto_0

    :cond_1
    return-void

    .line 132
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Total angle of the arc must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public deleteAll()V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mDecoEventManager:Lcom/hookedonplay/decoviewlib/events/DecoEventManager;

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/events/DecoEventManager;->resetEvents()V

    :cond_0
    const/4 v0, 0x0

    .line 511
    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    return-void
.end method

.method public disableHardwareAccelerationForDecoView()V
    .locals 2

    .line 664
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 665
    invoke-virtual {p0, v0, v1}, Lcom/hookedonplay/decoviewlib/DecoView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public enableCompatibilityMode()V
    .locals 2

    .line 652
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 654
    invoke-virtual {p0, v0, v1}, Lcom/hookedonplay/decoviewlib/DecoView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public executeReset()V
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mDecoEventManager:Lcom/hookedonplay/decoviewlib/events/DecoEventManager;

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/events/DecoEventManager;->resetEvents()V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 497
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    .line 498
    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->reset()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getChartSeries(I)Lcom/hookedonplay/decoviewlib/charts/ChartSeries;
    .locals 1

    if-ltz p1, :cond_0

    .line 690
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSeriesItem(I)Lcom/hookedonplay/decoviewlib/charts/SeriesItem;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p1, :cond_0

    .line 677
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->getSeriesItem()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public moveTo(IF)V
    .locals 1

    .line 464
    new-instance v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    invoke-direct {v0, p2}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;-><init>(F)V

    invoke-virtual {v0, p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setIndex(I)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->build()Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hookedonplay/decoviewlib/DecoView;->addEvent(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    return-void
.end method

.method public moveTo(IFI)V
    .locals 1

    if-nez p3, :cond_0

    .line 481
    invoke-virtual {p0, p1}, Lcom/hookedonplay/decoviewlib/DecoView;->getChartSeries(I)Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->setPosition(F)V

    .line 482
    invoke-virtual {p0}, Lcom/hookedonplay/decoviewlib/DecoView;->invalidate()V

    return-void

    .line 485
    :cond_0
    new-instance v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    invoke-direct {v0, p2}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;-><init>(F)V

    invoke-virtual {v0, p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setIndex(I)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object p1

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setDuration(J)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->build()Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hookedonplay/decoviewlib/DecoView;->addEvent(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 596
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 597
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mDecoEventManager:Lcom/hookedonplay/decoviewlib/events/DecoEventManager;

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/events/DecoEventManager;->resetEvents()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 343
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 345
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mArcBounds:Landroid/graphics/RectF;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 351
    :goto_0
    iget-object v4, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 352
    iget-object v4, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    .line 353
    iget-object v5, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mArcBounds:Landroid/graphics/RectF;

    invoke-virtual {v4, p1, v5}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z

    .line 355
    invoke-virtual {v4}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->getSeriesItem()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getSpinClockwise()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    and-int/2addr v3, v4

    .line 356
    iget-object v4, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mMeasureViewableArea:[F

    invoke-direct {p0, v2}, Lcom/hookedonplay/decoviewlib/DecoView;->getLabelPosition(I)F

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_5

    .line 362
    :goto_3
    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mMeasureViewableArea:[F

    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 363
    aget v1, v1, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    .line 364
    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mChartSeries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    .line 365
    iget-object v2, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mArcBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mMeasureViewableArea:[F

    aget v3, v3, v0

    invoke-virtual {v1, p1, v2, v3}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->drawLabel(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    return-void
.end method

.method public onExecuteEventStart(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
    .locals 0

    .line 610
    invoke-direct {p0, p1}, Lcom/hookedonplay/decoviewlib/DecoView;->executeMove(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    .line 611
    invoke-direct {p0, p1}, Lcom/hookedonplay/decoviewlib/DecoView;->executeReveal(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)Z

    .line 612
    invoke-direct {p0, p1}, Lcom/hookedonplay/decoviewlib/DecoView;->executeEffect(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)Z

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 253
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 255
    iput p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mCanvasWidth:I

    .line 256
    iput p2, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mCanvasHeight:I

    .line 258
    invoke-direct {p0}, Lcom/hookedonplay/decoviewlib/DecoView;->recalcLayout()V

    return-void
.end method

.method public setHorizGravity(Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mHorizGravity:Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;

    return-void
.end method

.method public setVertGravity(Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView;->mVertGravity:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    return-void
.end method
