.class public final enum Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;
.super Ljava/lang/Enum;
.source "DecoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hookedonplay/decoviewlib/DecoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VertGravity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

.field public static final enum GRAVITY_VERTICAL_BOTTOM:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

.field public static final enum GRAVITY_VERTICAL_CENTER:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

.field public static final enum GRAVITY_VERTICAL_FILL:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

.field public static final enum GRAVITY_VERTICAL_TOP:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 700
    new-instance v0, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    const/4 v1, 0x0

    const-string v2, "GRAVITY_VERTICAL_TOP"

    invoke-direct {v0, v2, v1}, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;->GRAVITY_VERTICAL_TOP:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    .line 701
    new-instance v0, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    const/4 v2, 0x1

    const-string v3, "GRAVITY_VERTICAL_CENTER"

    invoke-direct {v0, v3, v2}, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;->GRAVITY_VERTICAL_CENTER:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    .line 702
    new-instance v0, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    const/4 v3, 0x2

    const-string v4, "GRAVITY_VERTICAL_BOTTOM"

    invoke-direct {v0, v4, v3}, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;->GRAVITY_VERTICAL_BOTTOM:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    .line 703
    new-instance v0, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    const/4 v4, 0x3

    const-string v5, "GRAVITY_VERTICAL_FILL"

    invoke-direct {v0, v5, v4}, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;->GRAVITY_VERTICAL_FILL:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    .line 699
    sget-object v6, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;->GRAVITY_VERTICAL_TOP:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    aput-object v6, v5, v1

    sget-object v1, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;->GRAVITY_VERTICAL_CENTER:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    aput-object v1, v5, v2

    sget-object v1, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;->GRAVITY_VERTICAL_BOTTOM:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;->$VALUES:[Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 699
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;
    .locals 1

    .line 699
    const-class v0, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    return-object p0
.end method

.method public static values()[Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;
    .locals 1

    .line 699
    sget-object v0, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;->$VALUES:[Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    invoke-virtual {v0}, [Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    return-object v0
.end method
