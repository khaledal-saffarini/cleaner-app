.class public Lcom/zys/brokenview/BrokenTouchListener$Builder;
.super Ljava/lang/Object;
.source "BrokenTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zys/brokenview/BrokenTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private brokenView:Lcom/zys/brokenview/BrokenView;

.field private config:Lcom/zys/brokenview/BrokenConfig;


# direct methods
.method public constructor <init>(Lcom/zys/brokenview/BrokenView;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/zys/brokenview/BrokenTouchListener$Builder;->brokenView:Lcom/zys/brokenview/BrokenView;

    .line 23
    new-instance p1, Lcom/zys/brokenview/BrokenConfig;

    invoke-direct {p1}, Lcom/zys/brokenview/BrokenConfig;-><init>()V

    iput-object p1, p0, Lcom/zys/brokenview/BrokenTouchListener$Builder;->config:Lcom/zys/brokenview/BrokenConfig;

    return-void
.end method

.method static synthetic access$000(Lcom/zys/brokenview/BrokenTouchListener$Builder;)Lcom/zys/brokenview/BrokenView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/zys/brokenview/BrokenTouchListener$Builder;->brokenView:Lcom/zys/brokenview/BrokenView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zys/brokenview/BrokenTouchListener$Builder;)Lcom/zys/brokenview/BrokenConfig;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/zys/brokenview/BrokenTouchListener$Builder;->config:Lcom/zys/brokenview/BrokenConfig;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/zys/brokenview/BrokenTouchListener;
    .locals 2

    .line 83
    new-instance v0, Lcom/zys/brokenview/BrokenTouchListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zys/brokenview/BrokenTouchListener;-><init>(Lcom/zys/brokenview/BrokenTouchListener$Builder;Lcom/zys/brokenview/BrokenTouchListener$1;)V

    return-object v0
.end method

.method public setBreakDuration(I)Lcom/zys/brokenview/BrokenTouchListener$Builder;
    .locals 1

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_0

    const/16 p1, 0xc8

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/zys/brokenview/BrokenTouchListener$Builder;->config:Lcom/zys/brokenview/BrokenConfig;

    iput p1, v0, Lcom/zys/brokenview/BrokenConfig;->breakDuration:I

    return-object p0
.end method

.method public setCircleRiftsRadius(I)Lcom/zys/brokenview/BrokenTouchListener$Builder;
    .locals 1

    const/16 v0, 0x14

    if-ge p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/16 p1, 0x14

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/zys/brokenview/BrokenTouchListener$Builder;->config:Lcom/zys/brokenview/BrokenConfig;

    iput p1, v0, Lcom/zys/brokenview/BrokenConfig;->circleRiftsRadius:I

    return-object p0
.end method

.method public setComplexity(I)Lcom/zys/brokenview/BrokenTouchListener$Builder;
    .locals 2

    const/16 v0, 0x14

    const/4 v1, 0x6

    if-ge p1, v1, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    const/16 p1, 0x14

    .line 31
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zys/brokenview/BrokenTouchListener$Builder;->config:Lcom/zys/brokenview/BrokenConfig;

    iput p1, v0, Lcom/zys/brokenview/BrokenConfig;->complexity:I

    return-object p0
.end method

.method public setEnableArea(Landroid/graphics/Region;)Lcom/zys/brokenview/BrokenTouchListener$Builder;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/zys/brokenview/BrokenTouchListener$Builder;->config:Lcom/zys/brokenview/BrokenConfig;

    iput-object p1, v0, Lcom/zys/brokenview/BrokenConfig;->region:Landroid/graphics/Region;

    .line 62
    iget-object p1, p0, Lcom/zys/brokenview/BrokenTouchListener$Builder;->config:Lcom/zys/brokenview/BrokenConfig;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/zys/brokenview/BrokenConfig;->childView:Landroid/view/View;

    return-object p0
.end method

.method public setEnableArea(Landroid/view/View;)Lcom/zys/brokenview/BrokenTouchListener$Builder;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/zys/brokenview/BrokenTouchListener$Builder;->config:Lcom/zys/brokenview/BrokenConfig;

    iput-object p1, v0, Lcom/zys/brokenview/BrokenConfig;->childView:Landroid/view/View;

    .line 75
    iget-object p1, p0, Lcom/zys/brokenview/BrokenTouchListener$Builder;->config:Lcom/zys/brokenview/BrokenConfig;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/zys/brokenview/BrokenConfig;->region:Landroid/graphics/Region;

    return-object p0
.end method

.method public setFallDuration(I)Lcom/zys/brokenview/BrokenTouchListener$Builder;
    .locals 1

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_0

    const/16 p1, 0xc8

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/zys/brokenview/BrokenTouchListener$Builder;->config:Lcom/zys/brokenview/BrokenConfig;

    iput p1, v0, Lcom/zys/brokenview/BrokenConfig;->fallDuration:I

    return-object p0
.end method

.method public setPaint(Landroid/graphics/Paint;)Lcom/zys/brokenview/BrokenTouchListener$Builder;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/zys/brokenview/BrokenTouchListener$Builder;->config:Lcom/zys/brokenview/BrokenConfig;

    iput-object p1, v0, Lcom/zys/brokenview/BrokenConfig;->paint:Landroid/graphics/Paint;

    return-object p0
.end method
