.class Lcom/zys/brokenview/LinePath;
.super Landroid/graphics/Path;
.source "LinePath.java"


# instance fields
.field private endPoint:Landroid/graphics/Point;

.field public points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private startLength:F

.field private straight:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zys/brokenview/LinePath;->points:Ljava/util/ArrayList;

    const/high16 v0, -0x40800000    # -1.0f

    .line 19
    iput v0, p0, Lcom/zys/brokenview/LinePath;->startLength:F

    .line 20
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/zys/brokenview/LinePath;->endPoint:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Lcom/zys/brokenview/LinePath;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 25
    iget-object v0, p1, Lcom/zys/brokenview/LinePath;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/zys/brokenview/LinePath;->points:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p1}, Lcom/zys/brokenview/LinePath;->getStartLength()F

    move-result v0

    iput v0, p0, Lcom/zys/brokenview/LinePath;->startLength:F

    .line 27
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Lcom/zys/brokenview/LinePath;->getEndPoint()Landroid/graphics/Point;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/zys/brokenview/LinePath;->endPoint:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public getEndPoint()Landroid/graphics/Point;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/zys/brokenview/LinePath;->endPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public getEndX()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/zys/brokenview/LinePath;->endPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public getEndY()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/zys/brokenview/LinePath;->endPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public getStartLength()F
    .locals 1

    .line 52
    iget v0, p0, Lcom/zys/brokenview/LinePath;->startLength:F

    return v0
.end method

.method public isStraight()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/zys/brokenview/LinePath;->straight:Z

    return v0
.end method

.method public lineToEnd()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/zys/brokenview/LinePath;->endPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/zys/brokenview/LinePath;->endPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/zys/brokenview/LinePath;->lineTo(FF)V

    return-void
.end method

.method public obtainEndPoint(I[ILandroid/graphics/Rect;)V
    .locals 6

    int-to-double v0, p1

    .line 62
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    neg-float v0, v0

    const/16 v1, 0x5a

    const/4 v2, 0x0

    if-ltz p1, :cond_2

    if-ge p1, v1, :cond_2

    .line 65
    aget v1, p2, v2

    if-ge p1, v1, :cond_0

    .line 66
    iget v2, p3, Landroid/graphics/Rect;->right:I

    :goto_0
    int-to-float p1, v2

    mul-float p1, p1, v0

    float-to-int p1, p1

    goto/16 :goto_3

    .line 68
    :cond_0
    aget v1, p2, v2

    if-le p1, v1, :cond_1

    .line 69
    iget v2, p3, Landroid/graphics/Rect;->top:I

    :goto_1
    int-to-float p1, v2

    div-float/2addr p1, v0

    float-to-int p1, p1

    :goto_2
    move v5, v2

    move v2, p1

    move p1, v5

    goto/16 :goto_3

    .line 71
    :cond_1
    aget p2, p2, v2

    if-ne p1, p2, :cond_d

    .line 72
    iget v2, p3, Landroid/graphics/Rect;->top:I

    .line 73
    iget p1, p3, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_2
    const/16 v3, 0xb4

    if-le p1, v1, :cond_5

    if-gt p1, v3, :cond_5

    sub-int/2addr v3, p1

    const/4 p1, 0x1

    .line 76
    aget v1, p2, p1

    if-ge v3, v1, :cond_3

    .line 77
    iget v2, p3, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 79
    :cond_3
    aget v1, p2, p1

    if-le v3, v1, :cond_4

    .line 80
    iget v2, p3, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 82
    :cond_4
    aget p1, p2, p1

    if-ne v3, p1, :cond_d

    .line 83
    iget v2, p3, Landroid/graphics/Rect;->top:I

    .line 84
    iget p1, p3, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_5
    const/16 v4, 0x10e

    if-le p1, v3, :cond_8

    if-ge p1, v4, :cond_8

    sub-int/2addr p1, v3

    const/4 v1, 0x2

    .line 87
    aget v3, p2, v1

    if-ge p1, v3, :cond_6

    .line 88
    iget v2, p3, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 90
    :cond_6
    aget v3, p2, v1

    if-le p1, v3, :cond_7

    .line 91
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 93
    :cond_7
    aget p2, p2, v1

    if-ne p1, p2, :cond_d

    .line 94
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 95
    iget p1, p3, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_8
    if-le p1, v4, :cond_b

    const/16 v3, 0x168

    if-ge p1, v3, :cond_b

    sub-int/2addr v3, p1

    const/4 p1, 0x3

    .line 98
    aget v1, p2, p1

    if-ge v3, v1, :cond_9

    .line 99
    iget v2, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 101
    :cond_9
    aget v1, p2, p1

    if-le v3, v1, :cond_a

    .line 102
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 104
    :cond_a
    aget p1, p2, p1

    if-ne v3, p1, :cond_d

    .line 105
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 106
    iget p1, p3, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_b
    if-ne p1, v1, :cond_c

    .line 111
    iget p1, p3, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_c
    if-ne p1, v4, :cond_d

    .line 115
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_d
    const/4 p1, 0x0

    .line 117
    :goto_3
    iget-object p2, p0, Lcom/zys/brokenview/LinePath;->endPoint:Landroid/graphics/Point;

    invoke-virtual {p2, v2, p1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public setEndPoint(II)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/zys/brokenview/LinePath;->endPoint:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public setEndPoint(Landroid/graphics/Point;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/zys/brokenview/LinePath;->endPoint:Landroid/graphics/Point;

    return-void
.end method

.method public setStartLength(F)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/zys/brokenview/LinePath;->startLength:F

    return-void
.end method

.method public setStraight(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/zys/brokenview/LinePath;->straight:Z

    return-void
.end method
