.class public Lcom/zys/brokenview/BrokenView;
.super Landroid/view/View;
.source "BrokenView.java"


# instance fields
.field private animList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/zys/brokenview/BrokenAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private animMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/zys/brokenview/BrokenAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private callBack:Lcom/zys/brokenview/BrokenCallback;

.field private enable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/zys/brokenview/BrokenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/zys/brokenview/BrokenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/zys/brokenview/BrokenView;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/zys/brokenview/BrokenView;->enable:Z

    .line 43
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/zys/brokenview/BrokenView;->animMap:Ljava/util/HashMap;

    .line 44
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/zys/brokenview/BrokenView;->animList:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$000(Lcom/zys/brokenview/BrokenView;)Ljava/util/HashMap;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/zys/brokenview/BrokenView;->animMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zys/brokenview/BrokenView;)Ljava/util/LinkedList;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/zys/brokenview/BrokenView;->animList:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static add2Window(Landroid/app/Activity;)Lcom/zys/brokenview/BrokenView;
    .locals 4

    const v0, 0x1020002

    .line 107
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 108
    new-instance v1, Lcom/zys/brokenview/BrokenView;

    invoke-direct {v1, p0}, Lcom/zys/brokenview/BrokenView;-><init>(Landroid/content/Context;)V

    .line 109
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 113
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput p0, Lcom/zys/brokenview/Utils;->screenWidth:I

    .line 114
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput p0, Lcom/zys/brokenview/Utils;->screenHeight:I

    return-object v1
.end method


# virtual methods
.method public createAnimator(Landroid/view/View;Landroid/graphics/Point;Lcom/zys/brokenview/BrokenConfig;)Lcom/zys/brokenview/BrokenAnimator;
    .locals 7

    .line 64
    invoke-static {p1}, Lcom/zys/brokenview/Utils;->convertViewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 67
    :cond_0
    new-instance v6, Lcom/zys/brokenview/BrokenAnimator;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/zys/brokenview/BrokenAnimator;-><init>(Lcom/zys/brokenview/BrokenView;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Point;Lcom/zys/brokenview/BrokenConfig;)V

    .line 68
    new-instance p2, Lcom/zys/brokenview/BrokenView$1;

    invoke-direct {p2, p0, p1}, Lcom/zys/brokenview/BrokenView$1;-><init>(Lcom/zys/brokenview/BrokenView;Landroid/view/View;)V

    invoke-virtual {v6, p2}, Lcom/zys/brokenview/BrokenAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 100
    iget-object p2, p0, Lcom/zys/brokenview/BrokenView;->animList:Ljava/util/LinkedList;

    invoke-virtual {p2, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 101
    iget-object p2, p0, Lcom/zys/brokenview/BrokenView;->animMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6
.end method

.method public getAnimator(Landroid/view/View;)Lcom/zys/brokenview/BrokenAnimator;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/zys/brokenview/BrokenView;->animMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zys/brokenview/BrokenAnimator;

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Lcom/zys/brokenview/BrokenAnimator;->getStage()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isEnable()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/zys/brokenview/BrokenView;->enable:Z

    return v0
.end method

.method protected onBrokenCancel(Landroid/view/View;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/zys/brokenview/BrokenView;->callBack:Lcom/zys/brokenview/BrokenCallback;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0, p1}, Lcom/zys/brokenview/BrokenCallback;->onCancel(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onBrokenCancelEnd(Landroid/view/View;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/zys/brokenview/BrokenView;->callBack:Lcom/zys/brokenview/BrokenCallback;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0, p1}, Lcom/zys/brokenview/BrokenCallback;->onCancelEnd(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onBrokenFalling(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x4

    .line 168
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/zys/brokenview/BrokenView;->callBack:Lcom/zys/brokenview/BrokenCallback;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p1}, Lcom/zys/brokenview/BrokenCallback;->onFalling(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onBrokenFallingEnd(Landroid/view/View;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/zys/brokenview/BrokenView;->callBack:Lcom/zys/brokenview/BrokenCallback;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0, p1}, Lcom/zys/brokenview/BrokenCallback;->onFallingEnd(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onBrokenRestart(Landroid/view/View;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/zys/brokenview/BrokenView;->callBack:Lcom/zys/brokenview/BrokenCallback;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1}, Lcom/zys/brokenview/BrokenCallback;->onRestart(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onBrokenStart(Landroid/view/View;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/zys/brokenview/BrokenView;->callBack:Lcom/zys/brokenview/BrokenCallback;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0, p1}, Lcom/zys/brokenview/BrokenCallback;->onStart(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/zys/brokenview/BrokenView;->animList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 50
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zys/brokenview/BrokenAnimator;

    invoke-virtual {v1, p1}, Lcom/zys/brokenview/BrokenAnimator;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/zys/brokenview/BrokenView;->animList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 120
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zys/brokenview/BrokenAnimator;

    .line 122
    invoke-virtual {v1}, Lcom/zys/brokenview/BrokenAnimator;->removeAllListeners()V

    .line 123
    invoke-virtual {v1}, Lcom/zys/brokenview/BrokenAnimator;->cancel()V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/zys/brokenview/BrokenView;->animList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 126
    iget-object v0, p0, Lcom/zys/brokenview/BrokenView;->animMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 127
    invoke-virtual {p0}, Lcom/zys/brokenview/BrokenView;->invalidate()V

    return-void
.end method

.method public setCallback(Lcom/zys/brokenview/BrokenCallback;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/zys/brokenview/BrokenView;->callBack:Lcom/zys/brokenview/BrokenCallback;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/zys/brokenview/BrokenView;->enable:Z

    return-void
.end method
