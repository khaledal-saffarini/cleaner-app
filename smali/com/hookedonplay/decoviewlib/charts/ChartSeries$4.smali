.class Lcom/hookedonplay/decoviewlib/charts/ChartSeries$4;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "ChartSeries.java"


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

.field final synthetic val$event:Lcom/hookedonplay/decoviewlib/events/DecoEvent;


# direct methods
.method constructor <init>(Lcom/hookedonplay/decoviewlib/charts/ChartSeries;Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$4;->this$0:Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    iput-object p2, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$4;->val$event:Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1

    .line 318
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$4;->val$event:Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEventType()Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_EFFECT:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    if-eq p1, v0, :cond_0

    .line 319
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$4;->val$event:Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->notifyEndListener()V

    :cond_0
    return-void
.end method
