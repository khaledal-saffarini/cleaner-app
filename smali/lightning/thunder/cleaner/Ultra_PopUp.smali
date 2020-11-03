.class public Llightning/thunder/cleaner/Ultra_PopUp;
.super Landroid/app/Activity;
.source "Ultra_PopUp.java"


# instance fields
.field applied:Landroid/widget/ImageView;

.field extendedtime:Landroid/widget/TextView;

.field extendedtimedetail:Landroid/widget/TextView;

.field hour:I

.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llightning/thunder/cleaner/Classes/power_item;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Llightning/thunder/cleaner/PowerAdapter;

.field min:I

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 1

    .line 173
    new-instance v0, Llightning/thunder/cleaner/Classes/power_item;

    invoke-direct {v0}, Llightning/thunder/cleaner/Classes/power_item;-><init>()V

    .line 174
    invoke-virtual {v0, p1}, Llightning/thunder/cleaner/Classes/power_item;->setText(Ljava/lang/String;)V

    .line 175
    iget-object p1, p0, Llightning/thunder/cleaner/Ultra_PopUp;->items:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object p1, p0, Llightning/thunder/cleaner/Ultra_PopUp;->mAdapter:Llightning/thunder/cleaner/PowerAdapter;

    invoke-virtual {p1, p2}, Llightning/thunder/cleaner/PowerAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, ""

    const-string v1, "[^0-9]"

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Llightning/thunder/cleaner/Ultra_PopUp;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const v2, 0x7f0b004c

    .line 42
    invoke-virtual {p0, v2}, Llightning/thunder/cleaner/Ultra_PopUp;->setContentView(I)V

    const v2, 0x7f080043

    .line 43
    invoke-virtual {p0, v2}, Llightning/thunder/cleaner/Ultra_PopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Llightning/thunder/cleaner/Ultra_PopUp;->applied:Landroid/widget/ImageView;

    const v2, 0x7f080038

    .line 44
    invoke-virtual {p0, v2}, Llightning/thunder/cleaner/Ultra_PopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Llightning/thunder/cleaner/Ultra_PopUp;->extendedtime:Landroid/widget/TextView;

    const v2, 0x7f080039

    .line 45
    invoke-virtual {p0, v2}, Llightning/thunder/cleaner/Ultra_PopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Llightning/thunder/cleaner/Ultra_PopUp;->extendedtimedetail:Landroid/widget/TextView;

    const/4 v2, 0x7

    const/4 v3, 0x4

    :try_start_0
    const-string v4, "hour"

    .line 50
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "hournormal"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Llightning/thunder/cleaner/Ultra_PopUp;->hour:I

    const-string v4, "minutes"

    .line 51
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "minutesnormal"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sub-int/2addr v4, p1

    iput v4, p0, Llightning/thunder/cleaner/Ultra_PopUp;->min:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    iput v3, p0, Llightning/thunder/cleaner/Ultra_PopUp;->hour:I

    .line 56
    iput v2, p0, Llightning/thunder/cleaner/Ultra_PopUp;->min:I

    .line 59
    :goto_0
    iget p1, p0, Llightning/thunder/cleaner/Ultra_PopUp;->hour:I

    if-nez p1, :cond_0

    iget p1, p0, Llightning/thunder/cleaner/Ultra_PopUp;->min:I

    if-nez p1, :cond_0

    .line 61
    iput v3, p0, Llightning/thunder/cleaner/Ultra_PopUp;->hour:I

    .line 62
    iput v2, p0, Llightning/thunder/cleaner/Ultra_PopUp;->min:I

    .line 65
    :cond_0
    iget-object p1, p0, Llightning/thunder/cleaner/Ultra_PopUp;->extendedtime:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Llightning/thunder/cleaner/Ultra_PopUp;->hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Llightning/thunder/cleaner/Ultra_PopUp;->min:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " m)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object p1, p0, Llightning/thunder/cleaner/Ultra_PopUp;->extendedtimedetail:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Extended Battery Up to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Llightning/thunder/cleaner/Ultra_PopUp;->hour:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "h "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Llightning/thunder/cleaner/Ultra_PopUp;->min:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object p1, p0, Llightning/thunder/cleaner/Ultra_PopUp;->applied:Landroid/widget/ImageView;

    new-instance v0, Llightning/thunder/cleaner/Ultra_PopUp$1;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Ultra_PopUp$1;-><init>(Llightning/thunder/cleaner/Ultra_PopUp;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Llightning/thunder/cleaner/Ultra_PopUp;->items:Ljava/util/List;

    const p1, 0x7f0800e1

    .line 86
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Ultra_PopUp;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Llightning/thunder/cleaner/Ultra_PopUp;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 88
    new-instance v0, Ljp/wasabeef/recyclerview/animators/SlideInLeftAnimator;

    invoke-direct {v0}, Ljp/wasabeef/recyclerview/animators/SlideInLeftAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 92
    iget-object p1, p0, Llightning/thunder/cleaner/Ultra_PopUp;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 94
    new-instance p1, Llightning/thunder/cleaner/PowerAdapter;

    iget-object v0, p0, Llightning/thunder/cleaner/Ultra_PopUp;->items:Ljava/util/List;

    invoke-direct {p1, v0}, Llightning/thunder/cleaner/PowerAdapter;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Llightning/thunder/cleaner/Ultra_PopUp;->mAdapter:Llightning/thunder/cleaner/PowerAdapter;

    .line 95
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Llightning/thunder/cleaner/Ultra_PopUp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 96
    iget-object v0, p0, Llightning/thunder/cleaner/Ultra_PopUp;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 97
    iget-object p1, p0, Llightning/thunder/cleaner/Ultra_PopUp;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Ljp/wasabeef/recyclerview/animators/SlideInUpAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-direct {v0, v1}, Ljp/wasabeef/recyclerview/animators/SlideInUpAnimator;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 98
    iget-object p1, p0, Llightning/thunder/cleaner/Ultra_PopUp;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollExtent()I

    .line 99
    iget-object p1, p0, Llightning/thunder/cleaner/Ultra_PopUp;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Llightning/thunder/cleaner/Ultra_PopUp;->mAdapter:Llightning/thunder/cleaner/PowerAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 100
    iget-object p1, p0, Llightning/thunder/cleaner/Ultra_PopUp;->mAdapter:Llightning/thunder/cleaner/PowerAdapter;

    invoke-virtual {p1}, Llightning/thunder/cleaner/PowerAdapter;->notifyDataSetChanged()V

    .line 102
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 103
    new-instance v0, Llightning/thunder/cleaner/Ultra_PopUp$2;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Ultra_PopUp$2;-><init>(Llightning/thunder/cleaner/Ultra_PopUp;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 113
    new-instance v0, Llightning/thunder/cleaner/Ultra_PopUp$3;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Ultra_PopUp$3;-><init>(Llightning/thunder/cleaner/Ultra_PopUp;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 123
    new-instance v0, Llightning/thunder/cleaner/Ultra_PopUp$4;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Ultra_PopUp$4;-><init>(Llightning/thunder/cleaner/Ultra_PopUp;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 133
    new-instance v0, Llightning/thunder/cleaner/Ultra_PopUp$5;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Ultra_PopUp$5;-><init>(Llightning/thunder/cleaner/Ultra_PopUp;)V

    const-wide/16 v1, 0xfa0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 143
    new-instance v0, Llightning/thunder/cleaner/Ultra_PopUp$6;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Ultra_PopUp$6;-><init>(Llightning/thunder/cleaner/Ultra_PopUp;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 152
    new-instance v0, Llightning/thunder/cleaner/Ultra_PopUp$7;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Ultra_PopUp$7;-><init>(Llightning/thunder/cleaner/Ultra_PopUp;)V

    const-wide/16 v1, 0x1770

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
