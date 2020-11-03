.class public final enum Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;
.super Ljava/lang/Enum;
.source "WaveLoadingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/itangqi/waveloadingview/WaveLoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TriangleDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;

.field public static final enum EAST:Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;

.field public static final enum NORTH:Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;

.field public static final enum SOUTH:Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;

.field public static final enum WEST:Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 72
    new-instance v0, Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;

    const/4 v1, 0x0

    const-string v2, "NORTH"

    invoke-direct {v0, v2, v1}, Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;->NORTH:Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;

    .line 73
    new-instance v0, Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;

    const/4 v2, 0x1

    const-string v3, "SOUTH"

    invoke-direct {v0, v3, v2}, Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;->SOUTH:Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;

    .line 74
    new-instance v0, Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;

    const/4 v3, 0x2

    const-string v4, "EAST"

    invoke-direct {v0, v4, v3}, Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;->EAST:Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;

    .line 75
    new-instance v0, Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;

    const/4 v4, 0x3

    const-string v5, "WEST"

    invoke-direct {v0, v5, v4}, Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;->WEST:Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;

    const/4 v5, 0x4

    new-array v5, v5, [Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;

    .line 71
    sget-object v6, Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;->NORTH:Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;

    aput-object v6, v5, v1

    sget-object v1, Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;->SOUTH:Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;

    aput-object v1, v5, v2

    sget-object v1, Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;->EAST:Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;->$VALUES:[Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;
    .locals 1

    .line 71
    const-class v0, Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;

    return-object p0
.end method

.method public static values()[Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;
    .locals 1

    .line 71
    sget-object v0, Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;->$VALUES:[Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;

    invoke-virtual {v0}, [Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/itangqi/waveloadingview/WaveLoadingView$TriangleDirection;

    return-object v0
.end method
