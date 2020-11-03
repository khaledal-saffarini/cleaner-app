.class public Llightning/thunder/cleaner/PowerSaving_popup;
.super Landroid/app/Activity;
.source "PowerSaving_popup.java"


# instance fields
.field applied:Landroid/widget/ImageView;

.field editor:Landroid/content/SharedPreferences$Editor;

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

.field sharedpreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 1

    .line 154
    new-instance v0, Llightning/thunder/cleaner/Classes/power_item;

    invoke-direct {v0}, Llightning/thunder/cleaner/Classes/power_item;-><init>()V

    .line 155
    invoke-virtual {v0, p1}, Llightning/thunder/cleaner/Classes/power_item;->setText(Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Llightning/thunder/cleaner/PowerSaving_popup;->items:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object p1, p0, Llightning/thunder/cleaner/PowerSaving_popup;->mAdapter:Llightning/thunder/cleaner/PowerAdapter;

    invoke-virtual {p1, p2}, Llightning/thunder/cleaner/PowerAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, ""

    const-string v1, "[^0-9]"

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Llightning/thunder/cleaner/PowerSaving_popup;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const v2, 0x7f0b0041

    .line 46
    invoke-virtual {p0, v2}, Llightning/thunder/cleaner/PowerSaving_popup;->setContentView(I)V

    const/4 v2, 0x0

    const-string v3, "was"

    .line 47
    invoke-virtual {p0, v3, v2}, Llightning/thunder/cleaner/PowerSaving_popup;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Llightning/thunder/cleaner/PowerSaving_popup;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 48
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Llightning/thunder/cleaner/PowerSaving_popup;->editor:Landroid/content/SharedPreferences$Editor;

    const v3, 0x7f080038

    .line 49
    invoke-virtual {p0, v3}, Llightning/thunder/cleaner/PowerSaving_popup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Llightning/thunder/cleaner/PowerSaving_popup;->extendedtime:Landroid/widget/TextView;

    const v3, 0x7f080039

    .line 50
    invoke-virtual {p0, v3}, Llightning/thunder/cleaner/PowerSaving_popup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Llightning/thunder/cleaner/PowerSaving_popup;->extendedtimedetail:Landroid/widget/TextView;

    const/4 v3, 0x5

    const/4 v4, 0x3

    :try_start_0
    const-string v5, "hour"

    .line 54
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "hournormal"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, p0, Llightning/thunder/cleaner/PowerSaving_popup;->hour:I

    const-string v5, "minutes"

    .line 55
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "minutesnormal"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sub-int/2addr v5, p1

    iput v5, p0, Llightning/thunder/cleaner/PowerSaving_popup;->min:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    iput v4, p0, Llightning/thunder/cleaner/PowerSaving_popup;->hour:I

    .line 60
    iput v3, p0, Llightning/thunder/cleaner/PowerSaving_popup;->min:I

    .line 63
    :goto_0
    iget p1, p0, Llightning/thunder/cleaner/PowerSaving_popup;->hour:I

    if-nez p1, :cond_0

    iget p1, p0, Llightning/thunder/cleaner/PowerSaving_popup;->min:I

    if-nez p1, :cond_0

    .line 65
    iput v4, p0, Llightning/thunder/cleaner/PowerSaving_popup;->hour:I

    .line 66
    iput v3, p0, Llightning/thunder/cleaner/PowerSaving_popup;->min:I

    .line 68
    :cond_0
    iget-object p1, p0, Llightning/thunder/cleaner/PowerSaving_popup;->extendedtime:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Llightning/thunder/cleaner/PowerSaving_popup;->hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Llightning/thunder/cleaner/PowerSaving_popup;->min:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " m)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object p1, p0, Llightning/thunder/cleaner/PowerSaving_popup;->extendedtimedetail:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Extended Battery Up to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Llightning/thunder/cleaner/PowerSaving_popup;->hour:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "h "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Llightning/thunder/cleaner/PowerSaving_popup;->min:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Llightning/thunder/cleaner/PowerSaving_popup;->items:Ljava/util/List;

    const p1, 0x7f080043

    .line 75
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/PowerSaving_popup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/PowerSaving_popup;->applied:Landroid/widget/ImageView;

    .line 76
    new-instance v0, Llightning/thunder/cleaner/PowerSaving_popup$1;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/PowerSaving_popup$1;-><init>(Llightning/thunder/cleaner/PowerSaving_popup;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0800e1

    .line 92
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/PowerSaving_popup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Llightning/thunder/cleaner/PowerSaving_popup;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 94
    new-instance v0, Ljp/wasabeef/recyclerview/animators/SlideInLeftAnimator;

    invoke-direct {v0}, Ljp/wasabeef/recyclerview/animators/SlideInLeftAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 98
    iget-object p1, p0, Llightning/thunder/cleaner/PowerSaving_popup;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 100
    new-instance p1, Llightning/thunder/cleaner/PowerAdapter;

    iget-object v0, p0, Llightning/thunder/cleaner/PowerSaving_popup;->items:Ljava/util/List;

    invoke-direct {p1, v0}, Llightning/thunder/cleaner/PowerAdapter;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Llightning/thunder/cleaner/PowerSaving_popup;->mAdapter:Llightning/thunder/cleaner/PowerAdapter;

    .line 101
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Llightning/thunder/cleaner/PowerSaving_popup;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 102
    iget-object v0, p0, Llightning/thunder/cleaner/PowerSaving_popup;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 103
    iget-object p1, p0, Llightning/thunder/cleaner/PowerSaving_popup;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Ljp/wasabeef/recyclerview/animators/SlideInUpAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-direct {v0, v1}, Ljp/wasabeef/recyclerview/animators/SlideInUpAnimator;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 104
    iget-object p1, p0, Llightning/thunder/cleaner/PowerSaving_popup;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollExtent()I

    .line 105
    iget-object p1, p0, Llightning/thunder/cleaner/PowerSaving_popup;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Llightning/thunder/cleaner/PowerSaving_popup;->mAdapter:Llightning/thunder/cleaner/PowerAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 106
    iget-object p1, p0, Llightning/thunder/cleaner/PowerSaving_popup;->mAdapter:Llightning/thunder/cleaner/PowerAdapter;

    invoke-virtual {p1}, Llightning/thunder/cleaner/PowerAdapter;->notifyDataSetChanged()V

    .line 108
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 109
    new-instance v0, Llightning/thunder/cleaner/PowerSaving_popup$2;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/PowerSaving_popup$2;-><init>(Llightning/thunder/cleaner/PowerSaving_popup;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 119
    new-instance v0, Llightning/thunder/cleaner/PowerSaving_popup$3;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/PowerSaving_popup$3;-><init>(Llightning/thunder/cleaner/PowerSaving_popup;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 129
    new-instance v0, Llightning/thunder/cleaner/PowerSaving_popup$4;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/PowerSaving_popup$4;-><init>(Llightning/thunder/cleaner/PowerSaving_popup;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 139
    new-instance v0, Llightning/thunder/cleaner/PowerSaving_popup$5;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/PowerSaving_popup$5;-><init>(Llightning/thunder/cleaner/PowerSaving_popup;)V

    const-wide/16 v1, 0xfa0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
