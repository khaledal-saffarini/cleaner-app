.class Lcom/zys/brokenview/Piece;
.super Ljava/lang/Object;
.source "Piece.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private angle:F

.field bitmap:Landroid/graphics/Bitmap;

.field private limitY:I

.field matrix:Landroid/graphics/Matrix;

.field private rotateX:I

.field private rotateY:I

.field private shadow:I

.field private speed:F

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(IILandroid/graphics/Bitmap;I)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p3, p0, Lcom/zys/brokenview/Piece;->bitmap:Landroid/graphics/Bitmap;

    .line 19
    iput p1, p0, Lcom/zys/brokenview/Piece;->x:I

    .line 20
    iput p2, p0, Lcom/zys/brokenview/Piece;->y:I

    .line 21
    iput p4, p0, Lcom/zys/brokenview/Piece;->shadow:I

    if-eqz p3, :cond_2

    .line 24
    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    iput-object p4, p0, Lcom/zys/brokenview/Piece;->matrix:Landroid/graphics/Matrix;

    int-to-float p1, p1

    int-to-float p2, p2

    .line 25
    invoke-virtual {p4, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 p2, 0x40800000    # 4.0f

    .line 27
    invoke-static {p1, p2}, Lcom/zys/brokenview/Utils;->nextFloat(FF)F

    move-result p1

    iput p1, p0, Lcom/zys/brokenview/Piece;->speed:F

    .line 28
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-static {p1}, Lcom/zys/brokenview/Utils;->nextInt(I)I

    move-result p1

    iput p1, p0, Lcom/zys/brokenview/Piece;->rotateX:I

    .line 29
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {p1}, Lcom/zys/brokenview/Utils;->nextInt(I)I

    move-result p1

    iput p1, p0, Lcom/zys/brokenview/Piece;->rotateY:I

    const p1, 0x3f19999a    # 0.6f

    .line 30
    invoke-static {p1}, Lcom/zys/brokenview/Utils;->nextFloat(F)F

    move-result p1

    invoke-static {}, Lcom/zys/brokenview/Utils;->nextBoolean()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    int-to-float p2, p2

    mul-float p1, p1, p2

    iput p1, p0, Lcom/zys/brokenview/Piece;->angle:F

    .line 32
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 33
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    if-le p1, p2, :cond_1

    goto :goto_1

    :cond_1
    move p1, p2

    .line 34
    :goto_1
    iput p1, p0, Lcom/zys/brokenview/Piece;->limitY:I

    .line 35
    sget p2, Lcom/zys/brokenview/Utils;->screenHeight:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/zys/brokenview/Piece;->limitY:I

    :cond_2
    return-void
.end method


# virtual methods
.method public advance(F)Z
    .locals 4

    const v0, 0x3f8fb15b    # 1.1226f

    mul-float v0, v0, p1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 45
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x41000000    # 8.0f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/zys/brokenview/Piece;->speed:F

    mul-float v0, v0, v1

    .line 46
    iget v1, p0, Lcom/zys/brokenview/Piece;->y:I

    int-to-float v1, v1

    sget v2, Lcom/zys/brokenview/Utils;->screenHeight:I

    int-to-float v2, v2

    mul-float v0, v0, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    mul-float p1, p1, p1

    .line 49
    iget-object v0, p0, Lcom/zys/brokenview/Piece;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 50
    iget-object v0, p0, Lcom/zys/brokenview/Piece;->matrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/zys/brokenview/Piece;->angle:F

    mul-float v2, v2, p1

    const/high16 p1, 0x43b40000    # 360.0f

    mul-float v2, v2, p1

    iget p1, p0, Lcom/zys/brokenview/Piece;->rotateX:I

    int-to-float p1, p1

    iget v3, p0, Lcom/zys/brokenview/Piece;->rotateY:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, p1, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 51
    iget-object p1, p0, Lcom/zys/brokenview/Piece;->matrix:Landroid/graphics/Matrix;

    iget v0, p0, Lcom/zys/brokenview/Piece;->x:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 52
    iget p1, p0, Lcom/zys/brokenview/Piece;->limitY:I

    int-to-float p1, p1

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 41
    iget v0, p0, Lcom/zys/brokenview/Piece;->shadow:I

    check-cast p1, Lcom/zys/brokenview/Piece;

    iget p1, p1, Lcom/zys/brokenview/Piece;->shadow:I

    sub-int/2addr v0, p1

    return v0
.end method
