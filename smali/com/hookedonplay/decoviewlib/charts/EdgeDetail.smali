.class public Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;
.super Ljava/lang/Object;
.source "EdgeDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hookedonplay/decoviewlib/charts/EdgeDetail$EdgeType;
    }
.end annotation


# instance fields
.field private mClipPath:Landroid/graphics/Path;

.field private final mColor:I

.field private final mEdgeType:Lcom/hookedonplay/decoviewlib/charts/EdgeDetail$EdgeType;

.field private final mRatio:F


# direct methods
.method public constructor <init>(Lcom/hookedonplay/decoviewlib/charts/EdgeDetail$EdgeType;IF)V
    .locals 5

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    float-to-double v0, p3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-ltz v0, :cond_0

    .line 57
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;->mEdgeType:Lcom/hookedonplay/decoviewlib/charts/EdgeDetail$EdgeType;

    .line 58
    iput p2, p0, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;->mColor:I

    .line 59
    iput p3, p0, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;->mRatio:F

    return-void

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid ratio set for EdgeDetail"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iget-object v0, p1, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;->mEdgeType:Lcom/hookedonplay/decoviewlib/charts/EdgeDetail$EdgeType;

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;->mEdgeType:Lcom/hookedonplay/decoviewlib/charts/EdgeDetail$EdgeType;

    .line 64
    iget v0, p1, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;->mColor:I

    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;->mColor:I

    .line 65
    iget p1, p1, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;->mRatio:F

    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;->mRatio:F

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;->mClipPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method getClipPath()Landroid/graphics/Path;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;->mClipPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;->mColor:I

    return v0
.end method

.method public getEdgeType()Lcom/hookedonplay/decoviewlib/charts/EdgeDetail$EdgeType;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;->mEdgeType:Lcom/hookedonplay/decoviewlib/charts/EdgeDetail$EdgeType;

    return-object v0
.end method

.method public getRatio()F
    .locals 1

    .line 84
    iget v0, p0, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;->mRatio:F

    return v0
.end method

.method setClipPath(Landroid/graphics/Path;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/EdgeDetail;->mClipPath:Landroid/graphics/Path;

    return-void
.end method
