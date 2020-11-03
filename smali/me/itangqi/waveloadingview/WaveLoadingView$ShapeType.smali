.class public final enum Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;
.super Ljava/lang/Enum;
.source "WaveLoadingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/itangqi/waveloadingview/WaveLoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShapeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;

.field public static final enum CIRCLE:Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;

.field public static final enum RECTANGLE:Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;

.field public static final enum SQUARE:Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;

.field public static final enum TRIANGLE:Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 65
    new-instance v0, Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;

    const/4 v1, 0x0

    const-string v2, "TRIANGLE"

    invoke-direct {v0, v2, v1}, Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;->TRIANGLE:Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;

    .line 66
    new-instance v0, Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;

    const/4 v2, 0x1

    const-string v3, "CIRCLE"

    invoke-direct {v0, v3, v2}, Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;->CIRCLE:Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;

    .line 67
    new-instance v0, Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;

    const/4 v3, 0x2

    const-string v4, "SQUARE"

    invoke-direct {v0, v4, v3}, Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;->SQUARE:Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;

    .line 68
    new-instance v0, Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;

    const/4 v4, 0x3

    const-string v5, "RECTANGLE"

    invoke-direct {v0, v5, v4}, Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;->RECTANGLE:Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;

    const/4 v5, 0x4

    new-array v5, v5, [Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;

    .line 64
    sget-object v6, Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;->TRIANGLE:Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;

    aput-object v6, v5, v1

    sget-object v1, Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;->CIRCLE:Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;

    aput-object v1, v5, v2

    sget-object v1, Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;->SQUARE:Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;->$VALUES:[Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;
    .locals 1

    .line 64
    const-class v0, Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;

    return-object p0
.end method

.method public static values()[Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;
    .locals 1

    .line 64
    sget-object v0, Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;->$VALUES:[Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;

    invoke-virtual {v0}, [Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;

    return-object v0
.end method
