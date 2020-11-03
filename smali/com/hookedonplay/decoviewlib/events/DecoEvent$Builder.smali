.class public Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;
.super Ljava/lang/Object;
.source "DecoEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hookedonplay/decoviewlib/events/DecoEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mColor:I

.field private mDelay:J

.field private mDisplayText:Ljava/lang/String;

.field private mEffectDuration:J

.field private mEffectRotations:I

.field private mEffectType:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

.field private mEndPosition:F

.field private mEventID:J

.field private mFadeDuration:J

.field private mIndex:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLinkedViews:[Landroid/view/View;

.field private mListener:Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;

.field private final mType:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;


# direct methods
.method public constructor <init>(F)V
    .locals 4

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 198
    iput-wide v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mEventID:J

    const-wide/16 v2, 0x3e8

    .line 201
    iput-wide v2, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mFadeDuration:J

    .line 203
    iput-wide v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mEffectDuration:J

    const/4 v0, -0x1

    .line 204
    iput v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mIndex:I

    const/4 v0, 0x2

    .line 205
    iput v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mEffectRotations:I

    const-string v0, "#00000000"

    .line 208
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mColor:I

    .line 219
    sget-object v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_MOVE:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mType:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    .line 220
    iput p1, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mEndPosition:F

    return-void
.end method

.method public constructor <init>(Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;)V
    .locals 4

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 198
    iput-wide v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mEventID:J

    const-wide/16 v2, 0x3e8

    .line 201
    iput-wide v2, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mFadeDuration:J

    .line 203
    iput-wide v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mEffectDuration:J

    const/4 v0, -0x1

    .line 204
    iput v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mIndex:I

    const/4 v0, 0x2

    .line 205
    iput v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mEffectRotations:I

    const-string v0, "#00000000"

    .line 208
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mColor:I

    .line 229
    sget-object v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_EFFECT:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mType:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    .line 230
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mEffectType:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    return-void
.end method

.method public constructor <init>(Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;I)V
    .locals 4

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 198
    iput-wide v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mEventID:J

    const-wide/16 v2, 0x3e8

    .line 201
    iput-wide v2, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mFadeDuration:J

    .line 203
    iput-wide v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mEffectDuration:J

    const/4 v0, -0x1

    .line 204
    iput v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mIndex:I

    const/4 v0, 0x2

    .line 205
    iput v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mEffectRotations:I

    const-string v0, "#00000000"

    .line 208
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mColor:I

    .line 249
    sget-object v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_COLOR_CHANGE:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    if-ne v0, p1, :cond_0

    .line 252
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mType:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    .line 253
    iput p2, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mColor:I

    return-void

    .line 250
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must specify EVENT_COLOR_CHANGE when setting new color"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;Z)V
    .locals 4

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 198
    iput-wide v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mEventID:J

    const-wide/16 v2, 0x3e8

    .line 201
    iput-wide v2, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mFadeDuration:J

    .line 203
    iput-wide v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mEffectDuration:J

    const/4 v0, -0x1

    .line 204
    iput v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mIndex:I

    const/4 v0, 0x2

    .line 205
    iput v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mEffectRotations:I

    const-string v0, "#00000000"

    .line 208
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mColor:I

    .line 242
    sget-object v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_HIDE:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_SHOW:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid arguments for EventType. Use Alternative constructor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 245
    sget-object p1, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_SHOW:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_HIDE:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    :goto_1
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mType:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    return-void
.end method

.method static synthetic access$000(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mType:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)J
    .locals 2

    .line 196
    iget-wide v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mEventID:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)F
    .locals 0

    .line 196
    iget p0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mEndPosition:F

    return p0
.end method

.method static synthetic access$1100(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)I
    .locals 0

    .line 196
    iget p0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mColor:I

    return p0
.end method

.method static synthetic access$1200(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mListener:Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)J
    .locals 2

    .line 196
    iget-wide v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mDelay:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mEffectType:Lcom/hookedonplay/decoviewlib/charts/DecoDrawEffect$EffectType;

    return-object p0
.end method

.method static synthetic access$400(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)J
    .locals 2

    .line 196
    iget-wide v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mFadeDuration:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)[Landroid/view/View;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mLinkedViews:[Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)J
    .locals 2

    .line 196
    iget-wide v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mEffectDuration:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)I
    .locals 0

    .line 196
    iget p0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mIndex:I

    return p0
.end method

.method static synthetic access$800(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)I
    .locals 0

    .line 196
    iget p0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mEffectRotations:I

    return p0
.end method

.method static synthetic access$900(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;)Ljava/lang/String;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mDisplayText:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/hookedonplay/decoviewlib/events/DecoEvent;
    .locals 2

    .line 398
    new-instance v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;-><init>(Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;Lcom/hookedonplay/decoviewlib/events/DecoEvent$1;)V

    return-object v0
.end method

.method public setColor(I)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;
    .locals 0

    .line 382
    iput p1, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mColor:I

    return-object p0
.end method

.method public setDelay(J)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;
    .locals 0

    .line 288
    iput-wide p1, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mDelay:J

    return-object p0
.end method

.method public setDisplayText(Ljava/lang/String;)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mDisplayText:Ljava/lang/String;

    return-object p0
.end method

.method public setDuration(J)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;
    .locals 0

    .line 301
    iput-wide p1, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mEffectDuration:J

    return-object p0
.end method

.method public setEffectRotations(I)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;
    .locals 0

    .line 323
    iput p1, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mEffectRotations:I

    return-object p0
.end method

.method public setEventID(J)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;
    .locals 0

    .line 264
    iput-wide p1, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mEventID:J

    return-object p0
.end method

.method public setFadeDuration(J)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;
    .locals 0

    .line 312
    iput-wide p1, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mFadeDuration:J

    return-object p0
.end method

.method public setIndex(I)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;
    .locals 0

    .line 277
    iput p1, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mIndex:I

    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public setLinkedViews([Landroid/view/View;)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mLinkedViews:[Landroid/view/View;

    return-object p0
.end method

.method public setListener(Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->mListener:Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;

    return-object p0
.end method
