.class Lcom/hookedonplay/decoviewlib/charts/ChartSeries$2;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "ChartSeries.java"


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

.field final synthetic val$changeColors:Z

.field final synthetic val$event:Lcom/hookedonplay/decoviewlib/events/DecoEvent;


# direct methods
.method constructor <init>(Lcom/hookedonplay/decoviewlib/charts/ChartSeries;ZLcom/hookedonplay/decoviewlib/events/DecoEvent;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$2;->this$0:Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    iput-boolean p2, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$2;->val$changeColors:Z

    iput-object p3, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$2;->val$event:Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1

    .line 252
    iget-boolean p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$2;->val$changeColors:Z

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$2;->this$0:Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->access$002(Lcom/hookedonplay/decoviewlib/charts/ChartSeries;Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;)Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;

    .line 256
    :cond_0
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$2;->val$event:Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->notifyEndListener()V

    return-void
.end method
