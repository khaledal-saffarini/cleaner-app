.class Lcom/zys/brokenview/BrokenView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BrokenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zys/brokenview/BrokenView;->createAnimator(Landroid/view/View;Landroid/graphics/Point;Lcom/zys/brokenview/BrokenConfig;)Lcom/zys/brokenview/BrokenAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zys/brokenview/BrokenView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/zys/brokenview/BrokenView;Landroid/view/View;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/zys/brokenview/BrokenView$1;->this$0:Lcom/zys/brokenview/BrokenView;

    iput-object p2, p0, Lcom/zys/brokenview/BrokenView$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 89
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 90
    check-cast p1, Lcom/zys/brokenview/BrokenAnimator;

    .line 91
    iget-object v0, p0, Lcom/zys/brokenview/BrokenView$1;->this$0:Lcom/zys/brokenview/BrokenView;

    invoke-static {v0}, Lcom/zys/brokenview/BrokenView;->access$000(Lcom/zys/brokenview/BrokenView;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/zys/brokenview/BrokenView$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/zys/brokenview/BrokenView$1;->this$0:Lcom/zys/brokenview/BrokenView;

    invoke-static {v0}, Lcom/zys/brokenview/BrokenView;->access$100(Lcom/zys/brokenview/BrokenView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {p1}, Lcom/zys/brokenview/BrokenAnimator;->getStage()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/zys/brokenview/BrokenView$1;->this$0:Lcom/zys/brokenview/BrokenView;

    iget-object v0, p0, Lcom/zys/brokenview/BrokenView$1;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/zys/brokenview/BrokenView;->onBrokenCancelEnd(Landroid/view/View;)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p1}, Lcom/zys/brokenview/BrokenAnimator;->getStage()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 97
    iget-object p1, p0, Lcom/zys/brokenview/BrokenView$1;->this$0:Lcom/zys/brokenview/BrokenView;

    iget-object v0, p0, Lcom/zys/brokenview/BrokenView$1;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/zys/brokenview/BrokenView;->onBrokenFallingEnd(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 72
    check-cast p1, Lcom/zys/brokenview/BrokenAnimator;

    .line 75
    new-instance v0, Lcom/zys/brokenview/BrokenView$1$1;

    invoke-direct {v0, p0}, Lcom/zys/brokenview/BrokenView$1$1;-><init>(Lcom/zys/brokenview/BrokenView$1;)V

    invoke-virtual {p1, v0}, Lcom/zys/brokenview/BrokenAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method
