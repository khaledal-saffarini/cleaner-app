.class Llightning/thunder/cleaner/Fragments/CPUCooler$1;
.super Landroid/content/BroadcastReceiver;
.source "CPUCooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llightning/thunder/cleaner/Fragments/CPUCooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Fragments/CPUCooler;)V
    .locals 0

    .line 57
    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "#F22938"

    :try_start_0
    const-string v1, "level"

    const/4 v2, 0x0

    .line 62
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 63
    iget-object v1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    const-string v3, "temperature"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr p2, v3

    iput p2, v1, Llightning/thunder/cleaner/Fragments/CPUCooler;->temp:F

    .line 65
    iget-object p2, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object p2, p2, Llightning/thunder/cleaner/Fragments/CPUCooler;->batterytemp:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget v3, v3, Llightning/thunder/cleaner/Fragments/CPUCooler;->temp:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "\u00b0C"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object p2, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget p2, p2, Llightning/thunder/cleaner/Fragments/CPUCooler;->temp:F

    float-to-double v3, p2

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    cmpl-double p2, v3, v5

    if-ltz p2, :cond_1

    .line 69
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    sput-object p2, Llightning/thunder/cleaner/Fragments/CPUCooler;->apps:Ljava/util/List;

    .line 70
    iget-object p2, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p2, Llightning/thunder/cleaner/Fragments/CPUCooler;->apps2:Ljava/util/List;

    .line 71
    iget-object p2, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object p2, p2, Llightning/thunder/cleaner/Fragments/CPUCooler;->tempimg:Landroid/widget/ImageView;

    const v1, 0x7f0700bb

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object p2, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object p2, p2, Llightning/thunder/cleaner/Fragments/CPUCooler;->showmain:Landroid/widget/TextView;

    const-string v1, "OVERHEATED"

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object p2, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object p2, p2, Llightning/thunder/cleaner/Fragments/CPUCooler;->showmain:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    iget-object p2, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object p2, p2, Llightning/thunder/cleaner/Fragments/CPUCooler;->showsec:Landroid/widget/TextView;

    const-string v1, "Apps are causing problem hit cool down"

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object p2, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object p2, p2, Llightning/thunder/cleaner/Fragments/CPUCooler;->nooverheating:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p2, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object p2, p2, Llightning/thunder/cleaner/Fragments/CPUCooler;->coolbutton:Landroid/widget/ImageView;

    const v1, 0x7f070086

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    iget-object p2, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object p2, p2, Llightning/thunder/cleaner/Fragments/CPUCooler;->coolbutton:Landroid/widget/ImageView;

    new-instance v1, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;

    invoke-direct {v1, p0}, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;-><init>(Llightning/thunder/cleaner/Fragments/CPUCooler$1;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge p2, v1, :cond_0

    .line 131
    iget-object p2, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object p2, p2, Llightning/thunder/cleaner/Fragments/CPUCooler;->showsec:Landroid/widget/TextView;

    const v1, 0x1030044

    invoke-virtual {p2, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 132
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/CPUCooler;->showsec:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/CPUCooler;->showsec:Landroid/widget/TextView;

    const p2, 0x1030046

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 137
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/CPUCooler;->showsec:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    :goto_0
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/CPUCooler;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Ljp/wasabeef/recyclerview/animators/SlideInLeftAnimator;

    invoke-direct {p2}, Ljp/wasabeef/recyclerview/animators/SlideInLeftAnimator;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 145
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/CPUCooler;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 147
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    new-instance p2, Llightning/thunder/cleaner/RecyclerAdapter;

    sget-object v0, Llightning/thunder/cleaner/Fragments/CPUCooler;->apps:Ljava/util/List;

    invoke-direct {p2, v0}, Llightning/thunder/cleaner/RecyclerAdapter;-><init>(Ljava/util/List;)V

    iput-object p2, p1, Llightning/thunder/cleaner/Fragments/CPUCooler;->mAdapter:Llightning/thunder/cleaner/RecyclerAdapter;

    .line 148
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p2, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    invoke-virtual {p2}, Llightning/thunder/cleaner/Fragments/CPUCooler;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 149
    iget-object p2, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object p2, p2, Llightning/thunder/cleaner/Fragments/CPUCooler;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 150
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/CPUCooler;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Ljp/wasabeef/recyclerview/animators/SlideInUpAnimator;

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-direct {p2, v0}, Ljp/wasabeef/recyclerview/animators/SlideInUpAnimator;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 151
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/CPUCooler;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollExtent()I

    .line 152
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/CPUCooler;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object p2, p2, Llightning/thunder/cleaner/Fragments/CPUCooler;->mAdapter:Llightning/thunder/cleaner/RecyclerAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 153
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    invoke-virtual {p1}, Llightning/thunder/cleaner/Fragments/CPUCooler;->getAllICONS()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
