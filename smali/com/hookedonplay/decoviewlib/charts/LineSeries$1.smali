.class synthetic Lcom/hookedonplay/decoviewlib/charts/LineSeries$1;
.super Ljava/lang/Object;
.source "LineSeries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hookedonplay/decoviewlib/charts/LineSeries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$hookedonplay$decoviewlib$DecoView$HorizGravity:[I

.field static final synthetic $SwitchMap$com$hookedonplay$decoviewlib$DecoView$VertGravity:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 83
    invoke-static {}, Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;->values()[Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hookedonplay/decoviewlib/charts/LineSeries$1;->$SwitchMap$com$hookedonplay$decoviewlib$DecoView$HorizGravity:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;->GRAVITY_HORIZONTAL_LEFT:Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;

    invoke-virtual {v2}, Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/hookedonplay/decoviewlib/charts/LineSeries$1;->$SwitchMap$com$hookedonplay$decoviewlib$DecoView$HorizGravity:[I

    sget-object v3, Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;->GRAVITY_HORIZONTAL_RIGHT:Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;

    invoke-virtual {v3}, Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/hookedonplay/decoviewlib/charts/LineSeries$1;->$SwitchMap$com$hookedonplay$decoviewlib$DecoView$HorizGravity:[I

    sget-object v4, Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;->GRAVITY_HORIZONTAL_CENTER:Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;

    invoke-virtual {v4}, Lcom/hookedonplay/decoviewlib/DecoView$HorizGravity;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 64
    :catch_2
    invoke-static {}, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;->values()[Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/hookedonplay/decoviewlib/charts/LineSeries$1;->$SwitchMap$com$hookedonplay$decoviewlib$DecoView$VertGravity:[I

    :try_start_3
    sget-object v4, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;->GRAVITY_VERTICAL_TOP:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    invoke-virtual {v4}, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/hookedonplay/decoviewlib/charts/LineSeries$1;->$SwitchMap$com$hookedonplay$decoviewlib$DecoView$VertGravity:[I

    sget-object v3, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;->GRAVITY_VERTICAL_BOTTOM:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    invoke-virtual {v3}, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/hookedonplay/decoviewlib/charts/LineSeries$1;->$SwitchMap$com$hookedonplay$decoviewlib$DecoView$VertGravity:[I

    sget-object v1, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;->GRAVITY_VERTICAL_CENTER:Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;

    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/DecoView$VertGravity;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
