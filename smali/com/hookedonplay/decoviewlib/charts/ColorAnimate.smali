.class public Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;
.super Ljava/lang/Object;
.source "ColorAnimate.java"


# static fields
.field public static final ANIMATE_ALL:I = 0xf

.field public static final ANIMATE_ALPHA:I = 0x1

.field public static final ANIMATE_BLUE:I = 0x8

.field public static final ANIMATE_GREEN:I = 0x4

.field public static final ANIMATE_RED:I = 0x2


# instance fields
.field private mColorCurrent:I

.field private final mColorEnd:I

.field private final mColorStart:I

.field private mMask:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;->mColorStart:I

    .line 55
    iput p2, p0, Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;->mColorEnd:I

    .line 56
    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;->mColorCurrent:I

    const/16 p1, 0xf

    .line 57
    invoke-virtual {p0, p1}, Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;->setMask(I)V

    return-void
.end method

.method private getValue(IIIF)I
    .locals 1

    .line 65
    iget v0, p0, Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;->mMask:I

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    return p2

    :cond_0
    sub-int/2addr p3, p2

    int-to-float p1, p3

    mul-float p1, p1, p4

    float-to-int p1, p1

    add-int/2addr p2, p1

    return p2
.end method


# virtual methods
.method public getColorCurrent(F)I
    .locals 6

    .line 79
    iget v0, p0, Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;->mColorStart:I

    .line 80
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iget v1, p0, Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;->mColorEnd:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;->getValue(IIIF)I

    move-result v0

    iget v1, p0, Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;->mColorStart:I

    .line 81
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;->mColorEnd:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-direct {p0, v3, v1, v2, p1}, Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;->getValue(IIIF)I

    move-result v1

    iget v2, p0, Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;->mColorStart:I

    .line 82
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;->mColorEnd:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-direct {p0, v4, v2, v3, p1}, Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;->getValue(IIIF)I

    move-result v2

    iget v3, p0, Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;->mColorStart:I

    .line 83
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    iget v4, p0, Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;->mColorEnd:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/16 v5, 0x8

    invoke-direct {p0, v5, v3, v4, p1}, Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;->getValue(IIIF)I

    move-result p1

    .line 79
    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;->mColorCurrent:I

    return p1
.end method

.method public setMask(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/ColorAnimate;->mMask:I

    return-void
.end method
