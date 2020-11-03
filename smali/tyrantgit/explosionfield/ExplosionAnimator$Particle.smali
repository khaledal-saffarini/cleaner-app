.class Ltyrantgit/explosionfield/ExplosionAnimator$Particle;
.super Ljava/lang/Object;
.source "ExplosionAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltyrantgit/explosionfield/ExplosionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Particle"
.end annotation


# instance fields
.field alpha:F

.field baseCx:F

.field baseCy:F

.field baseRadius:F

.field bottom:F

.field color:I

.field cx:F

.field cy:F

.field life:F

.field mag:F

.field neg:F

.field overflow:F

.field radius:F

.field final synthetic this$0:Ltyrantgit/explosionfield/ExplosionAnimator;

.field top:F


# direct methods
.method private constructor <init>(Ltyrantgit/explosionfield/ExplosionAnimator;)V
    .locals 0

    .line 114
    iput-object p1, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->this$0:Ltyrantgit/explosionfield/ExplosionAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltyrantgit/explosionfield/ExplosionAnimator;Ltyrantgit/explosionfield/ExplosionAnimator$1;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;-><init>(Ltyrantgit/explosionfield/ExplosionAnimator;)V

    return-void
.end method


# virtual methods
.method public advance(F)V
    .locals 9

    const v0, 0x3fb33333    # 1.4f

    div-float/2addr p1, v0

    .line 134
    iget v1, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->life:F

    const/4 v2, 0x0

    cmpg-float v3, p1, v1

    if-ltz v3, :cond_2

    iget v3, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->overflow:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v3

    cmpl-float v5, p1, v5

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p1, v1

    sub-float v1, v4, v1

    sub-float/2addr v1, v3

    div-float/2addr p1, v1

    mul-float v0, v0, p1

    const v1, 0x3f333333    # 0.7f

    cmpl-float v3, p1, v1

    if-ltz v3, :cond_1

    sub-float/2addr p1, v1

    const v1, 0x3e99999a    # 0.3f

    div-float v2, p1, v1

    :cond_1
    sub-float/2addr v4, v2

    .line 143
    iput v4, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->alpha:F

    .line 144
    iget p1, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->bottom:F

    mul-float p1, p1, v0

    .line 145
    iget v1, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->baseCx:F

    add-float/2addr v1, p1

    iput v1, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->cx:F

    .line 146
    iget v1, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->baseCy:F

    float-to-double v1, v1

    iget v3, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->neg:F

    float-to-double v3, v3

    float-to-double v5, p1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v1, v3

    double-to-float v1, v1

    iget v2, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->mag:F

    mul-float p1, p1, v2

    sub-float/2addr v1, p1

    iput v1, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->cy:F

    .line 147
    invoke-static {}, Ltyrantgit/explosionfield/ExplosionAnimator;->access$100()F

    move-result p1

    iget v1, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->baseRadius:F

    invoke-static {}, Ltyrantgit/explosionfield/ExplosionAnimator;->access$100()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float v1, v1, v0

    add-float/2addr p1, v1

    iput p1, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->radius:F

    return-void

    .line 135
    :cond_2
    :goto_0
    iput v2, p0, Ltyrantgit/explosionfield/ExplosionAnimator$Particle;->alpha:F

    return-void
.end method
