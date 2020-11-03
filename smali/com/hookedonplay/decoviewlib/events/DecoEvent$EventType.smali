.class public final enum Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;
.super Ljava/lang/Enum;
.source "DecoEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hookedonplay/decoviewlib/events/DecoEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

.field public static final enum EVENT_COLOR_CHANGE:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

.field public static final enum EVENT_EFFECT:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

.field public static final enum EVENT_HIDE:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

.field public static final enum EVENT_MOVE:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

.field public static final enum EVENT_SHOW:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 179
    new-instance v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    const/4 v1, 0x0

    const-string v2, "EVENT_MOVE"

    invoke-direct {v0, v2, v1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_MOVE:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    .line 180
    new-instance v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    const/4 v2, 0x1

    const-string v3, "EVENT_SHOW"

    invoke-direct {v0, v3, v2}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_SHOW:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    .line 181
    new-instance v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    const/4 v3, 0x2

    const-string v4, "EVENT_HIDE"

    invoke-direct {v0, v4, v3}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_HIDE:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    .line 182
    new-instance v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    const/4 v4, 0x3

    const-string v5, "EVENT_EFFECT"

    invoke-direct {v0, v5, v4}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_EFFECT:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    .line 183
    new-instance v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    const/4 v5, 0x4

    const-string v6, "EVENT_COLOR_CHANGE"

    invoke-direct {v0, v6, v5}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_COLOR_CHANGE:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    .line 178
    sget-object v7, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_MOVE:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_SHOW:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_HIDE:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_EFFECT:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->$VALUES:[Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 178
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;
    .locals 1

    .line 178
    const-class v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    return-object p0
.end method

.method public static values()[Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;
    .locals 1

    .line 178
    sget-object v0, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->$VALUES:[Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    invoke-virtual {v0}, [Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    return-object v0
.end method
