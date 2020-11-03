.class Lcom/hookedonplay/decoviewlib/charts/ChartSeries$8;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "ChartSeries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->startAnimateEffect(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

.field final synthetic val$event:Lcom/hookedonplay/decoviewlib/events/DecoEvent;


# direct methods
.method constructor <init>(Lcom/hookedonplay/decoviewlib/charts/ChartSeries;Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$8;->this$0:Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    iput-object p2, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$8;->val$event:Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1

    .line 423
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$8;->val$event:Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->notifyEndListener()V

    .line 424
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$8;->this$0:Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    sget-object v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_MOVE:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    iput-object v0, p1, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mDrawMode:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    .line 425
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$8;->this$0:Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    iget-object v0, p1, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mEffect:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;

    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;->postExecuteVisibility()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->access$102(Lcom/hookedonplay/decoviewlib/charts/ChartSeries;Z)Z

    .line 426
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$8;->this$0:Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->mEffect:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect;

    return-void
.end method
