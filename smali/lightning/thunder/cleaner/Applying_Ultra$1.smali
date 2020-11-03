.class Llightning/thunder/cleaner/Applying_Ultra$1;
.super Ljava/lang/Object;
.source "Applying_Ultra.java"

# interfaces
.implements Lcom/hookedonplay/decoviewlib/charts/SeriesItem$SeriesItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Applying_Ultra;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llightning/thunder/cleaner/Applying_Ultra;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Applying_Ultra;)V
    .locals 0

    .line 98
    iput-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra$1;->this$0:Llightning/thunder/cleaner/Applying_Ultra;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeriesItemAnimationProgress(FF)V
    .locals 3

    .line 103
    new-instance p1, Ljava/lang/Float;

    invoke-direct {p1, p2}, Ljava/lang/Float;-><init>(F)V

    .line 104
    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    .line 105
    iget-object v0, p0, Llightning/thunder/cleaner/Applying_Ultra$1;->this$0:Llightning/thunder/cleaner/Applying_Ultra;

    iget-object v0, v0, Llightning/thunder/cleaner/Applying_Ultra;->completion:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x42200000    # 40.0f

    const v0, 0x7f07006c

    const-string v1, "#FFFFFF"

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    cmpg-float v2, p2, p1

    if-gez v2, :cond_0

    .line 109
    iget-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra$1;->this$0:Llightning/thunder/cleaner/Applying_Ultra;

    iget-object p1, p1, Llightning/thunder/cleaner/Applying_Ultra;->ist:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra$1;->this$0:Llightning/thunder/cleaner/Applying_Ultra;

    iget-object p1, p1, Llightning/thunder/cleaner/Applying_Ultra;->istpic:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_0
    const/high16 v2, 0x42820000    # 65.0f

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1

    cmpg-float p1, p2, v2

    if-gez p1, :cond_1

    .line 115
    iget-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra$1;->this$0:Llightning/thunder/cleaner/Applying_Ultra;

    iget-object p1, p1, Llightning/thunder/cleaner/Applying_Ultra;->sec:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra$1;->this$0:Llightning/thunder/cleaner/Applying_Ultra;

    iget-object p1, p1, Llightning/thunder/cleaner/Applying_Ultra;->secpic:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/high16 p1, 0x42a00000    # 80.0f

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_2

    cmpg-float v2, p2, p1

    if-gez v2, :cond_2

    .line 120
    iget-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra$1;->this$0:Llightning/thunder/cleaner/Applying_Ultra;

    iget-object p1, p1, Llightning/thunder/cleaner/Applying_Ultra;->thir:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra$1;->this$0:Llightning/thunder/cleaner/Applying_Ultra;

    iget-object p1, p1, Llightning/thunder/cleaner/Applying_Ultra;->thirpic:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const/high16 v2, 0x42b40000    # 90.0f

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_3

    cmpg-float p1, p2, v2

    if-gez p1, :cond_3

    .line 125
    iget-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra$1;->this$0:Llightning/thunder/cleaner/Applying_Ultra;

    iget-object p1, p1, Llightning/thunder/cleaner/Applying_Ultra;->fou:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra$1;->this$0:Llightning/thunder/cleaner/Applying_Ultra;

    iget-object p1, p1, Llightning/thunder/cleaner/Applying_Ultra;->foupic:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    cmpl-float p1, p2, v2

    if-ltz p1, :cond_4

    const/high16 p1, 0x42c80000    # 100.0f

    cmpg-float p1, p2, p1

    if-gez p1, :cond_4

    .line 130
    iget-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra$1;->this$0:Llightning/thunder/cleaner/Applying_Ultra;

    iget-object p1, p1, Llightning/thunder/cleaner/Applying_Ultra;->fif:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra$1;->this$0:Llightning/thunder/cleaner/Applying_Ultra;

    iget-object p1, p1, Llightning/thunder/cleaner/Applying_Ultra;->fifthpic:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onSeriesItemDisplayProgress(F)V
    .locals 0

    return-void
.end method
