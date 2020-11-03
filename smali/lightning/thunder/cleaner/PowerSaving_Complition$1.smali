.class Llightning/thunder/cleaner/PowerSaving_Complition$1;
.super Ljava/lang/Object;
.source "PowerSaving_Complition.java"

# interfaces
.implements Lcom/hookedonplay/decoviewlib/charts/SeriesItem$SeriesItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/PowerSaving_Complition;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llightning/thunder/cleaner/PowerSaving_Complition;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/PowerSaving_Complition;)V
    .locals 0

    .line 128
    iput-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition$1;->this$0:Llightning/thunder/cleaner/PowerSaving_Complition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeriesItemAnimationProgress(FF)V
    .locals 3

    .line 133
    new-instance p1, Ljava/lang/Float;

    invoke-direct {p1, p2}, Ljava/lang/Float;-><init>(F)V

    .line 134
    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    .line 135
    iget-object v0, p0, Llightning/thunder/cleaner/PowerSaving_Complition$1;->this$0:Llightning/thunder/cleaner/PowerSaving_Complition;

    iget-object v0, v0, Llightning/thunder/cleaner/PowerSaving_Complition;->completion:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x42480000    # 50.0f

    const v0, 0x7f07006c

    const-string v1, "#FFFFFF"

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    cmpg-float v2, p2, p1

    if-gez v2, :cond_0

    .line 139
    iget-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition$1;->this$0:Llightning/thunder/cleaner/PowerSaving_Complition;

    iget-object p1, p1, Llightning/thunder/cleaner/PowerSaving_Complition;->ist:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition$1;->this$0:Llightning/thunder/cleaner/PowerSaving_Complition;

    iget-object p1, p1, Llightning/thunder/cleaner/PowerSaving_Complition;->istpic:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/high16 v2, 0x42960000    # 75.0f

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1

    cmpg-float p1, p2, v2

    if-gez p1, :cond_1

    .line 145
    iget-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition$1;->this$0:Llightning/thunder/cleaner/PowerSaving_Complition;

    iget-object p1, p1, Llightning/thunder/cleaner/PowerSaving_Complition;->sec:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    iget-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition$1;->this$0:Llightning/thunder/cleaner/PowerSaving_Complition;

    iget-object p1, p1, Llightning/thunder/cleaner/PowerSaving_Complition;->secpic:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/high16 p1, 0x42b40000    # 90.0f

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_2

    cmpg-float v2, p2, p1

    if-gez v2, :cond_2

    .line 150
    iget-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition$1;->this$0:Llightning/thunder/cleaner/PowerSaving_Complition;

    iget-object p1, p1, Llightning/thunder/cleaner/PowerSaving_Complition;->thir:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    iget-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition$1;->this$0:Llightning/thunder/cleaner/PowerSaving_Complition;

    iget-object p1, p1, Llightning/thunder/cleaner/PowerSaving_Complition;->thirpic:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    cmpl-float p1, p2, p1

    if-ltz p1, :cond_3

    const/high16 p1, 0x42c80000    # 100.0f

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_3

    .line 155
    iget-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition$1;->this$0:Llightning/thunder/cleaner/PowerSaving_Complition;

    iget-object p1, p1, Llightning/thunder/cleaner/PowerSaving_Complition;->fou:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    iget-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition$1;->this$0:Llightning/thunder/cleaner/PowerSaving_Complition;

    iget-object p1, p1, Llightning/thunder/cleaner/PowerSaving_Complition;->foupic:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onSeriesItemDisplayProgress(F)V
    .locals 0

    return-void
.end method
