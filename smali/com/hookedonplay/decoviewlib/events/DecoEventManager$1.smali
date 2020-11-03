.class Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1;
.super Ljava/lang/Object;
.source "DecoEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hookedonplay/decoviewlib/events/DecoEventManager;->add(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hookedonplay/decoviewlib/events/DecoEventManager;

.field final synthetic val$event:Lcom/hookedonplay/decoviewlib/events/DecoEvent;

.field final synthetic val$ignore:Z

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/hookedonplay/decoviewlib/events/DecoEventManager;ZLcom/hookedonplay/decoviewlib/events/DecoEvent;Z)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1;->this$0:Lcom/hookedonplay/decoviewlib/events/DecoEventManager;

    iput-boolean p2, p0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1;->val$show:Z

    iput-object p3, p0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1;->val$event:Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    iput-boolean p4, p0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1;->val$ignore:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 69
    iget-boolean v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1;->val$show:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1;->val$event:Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getLinkedViews()[Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1;->val$event:Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getLinkedViews()[Landroid/view/View;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 74
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xf

    if-gt v5, v6, :cond_0

    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 75
    move-object v5, v4

    check-cast v5, Landroid/widget/TextView;

    .line 76
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-gtz v6, :cond_0

    const-string v6, " "

    .line 77
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    :cond_1
    iget-boolean v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1;->val$ignore:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1;->val$event:Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getLinkedViews()[Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 84
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1;->val$event:Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getLinkedViews()[Landroid/view/View;

    move-result-object v0

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 85
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    iget-boolean v5, p0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1;->val$show:Z

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_2
    iget-boolean v8, p0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1;->val$show:Z

    if-eqz v8, :cond_3

    const/high16 v6, 0x3f800000    # 1.0f

    :cond_3
    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 86
    iget-object v5, p0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1;->val$event:Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    invoke-virtual {v5}, Lcom/hookedonplay/decoviewlib/events/DecoEvent;->getFadeDuration()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v5, 0x1

    .line 87
    invoke-virtual {v4, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 88
    new-instance v5, Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1$1;

    invoke-direct {v5, p0, v3}, Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1$1;-><init>(Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 104
    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 107
    :cond_4
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1;->this$0:Lcom/hookedonplay/decoviewlib/events/DecoEventManager;

    invoke-static {v0}, Lcom/hookedonplay/decoviewlib/events/DecoEventManager;->access$000(Lcom/hookedonplay/decoviewlib/events/DecoEventManager;)Lcom/hookedonplay/decoviewlib/events/DecoEventManager$ArcEventManagerListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 108
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1;->this$0:Lcom/hookedonplay/decoviewlib/events/DecoEventManager;

    invoke-static {v0}, Lcom/hookedonplay/decoviewlib/events/DecoEventManager;->access$000(Lcom/hookedonplay/decoviewlib/events/DecoEventManager;)Lcom/hookedonplay/decoviewlib/events/DecoEventManager$ArcEventManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/events/DecoEventManager$1;->val$event:Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    invoke-interface {v0, v1}, Lcom/hookedonplay/decoviewlib/events/DecoEventManager$ArcEventManagerListener;->onExecuteEventStart(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    :cond_5
    return-void
.end method
