.class Lcom/hookedonplay/decoviewlib/charts/ChartSeries$3;
.super Ljava/lang/Object;
.source "ChartSeries.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->startAnimateHideShow(Lcom/hookedonplay/decoviewlib/events/DecoEvent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

.field final synthetic val$showArc:Z


# direct methods
.method constructor <init>(Lcom/hookedonplay/decoviewlib/charts/ChartSeries;Z)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$3;->this$0:Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    iput-boolean p2, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$3;->val$showArc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 2

    .line 306
    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 307
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$3;->this$0:Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    iget-boolean v1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$3;->val$showArc:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p1, v1, p1

    :cond_0
    iput p1, v0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPercentComplete:F

    .line 309
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$3;->this$0:Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    iget-object p1, p1, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mSeriesItem:Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->getListeners()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$SeriesItemListener;

    .line 310
    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$3;->this$0:Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    iget v1, v1, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mPercentComplete:F

    invoke-interface {v0, v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$SeriesItemListener;->onSeriesItemDisplayProgress(F)V

    goto :goto_0

    :cond_1
    return-void
.end method
