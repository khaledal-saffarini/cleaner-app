.class public Ltyrantgit/explosionfield/ExplosionField;
.super Landroid/view/View;
.source "ExplosionField.java"


# instance fields
.field private mExpandInset:[I

.field private mExplosions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltyrantgit/explosionfield/ExplosionAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ltyrantgit/explosionfield/ExplosionField;->mExplosions:Ljava/util/List;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 40
    iput-object p1, p0, Ltyrantgit/explosionfield/ExplosionField;->mExpandInset:[I

    .line 44
    invoke-direct {p0}, Ltyrantgit/explosionfield/ExplosionField;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ltyrantgit/explosionfield/ExplosionField;->mExplosions:Ljava/util/List;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 40
    iput-object p1, p0, Ltyrantgit/explosionfield/ExplosionField;->mExpandInset:[I

    .line 49
    invoke-direct {p0}, Ltyrantgit/explosionfield/ExplosionField;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ltyrantgit/explosionfield/ExplosionField;->mExplosions:Ljava/util/List;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 40
    iput-object p1, p0, Ltyrantgit/explosionfield/ExplosionField;->mExpandInset:[I

    .line 54
    invoke-direct {p0}, Ltyrantgit/explosionfield/ExplosionField;->init()V

    return-void
.end method

.method static synthetic access$000(Ltyrantgit/explosionfield/ExplosionField;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Ltyrantgit/explosionfield/ExplosionField;->mExplosions:Ljava/util/List;

    return-object p0
.end method

.method public static attach2Window(Landroid/app/Activity;)Ltyrantgit/explosionfield/ExplosionField;
    .locals 3

    const v0, 0x1020002

    .line 119
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 120
    new-instance v1, Ltyrantgit/explosionfield/ExplosionField;

    invoke-direct {v1, p0}, Ltyrantgit/explosionfield/ExplosionField;-><init>(Landroid/content/Context;)V

    .line 121
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private init()V
    .locals 2

    .line 58
    iget-object v0, p0, Ltyrantgit/explosionfield/ExplosionField;->mExpandInset:[I

    const/16 v1, 0x20

    invoke-static {v1}, Ltyrantgit/explosionfield/Utils;->dp2Px(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 114
    iget-object v0, p0, Ltyrantgit/explosionfield/ExplosionField;->mExplosions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 115
    invoke-virtual {p0}, Ltyrantgit/explosionfield/ExplosionField;->invalidate()V

    return-void
.end method

.method public expandExplosionBound(II)V
    .locals 2

    .line 70
    iget-object v0, p0, Ltyrantgit/explosionfield/ExplosionField;->mExpandInset:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 71
    aput p2, v0, p1

    return-void
.end method

.method public explode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;JJ)V
    .locals 1

    .line 75
    new-instance v0, Ltyrantgit/explosionfield/ExplosionAnimator;

    invoke-direct {v0, p0, p1, p2}, Ltyrantgit/explosionfield/ExplosionAnimator;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 76
    new-instance p1, Ltyrantgit/explosionfield/ExplosionField$1;

    invoke-direct {p1, p0}, Ltyrantgit/explosionfield/ExplosionField$1;-><init>(Ltyrantgit/explosionfield/ExplosionField;)V

    invoke-virtual {v0, p1}, Ltyrantgit/explosionfield/ExplosionAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 82
    invoke-virtual {v0, p3, p4}, Ltyrantgit/explosionfield/ExplosionAnimator;->setStartDelay(J)V

    .line 83
    invoke-virtual {v0, p5, p6}, Ltyrantgit/explosionfield/ExplosionAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 84
    iget-object p1, p0, Ltyrantgit/explosionfield/ExplosionField;->mExplosions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v0}, Ltyrantgit/explosionfield/ExplosionAnimator;->start()V

    return-void
.end method

.method public explode(Landroid/view/View;)V
    .locals 7

    .line 89
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 90
    invoke-virtual {p1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 92
    invoke-virtual {p0, v1}, Ltyrantgit/explosionfield/ExplosionField;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    .line 93
    aget v4, v1, v3

    neg-int v4, v4

    const/4 v5, 0x1

    aget v1, v1, v5

    neg-int v1, v1

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 94
    iget-object v1, p0, Ltyrantgit/explosionfield/ExplosionField;->mExpandInset:[I

    aget v3, v1, v3

    neg-int v3, v3

    aget v1, v1, v5

    neg-int v1, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->inset(II)V

    new-array v0, v0, [F

    .line 96
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 97
    new-instance v1, Ltyrantgit/explosionfield/ExplosionField$2;

    invoke-direct {v1, p0, p1}, Ltyrantgit/explosionfield/ExplosionField$2;-><init>(Ltyrantgit/explosionfield/ExplosionField;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 108
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/16 v1, 0x64

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 110
    invoke-static {p1}, Ltyrantgit/explosionfield/Utils;->createBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-wide v5, Ltyrantgit/explosionfield/ExplosionAnimator;->DEFAULT_DURATION:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Ltyrantgit/explosionfield/ExplosionField;->explode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;JJ)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    iget-object v0, p0, Ltyrantgit/explosionfield/ExplosionField;->mExplosions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltyrantgit/explosionfield/ExplosionAnimator;

    .line 65
    invoke-virtual {v1, p1}, Ltyrantgit/explosionfield/ExplosionAnimator;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
