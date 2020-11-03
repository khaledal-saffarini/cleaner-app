.class public Lcom/hookedonplay/decoviewlib/events/DecoEvent;
.super Ljava/lang/Object;
.source "DecoEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;,
        Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;,
        Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;
    }
.end annotation


# static fields
.field public static final EVENT_ID_UNSPECIFIED:J = -0x1L


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mColor:I

.field private final mDelay:J

.field private final mDisplayText:Ljava/lang/String;

.field private final mEffectDuration:J

.field private final mEffectRotations:I

.field private final mEffectType:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

.field private final mEndPosition:F

.field private final mEventID:J

.field private final mFadeDuration:J

.field private final mIndexPosition:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mLinkedViews:[Landroid/view/View;

.field private final mListener:Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;

.field private final mType:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;


# direct methods
.method private constructor <init>(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)V
    .locals 5

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->TAG:Ljava/lang/String;

    .line 70
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->access$000(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    move-result-object v0

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mType:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    .line 71
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->access$100(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mEventID:J

    .line 72
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->access$200(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mDelay:J

    .line 73
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->access$300(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    move-result-object v0

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mEffectType:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    .line 74
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->access$400(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mFadeDuration:J

    .line 75
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->access$500(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)[Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mLinkedViews:[Landroid/view/View;

    .line 76
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->access$600(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mEffectDuration:J

    .line 77
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->access$700(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)I

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mIndexPosition:I

    .line 78
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->access$800(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)I

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mEffectRotations:I

    .line 79
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->access$900(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mDisplayText:Ljava/lang/String;

    .line 80
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->access$1000(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)F

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mEndPosition:F

    .line 81
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->access$1100(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)I

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mColor:I

    .line 82
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->access$1200(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 83
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->access$1300(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;

    move-result-object p1

    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mListener:Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;

    .line 85
    iget-wide v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mEventID:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    if-nez p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->TAG:Ljava/lang/String;

    const-string v0, "EventID redundant without specifying an event listener"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;Lcom/hookedonplay/decoviewlib/events/DecoEvent$1;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;-><init>(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)V

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mColor:I

    return v0
.end method

.method public getDelay()J
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mDelay:J

    return-wide v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mDisplayText:Ljava/lang/String;

    return-object v0
.end method

.method public getEffectDuration()J
    .locals 2

    .line 123
    iget-wide v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mEffectDuration:J

    return-wide v0
.end method

.method public getEffectRotations()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mEffectRotations:I

    return v0
.end method

.method public getEffectType()Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mEffectType:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    return-object v0
.end method

.method public getEndPosition()F
    .locals 1

    .line 145
    iget v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mEndPosition:F

    return v0
.end method

.method public getEventID()J
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mEventID:J

    return-wide v0
.end method

.method public getEventType()Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mType:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    return-object v0
.end method

.method public getFadeDuration()J
    .locals 2

    .line 115
    iget-wide v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mFadeDuration:J

    return-wide v0
.end method

.method public getIndexPosition()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mIndexPosition:I

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getLinkedViews()[Landroid/view/View;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mLinkedViews:[Landroid/view/View;

    return-object v0
.end method

.method public isColorSet()Z
    .locals 1

    .line 153
    iget v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyEndListener()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mListener:Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;

    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0, p0}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;->onEventEnd(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    :cond_0
    return-void
.end method

.method public notifyStartListener()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->mListener:Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0, p0}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;->onEventStart(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    :cond_0
    return-void
.end method
