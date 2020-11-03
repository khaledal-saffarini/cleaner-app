.class Ltyrantgit/explosionfield/ExplosionField$2;
.super Ljava/lang/Object;
.source "ExplosionField.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltyrantgit/explosionfield/ExplosionField;->explode(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field random:Ljava/util/Random;

.field final synthetic this$0:Ltyrantgit/explosionfield/ExplosionField;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Ltyrantgit/explosionfield/ExplosionField;Landroid/view/View;)V
    .locals 0

    .line 97
    iput-object p1, p0, Ltyrantgit/explosionfield/ExplosionField$2;->this$0:Ltyrantgit/explosionfield/ExplosionField;

    iput-object p2, p0, Ltyrantgit/explosionfield/ExplosionField$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Ltyrantgit/explosionfield/ExplosionField$2;->random:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 103
    iget-object p1, p0, Ltyrantgit/explosionfield/ExplosionField$2;->val$view:Landroid/view/View;

    iget-object v0, p0, Ltyrantgit/explosionfield/ExplosionField$2;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    iget-object v2, p0, Ltyrantgit/explosionfield/ExplosionField$2;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v0, v2

    const v2, 0x3d4ccccd    # 0.05f

    mul-float v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 104
    iget-object p1, p0, Ltyrantgit/explosionfield/ExplosionField$2;->val$view:Landroid/view/View;

    iget-object v0, p0, Ltyrantgit/explosionfield/ExplosionField$2;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float/2addr v0, v1

    iget-object v1, p0, Ltyrantgit/explosionfield/ExplosionField$2;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    mul-float v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
