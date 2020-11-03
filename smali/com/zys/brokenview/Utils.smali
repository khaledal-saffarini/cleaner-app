.class public Lcom/zys/brokenview/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final DENSITY:F

.field private static final mCanvas:Landroid/graphics/Canvas;

.field private static random:Ljava/util/Random;

.field static screenHeight:I

.field static screenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/zys/brokenview/Utils;->random:Ljava/util/Random;

    .line 16
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/zys/brokenview/Utils;->DENSITY:F

    .line 17
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/zys/brokenview/Utils;->mCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertViewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 4

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x2

    .line 25
    invoke-static {v0, v1, v2, v3}, Lcom/zys/brokenview/Utils;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    sget-object v1, Lcom/zys/brokenview/Utils;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 29
    sget-object v1, Lcom/zys/brokenview/Utils;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 30
    sget-object v1, Lcom/zys/brokenview/Utils;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 31
    sget-object p0, Lcom/zys/brokenview/Utils;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-object v0
.end method

.method static createBitmapSafely(IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 1

    :goto_0
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_0

    .line 39
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p3

    .line 41
    invoke-virtual {p3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 42
    invoke-static {}, Ljava/lang/System;->gc()V

    move p3, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static dp2px(I)I
    .locals 1

    int-to-float p0, p0

    .line 20
    sget v0, Lcom/zys/brokenview/Utils;->DENSITY:F

    mul-float p0, p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method static nextBoolean()Z
    .locals 1

    .line 65
    sget-object v0, Lcom/zys/brokenview/Utils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method static nextFloat(F)F
    .locals 1

    .line 61
    sget-object v0, Lcom/zys/brokenview/Utils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float v0, v0, p0

    return v0
.end method

.method static nextFloat(FF)F
    .locals 2

    .line 57
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sget-object v1, Lcom/zys/brokenview/Utils;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    mul-float v1, v1, p0

    add-float/2addr v0, v1

    return v0
.end method

.method static nextInt(I)I
    .locals 1

    .line 53
    sget-object v0, Lcom/zys/brokenview/Utils;->random:Ljava/util/Random;

    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    return p0
.end method

.method static nextInt(II)I
    .locals 2

    .line 49
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v1, Lcom/zys/brokenview/Utils;->random:Ljava/util/Random;

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
