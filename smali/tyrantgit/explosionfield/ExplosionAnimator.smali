.class public Ltyrantgit/explosionfield/ExplosionAnimator;
.super Landroid/animation/ValueAnimator;
.source "ExplosionAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltyrantgit/explosionfield/ExplosionAnimator$Particle;
    }
.end annotation


# static fields
.field static DEFAULT_DURATION:J = 0x400L

.field private static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final END_VALUE:F = 1.4f

.field private static final V:F

.field private static final W:F

.field private static final X:F

.field private static final Y:F


# instance fields
.field private mBound:Landroid/graphics/Rect;

.field private mContainer:Landroid/view/View;

.field private mPaint:Landroid/graphics/Paint;

.field private mParticles:[Ltyrantgit/explosionfield/ExplosionAnimator$Particle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Ltyrantgit/explosionfield/ExplosionAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v0, 0x5

    .line 35
    invoke-static {v0}, Ltyrantgit/explosionfield/Utils;->dp2Px(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Ltyrantgit/explosionfield/ExplosionAnimator;->X:F

    const/16 v0, 0x14

    .line 36
    invoke-static {v0}, Ltyrantgit/explosionfield/Utils;->dp2Px(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Ltyrantgit/explosionfield/ExplosionAnimator;->Y:F

    const/4 v0, 0x2

    .line 37
    invoke-static {v0}, Ltyrantgit/explosionfield/Utils;->dp2Px(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Ltyrantgit/explosionfield/ExplosionAnimator;->V:F

    const/4 v0, 0x1

    .line 38
    invoke-static {v0}, Ltyrantgit/explosionfield/Utils;->dp2Px(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Ltyrantgit/explosionfield/ExplosionAnimator;->W:F

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 10

    .line 44
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mPaint:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mBound:Landroid/graphics/Rect;

    const/16 p3, 0xe1

    new-array p3, p3, [Ltyrantgit/explosionfield/ExplosionAnimator$Particle;

    .line 48
    iput-object p3, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mParticles:[Ltyrantgit/explosionfield/ExplosionAnimator$Particle;

    .line 49
    new-instance p3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p3, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 50
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x11

    .line 51
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x11

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xf

    if-ge v3, v4, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    .line 54
    iget-object v6, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mParticles:[Ltyrantgit/explosionfield/ExplosionAnimator$Particle;

    mul-int/lit8 v7, v3, 0xf

    add-int/2addr v7, v5

    add-int/lit8 v5, v5, 0x1

    mul-int v8, v5, v0

    add-int/lit8 v9, v3, 0x1

    mul-int v9, v9, v1

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    invoke-direct {p0, v8, p3}, Ltyrantgit/explosionfield/ExplosionAnimator;->generateParticle(ILjava/util/Random;)Ltyrantgit/explosionfield/ExplosionAnimator$Particle;

    move-result-object v8

    aput-object v8, v6, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    :cond_1
    iput-object p1, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mContainer:Landroid/view/View;

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 58
    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Ltyrantgit/explosionfield/ExplosionAnimator;->setFloatValues([F)V

    .line 59
    sget-object p1, Ltyrantgit/explosionfield/ExplosionAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Ltyrantgit/explosionfield/ExplosionAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 60
    sget-wide p1, Ltyrantgit/explosionfield/ExplosionAnimator;->DEFAULT_DURATION:J

    invoke-virtual {p0, p1, p2}, Ltyrantgit/explosionfield/ExplosionAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3fb33333    # 1.4f
    .end array-data
.end method

.method static synthetic access$100()F
    .locals 1

    .line 30
    sget v0, Ltyrantgit/explosionfield/ExplosionAnimator;->V:F

    return v0
.end method

.method private generateParticle(ILjava/util/Random;)Ltyrantgit/explosionfield/ExplosionAnimator$Particle;
    .locals 5

    .line 64
    new-instance v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;-><init>(Ltyrantgit/explosionfield/ExplosionAnimator;Ltyrantgit/explosionfield/ExplosionAnimator$1;)V

    .line 65
    iput p1, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->color:I

    .line 66
    sget p1, Ltyrantgit/explosionfield/ExplosionAnimator;->V:F

    iput p1, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->radius:F

    .line 67
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const v1, 0x3e4ccccd    # 0.2f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    .line 68
    sget p1, Ltyrantgit/explosionfield/ExplosionAnimator;->V:F

    sget v2, Ltyrantgit/explosionfield/ExplosionAnimator;->X:F

    sub-float/2addr v2, p1

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr p1, v2

    iput p1, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->baseRadius:F

    goto :goto_0

    .line 70
    :cond_0
    sget p1, Ltyrantgit/explosionfield/ExplosionAnimator;->W:F

    sget v2, Ltyrantgit/explosionfield/ExplosionAnimator;->V:F

    sub-float/2addr v2, p1

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr p1, v2

    iput p1, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->baseRadius:F

    .line 72
    :goto_0
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p1

    .line 73
    iget-object v2, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e3851ec    # 0.18f

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float v4, v4, v3

    add-float/2addr v4, v1

    mul-float v2, v2, v4

    iput v2, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->top:F

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    .line 74
    iget v2, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->top:F

    goto :goto_1

    :cond_1
    iget v2, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->top:F

    iget v3, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->top:F

    mul-float v3, v3, v1

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    :goto_1
    iput v2, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->top:F

    .line 75
    iget-object v2, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    mul-float v2, v2, v3

    const v3, 0x3fe66666    # 1.8f

    mul-float v2, v2, v3

    iput v2, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->bottom:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    .line 76
    iget p1, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->bottom:F

    goto :goto_3

    :cond_2
    const v1, 0x3f4ccccd    # 0.8f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    iget p1, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->bottom:F

    const v1, 0x3f19999a    # 0.6f

    goto :goto_2

    :cond_3
    iget p1, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->bottom:F

    const v1, 0x3e99999a    # 0.3f

    :goto_2
    mul-float p1, p1, v1

    .line 77
    :goto_3
    iput p1, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->bottom:F

    const/high16 p1, 0x40800000    # 4.0f

    .line 78
    iget v1, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->top:F

    mul-float v1, v1, p1

    iget p1, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->bottom:F

    div-float/2addr v1, p1

    iput v1, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->mag:F

    .line 79
    iget p1, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->mag:F

    neg-float p1, p1

    iget v1, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->bottom:F

    div-float/2addr p1, v1

    iput p1, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->neg:F

    .line 80
    iget-object p1, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mBound:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    sget v1, Ltyrantgit/explosionfield/ExplosionAnimator;->Y:F

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float/2addr v2, v4

    mul-float v1, v1, v2

    add-float/2addr p1, v1

    .line 81
    iput p1, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->baseCx:F

    .line 82
    iput p1, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->cx:F

    .line 83
    iget-object p1, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mBound:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    sget v1, Ltyrantgit/explosionfield/ExplosionAnimator;->Y:F

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float/2addr v2, v4

    mul-float v1, v1, v2

    add-float/2addr p1, v1

    .line 84
    iput p1, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->baseCy:F

    .line 85
    iput p1, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->cy:F

    const p1, 0x3e0f5c29    # 0.14f

    .line 86
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float v1, v1, p1

    iput v1, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->life:F

    const p1, 0x3ecccccd    # 0.4f

    .line 87
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p2

    mul-float p2, p2, p1

    iput p2, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->overflow:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 88
    iput p1, v0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->alpha:F

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 7

    .line 93
    invoke-virtual {p0}, Ltyrantgit/explosionfield/ExplosionAnimator;->isStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 96
    :cond_0
    iget-object v0, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mParticles:[Ltyrantgit/explosionfield/ExplosionAnimator$Particle;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 97
    invoke-virtual {p0}, Ltyrantgit/explosionfield/ExplosionAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->advance(F)V

    .line 98
    iget v4, v3, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->alpha:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 99
    iget-object v4, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mPaint:Landroid/graphics/Paint;

    iget v5, v3, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->color:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v4, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mPaint:Landroid/graphics/Paint;

    iget v5, v3, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->color:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, v3, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->alpha:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 101
    iget v4, v3, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->cx:F

    iget v5, v3, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->cy:F

    iget v3, v3, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->radius:F

    iget-object v6, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_2
    iget-object p1, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public start()V
    .locals 2

    .line 110
    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 111
    iget-object v0, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mContainer:Landroid/view/View;

    iget-object v1, p0, Ltyrantgit/explosionfield/ExplosionAnimator;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method
