.class Lcom/hookedonplay/decoviewlib/DecoView$1;
.super Ljava/lang/Object;
.source "DecoView.java"

# interfaces
.implements Lcom/hookedonplay/decoviewlib/charts/SeriesItem$SeriesItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hookedonplay/decoviewlib/DecoView;->addSeries(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hookedonplay/decoviewlib/DecoView;


# direct methods
.method constructor <init>(Lcom/hookedonplay/decoviewlib/DecoView;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView$1;->this$0:Lcom/hookedonplay/decoviewlib/DecoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeriesItemAnimationProgress(FF)V
    .locals 0

    .line 194
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView$1;->this$0:Lcom/hookedonplay/decoviewlib/DecoView;

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/DecoView;->invalidate()V

    return-void
.end method

.method public onSeriesItemDisplayProgress(F)V
    .locals 0

    .line 199
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/DecoView$1;->this$0:Lcom/hookedonplay/decoviewlib/DecoView;

    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/DecoView;->invalidate()V

    return-void
.end method
