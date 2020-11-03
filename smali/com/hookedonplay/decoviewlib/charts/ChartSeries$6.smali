.class Lcom/hookedonplay/decoviewlib/charts/ChartSeries$6;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "ChartSeries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hookedonplay/decoviewlib/charts/ChartSeries;->startAnimateColorChange(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
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

    .line 370
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$6;->this$0:Lcom/hookedonplay/decoviewlib/charts/ChartSeries;

    iput-object p2, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$6;->val$event:Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0

    .line 373
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/ChartSeries$6;->val$event:Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->notifyEndListener()V

    return-void
.end method
