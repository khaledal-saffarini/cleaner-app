.class public Llightning/thunder/cleaner/Revert_PowerSaving;
.super Landroid/app/Activity;
.source "Revert_PowerSaving.java"


# instance fields
.field arcView:Lcom/hookedonplay/decoviewlib/DecoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0043

    .line 28
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Revert_PowerSaving;->setContentView(I)V

    const p1, 0x7f080076

    .line 29
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Revert_PowerSaving;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hookedonplay/decoviewlib/DecoView;

    iput-object p1, p0, Llightning/thunder/cleaner/Revert_PowerSaving;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    .line 31
    new-instance v0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    const/16 v1, 0xda

    const/16 v2, 0xff

    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;-><init>(I)V

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    .line 32
    invoke-virtual {v0, v2, v1, v2}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setRange(FFF)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v0

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 33
    invoke-virtual {v0, v3}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->build()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Lcom/hookedonplay/decoviewlib/DecoView;->addSeries(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;)I

    .line 36
    iget-object p1, p0, Llightning/thunder/cleaner/Revert_PowerSaving;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    new-instance v0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    const-string v3, "#F22938"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v4}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;-><init>(I)V

    .line 37
    invoke-virtual {v0, v2, v1, v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setRange(FFF)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v0

    const/4 v4, 0x0

    .line 38
    invoke-virtual {v0, v4}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setInitialVisibility(Z)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v0

    const/high16 v4, 0x41400000    # 12.0f

    .line 39
    invoke-virtual {v0, v4}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setLineWidth(F)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->build()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Lcom/hookedonplay/decoviewlib/DecoView;->addSeries(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;)I

    .line 43
    new-instance p1, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p1, v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;-><init>(I)V

    .line 44
    invoke-virtual {p1, v2, v1, v2}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setRange(FFF)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object p1

    .line 45
    invoke-virtual {p1, v4}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setLineWidth(F)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->build()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    .line 48
    new-instance p1, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    const-string v0, "#2499E0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p1, v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;-><init>(I)V

    .line 49
    invoke-virtual {p1, v2, v1, v2}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setRange(FFF)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object p1

    .line 50
    invoke-virtual {p1, v4}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setLineWidth(F)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->build()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    move-result-object p1

    .line 54
    iget-object v0, p0, Llightning/thunder/cleaner/Revert_PowerSaving;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    invoke-virtual {v0, p1}, Lcom/hookedonplay/decoviewlib/DecoView;->addSeries(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;)I

    move-result p1

    .line 57
    iget-object v0, p0, Llightning/thunder/cleaner/Revert_PowerSaving;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    new-instance v1, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    sget-object v2, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_SHOW:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;-><init>(Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;Z)V

    const-wide/16 v2, 0x1f4

    .line 58
    invoke-virtual {v1, v2, v3}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setDelay(J)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    .line 59
    invoke-virtual {v1, v2, v3}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setDuration(J)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v1

    new-instance v2, Llightning/thunder/cleaner/Revert_PowerSaving$1;

    invoke-direct {v2, p0}, Llightning/thunder/cleaner/Revert_PowerSaving$1;-><init>(Llightning/thunder/cleaner/Revert_PowerSaving;)V

    .line 60
    invoke-virtual {v1, v2}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setListener(Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->build()Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/hookedonplay/decoviewlib/DecoView;->addEvent(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    .line 75
    iget-object v0, p0, Llightning/thunder/cleaner/Revert_PowerSaving;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    new-instance v1, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-direct {v1, v2}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;-><init>(F)V

    invoke-virtual {v1, p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setIndex(I)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object p1

    const-wide/16 v1, 0xfa0

    invoke-virtual {p1, v1, v2}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setDelay(J)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object p1

    new-instance v1, Llightning/thunder/cleaner/Revert_PowerSaving$2;

    invoke-direct {v1, p0}, Llightning/thunder/cleaner/Revert_PowerSaving$2;-><init>(Llightning/thunder/cleaner/Revert_PowerSaving;)V

    invoke-virtual {p1, v1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setListener(Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->build()Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    move-result-object p1

    .line 75
    invoke-virtual {v0, p1}, Lcom/hookedonplay/decoviewlib/DecoView;->addEvent(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    return-void
.end method
