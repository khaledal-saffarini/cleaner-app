.class Lcom/skyfishjy/library/RippleBackground$RippleView;
.super Landroid/view/View;
.source "RippleBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skyfishjy/library/RippleBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RippleView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skyfishjy/library/RippleBackground;


# direct methods
.method public constructor <init>(Lcom/skyfishjy/library/RippleBackground;Landroid/content/Context;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/skyfishjy/library/RippleBackground$RippleView;->this$0:Lcom/skyfishjy/library/RippleBackground;

    .line 121
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x4

    .line 122
    invoke-virtual {p0, p1}, Lcom/skyfishjy/library/RippleBackground$RippleView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 127
    invoke-virtual {p0}, Lcom/skyfishjy/library/RippleBackground$RippleView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/skyfishjy/library/RippleBackground$RippleView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 128
    iget-object v1, p0, Lcom/skyfishjy/library/RippleBackground$RippleView;->this$0:Lcom/skyfishjy/library/RippleBackground;

    invoke-static {v1}, Lcom/skyfishjy/library/RippleBackground;->access$000(Lcom/skyfishjy/library/RippleBackground;)F

    move-result v1

    sub-float v1, v0, v1

    iget-object v2, p0, Lcom/skyfishjy/library/RippleBackground$RippleView;->this$0:Lcom/skyfishjy/library/RippleBackground;

    invoke-static {v2}, Lcom/skyfishjy/library/RippleBackground;->access$100(Lcom/skyfishjy/library/RippleBackground;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method