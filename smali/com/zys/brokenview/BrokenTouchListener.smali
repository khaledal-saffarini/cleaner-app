.class public Lcom/zys/brokenview/BrokenTouchListener;
.super Ljava/lang/Object;
.source "BrokenTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zys/brokenview/BrokenTouchListener$Builder;
    }
.end annotation


# instance fields
.field private brokenAnim:Lcom/zys/brokenview/BrokenAnimator;

.field private brokenView:Lcom/zys/brokenview/BrokenView;

.field private config:Lcom/zys/brokenview/BrokenConfig;


# direct methods
.method private constructor <init>(Lcom/zys/brokenview/BrokenTouchListener$Builder;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p1}, Lcom/zys/brokenview/BrokenTouchListener$Builder;->access$000(Lcom/zys/brokenview/BrokenTouchListener$Builder;)Lcom/zys/brokenview/BrokenView;

    move-result-object v0

    iput-object v0, p0, Lcom/zys/brokenview/BrokenTouchListener;->brokenView:Lcom/zys/brokenview/BrokenView;

    .line 16
    invoke-static {p1}, Lcom/zys/brokenview/BrokenTouchListener$Builder;->access$100(Lcom/zys/brokenview/BrokenTouchListener$Builder;)Lcom/zys/brokenview/BrokenConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/zys/brokenview/BrokenTouchListener;->config:Lcom/zys/brokenview/BrokenConfig;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zys/brokenview/BrokenTouchListener$Builder;Lcom/zys/brokenview/BrokenTouchListener$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/zys/brokenview/BrokenTouchListener;-><init>(Lcom/zys/brokenview/BrokenTouchListener$Builder;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 88
    iget-object v0, p0, Lcom/zys/brokenview/BrokenTouchListener;->brokenView:Lcom/zys/brokenview/BrokenView;

    invoke-virtual {v0}, Lcom/zys/brokenview/BrokenView;->isEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 89
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 116
    :cond_0
    iget-object p2, p0, Lcom/zys/brokenview/BrokenTouchListener;->brokenView:Lcom/zys/brokenview/BrokenView;

    invoke-virtual {p2, p1}, Lcom/zys/brokenview/BrokenView;->getAnimator(Landroid/view/View;)Lcom/zys/brokenview/BrokenAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/zys/brokenview/BrokenTouchListener;->brokenAnim:Lcom/zys/brokenview/BrokenAnimator;

    if-eqz p2, :cond_9

    .line 117
    invoke-virtual {p2}, Lcom/zys/brokenview/BrokenAnimator;->isStarted()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 118
    iget-object p2, p0, Lcom/zys/brokenview/BrokenTouchListener;->brokenAnim:Lcom/zys/brokenview/BrokenAnimator;

    invoke-virtual {p2}, Lcom/zys/brokenview/BrokenAnimator;->doReverse()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 119
    iget-object p2, p0, Lcom/zys/brokenview/BrokenTouchListener;->brokenView:Lcom/zys/brokenview/BrokenView;

    invoke-virtual {p2, p1}, Lcom/zys/brokenview/BrokenView;->onBrokenCancel(Landroid/view/View;)V

    goto/16 :goto_2

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/zys/brokenview/BrokenTouchListener;->config:Lcom/zys/brokenview/BrokenConfig;

    iget-object v0, v0, Lcom/zys/brokenview/BrokenConfig;->childView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/zys/brokenview/BrokenTouchListener;->config:Lcom/zys/brokenview/BrokenConfig;

    new-instance v3, Landroid/graphics/Region;

    iget-object v4, p0, Lcom/zys/brokenview/BrokenTouchListener;->config:Lcom/zys/brokenview/BrokenConfig;

    iget-object v4, v4, Lcom/zys/brokenview/BrokenConfig;->childView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/zys/brokenview/BrokenTouchListener;->config:Lcom/zys/brokenview/BrokenConfig;

    iget-object v5, v5, Lcom/zys/brokenview/BrokenConfig;->childView:Landroid/view/View;

    .line 93
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/zys/brokenview/BrokenTouchListener;->config:Lcom/zys/brokenview/BrokenConfig;

    iget-object v6, v6, Lcom/zys/brokenview/BrokenConfig;->childView:Landroid/view/View;

    .line 94
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/zys/brokenview/BrokenTouchListener;->config:Lcom/zys/brokenview/BrokenConfig;

    iget-object v7, v7, Lcom/zys/brokenview/BrokenConfig;->childView:Landroid/view/View;

    .line 95
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Region;-><init>(IIII)V

    iput-object v3, v0, Lcom/zys/brokenview/BrokenConfig;->region:Landroid/graphics/Region;

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/zys/brokenview/BrokenTouchListener;->config:Lcom/zys/brokenview/BrokenConfig;

    iget-object v0, v0, Lcom/zys/brokenview/BrokenConfig;->region:Landroid/graphics/Region;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zys/brokenview/BrokenTouchListener;->config:Lcom/zys/brokenview/BrokenConfig;

    iget-object v0, v0, Lcom/zys/brokenview/BrokenConfig;->region:Landroid/graphics/Region;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    .line 98
    :cond_4
    :goto_0
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {v0, v1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 99
    iget-object p2, p0, Lcom/zys/brokenview/BrokenTouchListener;->brokenView:Lcom/zys/brokenview/BrokenView;

    invoke-virtual {p2, p1}, Lcom/zys/brokenview/BrokenView;->getAnimator(Landroid/view/View;)Lcom/zys/brokenview/BrokenAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/zys/brokenview/BrokenTouchListener;->brokenAnim:Lcom/zys/brokenview/BrokenAnimator;

    if-nez p2, :cond_5

    .line 101
    iget-object p2, p0, Lcom/zys/brokenview/BrokenTouchListener;->brokenView:Lcom/zys/brokenview/BrokenView;

    iget-object v1, p0, Lcom/zys/brokenview/BrokenTouchListener;->config:Lcom/zys/brokenview/BrokenConfig;

    invoke-virtual {p2, p1, v0, v1}, Lcom/zys/brokenview/BrokenView;->createAnimator(Landroid/view/View;Landroid/graphics/Point;Lcom/zys/brokenview/BrokenConfig;)Lcom/zys/brokenview/BrokenAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/zys/brokenview/BrokenTouchListener;->brokenAnim:Lcom/zys/brokenview/BrokenAnimator;

    .line 102
    :cond_5
    iget-object p2, p0, Lcom/zys/brokenview/BrokenTouchListener;->brokenAnim:Lcom/zys/brokenview/BrokenAnimator;

    if-nez p2, :cond_6

    return v2

    .line 104
    :cond_6
    invoke-virtual {p2}, Lcom/zys/brokenview/BrokenAnimator;->isStarted()Z

    move-result p2

    if-nez p2, :cond_7

    .line 105
    iget-object p2, p0, Lcom/zys/brokenview/BrokenTouchListener;->brokenAnim:Lcom/zys/brokenview/BrokenAnimator;

    invoke-virtual {p2}, Lcom/zys/brokenview/BrokenAnimator;->start()V

    .line 106
    iget-object p2, p0, Lcom/zys/brokenview/BrokenTouchListener;->brokenView:Lcom/zys/brokenview/BrokenView;

    invoke-virtual {p2, p1}, Lcom/zys/brokenview/BrokenView;->onBrokenStart(Landroid/view/View;)V

    goto :goto_1

    .line 107
    :cond_7
    iget-object p2, p0, Lcom/zys/brokenview/BrokenTouchListener;->brokenAnim:Lcom/zys/brokenview/BrokenAnimator;

    invoke-virtual {p2}, Lcom/zys/brokenview/BrokenAnimator;->doReverse()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 108
    iget-object p2, p0, Lcom/zys/brokenview/BrokenTouchListener;->brokenView:Lcom/zys/brokenview/BrokenView;

    invoke-virtual {p2, p1}, Lcom/zys/brokenview/BrokenView;->onBrokenRestart(Landroid/view/View;)V

    .line 110
    :cond_8
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    :goto_2
    return v2

    :cond_a
    return v1
.end method
