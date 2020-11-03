.class Lcom/zys/brokenview/BrokenView$1$1;
.super Ljava/lang/Object;
.source "BrokenView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zys/brokenview/BrokenView$1;->onAnimationRepeat(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zys/brokenview/BrokenView$1;


# direct methods
.method constructor <init>(Lcom/zys/brokenview/BrokenView$1;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/zys/brokenview/BrokenView$1$1;->this$1:Lcom/zys/brokenview/BrokenView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 78
    check-cast p1, Lcom/zys/brokenview/BrokenAnimator;

    .line 79
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Lcom/zys/brokenview/BrokenAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x2

    .line 80
    invoke-virtual {p1, v0}, Lcom/zys/brokenview/BrokenAnimator;->setStage(I)V

    .line 81
    invoke-virtual {p1}, Lcom/zys/brokenview/BrokenAnimator;->setFallingDuration()V

    .line 82
    iget-object v0, p0, Lcom/zys/brokenview/BrokenView$1$1;->this$1:Lcom/zys/brokenview/BrokenView$1;

    iget-object v0, v0, Lcom/zys/brokenview/BrokenView$1;->this$0:Lcom/zys/brokenview/BrokenView;

    iget-object v1, p0, Lcom/zys/brokenview/BrokenView$1$1;->this$1:Lcom/zys/brokenview/BrokenView$1;

    iget-object v1, v1, Lcom/zys/brokenview/BrokenView$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/zys/brokenview/BrokenView;->onBrokenFalling(Landroid/view/View;)V

    .line 83
    invoke-virtual {p1, p0}, Lcom/zys/brokenview/BrokenAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method
