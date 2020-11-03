.class Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1$1;
.super Ljava/lang/Object;
.source "DecoEventManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1;Landroid/view/View;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1$1;->this$1:Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1;

    iput-object p2, p0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 96
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1$1;->val$view:Landroid/view/View;

    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1$1;->this$1:Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1;

    iget-boolean v0, v0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1;->val$show:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
