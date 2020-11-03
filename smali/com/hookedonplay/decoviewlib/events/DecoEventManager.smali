.class public Lcom/hookedonplay/decoviewlib/events/DecoEventManager;
.super Ljava/lang/Object;
.source "DecoEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hookedonplay/decoviewlib/events/DecoEventManager$ArcEventManagerListener;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/hookedonplay/decoviewlib/events/DecoEventManager$ArcEventManagerListener;


# direct methods
.method public constructor <init>(Lcom/hookedonplay/decoviewlib/events/DecoEventManager$ArcEventManagerListener;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager;->mHandler:Landroid/os/Handler;

    .line 45
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager;->mListener:Lcom/hookedonplay/decoviewlib/events/DecoEventManager$ArcEventManagerListener;

    return-void
.end method

.method static synthetic access$000(Lcom/hookedonplay/decoviewlib/events/DecoEventManager;)Lcom/hookedonplay/decoviewlib/events/DecoEventManager$ArcEventManagerListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager;->mListener:Lcom/hookedonplay/decoviewlib/events/DecoEventManager$ArcEventManagerListener;

    return-object p0
.end method


# virtual methods
.method public add(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
    .locals 6

    .line 60
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEventType()Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_SHOW:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 61
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEffectType()Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    move-result-object v0

    sget-object v1, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;->EFFECT_SPIRAL_OUT:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    if-eq v0, v1, :cond_1

    .line 62
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEffectType()Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    move-result-object v0

    sget-object v1, Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;->EFFECT_SPIRAL_OUT_FILL:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 64
    :goto_1
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getEventType()Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    move-result-object v1

    sget-object v4, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_MOVE:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    if-ne v1, v4, :cond_2

    const/4 v2, 0x1

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1;

    invoke-direct {v3, p0, v0, p1, v2}, Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1;-><init>(Lcom/hookedonplay/decoviewlib/events/DecoEventManager;ZLcom/hookedonplay/decoviewlib/events/DecoEvent;Z)V

    .line 112
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getDelay()J

    move-result-wide v4

    .line 66
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public resetEvents()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
