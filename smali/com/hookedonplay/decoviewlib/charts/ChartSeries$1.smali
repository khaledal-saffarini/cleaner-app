.class Lcom/hookedonplay/decoviewlib/charts/ChartSeries$1;
.super Ljava/lang/Object;
.source "ChartSeries.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->startAnimateMove(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hookedonplay/decoviewlib/charts/ChartSeries;


# direct methods
.method constructor <init>(Lcom/hookedonplay/decoviewlib/charts/ChartSeries;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$1;->this$0:Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 4

    .line 234
    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 235
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$1;->this$0:Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    iget v1, v0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPositionStart:F

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$1;->this$0:Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    iget v2, v2, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPositionEnd:F

    iget-object v3, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$1;->this$0:Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    iget v3, v3, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPositionStart:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    iput v1, v0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPercentComplete:F

    .line 236
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$1;->this$0:Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    iput p1, v0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPositionCurrentEnd:F

    .line 243
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$1;->this$0:Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    iget-object p1, p1, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getListeners()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$SeriesItemListener;

    .line 244
    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$1;->this$0:Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    iget v1, v1, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPercentComplete:F

    iget-object v2, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$1;->this$0:Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    iget v2, v2, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPositionCurrentEnd:F

    invoke-interface {v0, v1, v2}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$SeriesItemListener;->onSeriesItemAnimationProgress(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method
