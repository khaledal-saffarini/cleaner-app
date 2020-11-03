.class public Llightning/thunder/cleaner/Cpu_Scanner;
.super Landroid/app/Activity;
.source "Cpu_Scanner.java"


# instance fields
.field private GameID:Ljava/lang/String;

.field app:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llightning/thunder/cleaner/Classes/Apps;",
            ">;"
        }
    .end annotation
.end field

.field brokenView:Lcom/zys/brokenview/BrokenView;

.field cooledcpu:Landroid/widget/TextView;

.field cpu:Landroid/widget/ImageView;

.field img_animation:Landroid/widget/ImageView;

.field private interstitialAdPlacement:Ljava/lang/String;

.field listener:Lcom/zys/brokenview/BrokenTouchListener;

.field mAdapter:Llightning/thunder/cleaner/Scan_Cpu_Apps;

.field mInterstitialAd:Lcom/facebook/ads/InterstitialAd;

.field packages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field pm:Landroid/content/pm/PackageManager;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field rel:Landroid/widget/RelativeLayout;

.field scanner:Landroid/widget/ImageView;

.field private testMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Llightning/thunder/cleaner/Cpu_Scanner;->app:Ljava/util/List;

    const-string v0, "video"

    .line 64
    iput-object v0, p0, Llightning/thunder/cleaner/Cpu_Scanner;->interstitialAdPlacement:Ljava/lang/String;

    const-string v0, "3474289"

    .line 65
    iput-object v0, p0, Llightning/thunder/cleaner/Cpu_Scanner;->GameID:Ljava/lang/String;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Llightning/thunder/cleaner/Cpu_Scanner;->testMode:Z

    return-void
.end method

.method private DisplayInterstitialAd()V
    .locals 1

    .line 393
    iget-object v0, p0, Llightning/thunder/cleaner/Cpu_Scanner;->interstitialAdPlacement:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Llightning/thunder/cleaner/Cpu_Scanner;->interstitialAdPlacement:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Llightning/thunder/cleaner/Cpu_Scanner;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Llightning/thunder/cleaner/Cpu_Scanner;->interstitialAdPlacement:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Llightning/thunder/cleaner/Cpu_Scanner;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Llightning/thunder/cleaner/Cpu_Scanner;->DisplayInterstitialAd()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 0

    .line 366
    :try_start_0
    iget-object p1, p0, Llightning/thunder/cleaner/Cpu_Scanner;->mAdapter:Llightning/thunder/cleaner/Scan_Cpu_Apps;

    invoke-virtual {p1, p2}, Llightning/thunder/cleaner/Scan_Cpu_Apps;->notifyItemInserted(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0020

    .line 75
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Cpu_Scanner;->setContentView(I)V

    const p1, 0x7f0800f2

    .line 76
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Cpu_Scanner;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Cpu_Scanner;->scanner:Landroid/widget/ImageView;

    const p1, 0x7f080067

    .line 77
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Cpu_Scanner;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Cpu_Scanner;->cpu:Landroid/widget/ImageView;

    const p1, 0x7f080068

    .line 78
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Cpu_Scanner;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Cpu_Scanner;->cooledcpu:Landroid/widget/TextView;

    const p1, 0x7f080092

    .line 79
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Cpu_Scanner;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Cpu_Scanner;->img_animation:Landroid/widget/ImageView;

    const p1, 0x7f0800e2

    .line 80
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Cpu_Scanner;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Llightning/thunder/cleaner/Cpu_Scanner;->rel:Landroid/widget/RelativeLayout;

    .line 81
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Llightning/thunder/cleaner/Cpu_Scanner;->app:Ljava/util/List;

    .line 128
    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v0, 0x5dc

    .line 129
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 v0, 0x3

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 131
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 132
    iget-object v0, p0, Llightning/thunder/cleaner/Cpu_Scanner;->scanner:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 137
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-direct {p1, v0, v1, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v0, 0x1388

    .line 138
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 140
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x1

    .line 142
    invoke-virtual {p1, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 144
    iget-object v1, p0, Llightning/thunder/cleaner/Cpu_Scanner;->img_animation:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 146
    new-instance v1, Llightning/thunder/cleaner/Cpu_Scanner$1;

    invoke-direct {v1, p0}, Llightning/thunder/cleaner/Cpu_Scanner$1;-><init>(Llightning/thunder/cleaner/Cpu_Scanner;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const p1, 0x7f0800e1

    .line 165
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Cpu_Scanner;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Llightning/thunder/cleaner/Cpu_Scanner;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 167
    new-instance v1, Ljp/wasabeef/recyclerview/animators/SlideInLeftAnimator;

    invoke-direct {v1}, Ljp/wasabeef/recyclerview/animators/SlideInLeftAnimator;-><init>()V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 170
    new-instance p1, Llightning/thunder/cleaner/Scan_Cpu_Apps;

    sget-object v1, Llightning/thunder/cleaner/Fragments/CPUCooler;->apps:Ljava/util/List;

    invoke-direct {p1, v1}, Llightning/thunder/cleaner/Scan_Cpu_Apps;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Llightning/thunder/cleaner/Cpu_Scanner;->mAdapter:Llightning/thunder/cleaner/Scan_Cpu_Apps;

    .line 171
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Llightning/thunder/cleaner/Cpu_Scanner;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 172
    iget-object v0, p0, Llightning/thunder/cleaner/Cpu_Scanner;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 173
    iget-object p1, p0, Llightning/thunder/cleaner/Cpu_Scanner;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Ljp/wasabeef/recyclerview/animators/SlideInUpAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-direct {v0, v1}, Ljp/wasabeef/recyclerview/animators/SlideInUpAnimator;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 174
    iget-object p1, p0, Llightning/thunder/cleaner/Cpu_Scanner;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollExtent()I

    .line 175
    iget-object p1, p0, Llightning/thunder/cleaner/Cpu_Scanner;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Llightning/thunder/cleaner/Cpu_Scanner;->mAdapter:Llightning/thunder/cleaner/Scan_Cpu_Apps;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 176
    iget-object p1, p0, Llightning/thunder/cleaner/Cpu_Scanner;->mAdapter:Llightning/thunder/cleaner/Scan_Cpu_Apps;

    invoke-virtual {p1}, Llightning/thunder/cleaner/Scan_Cpu_Apps;->notifyDataSetChanged()V

    .line 182
    :try_start_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 183
    new-instance v0, Llightning/thunder/cleaner/Cpu_Scanner$2;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Cpu_Scanner$2;-><init>(Llightning/thunder/cleaner/Cpu_Scanner;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 192
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 193
    new-instance v0, Llightning/thunder/cleaner/Cpu_Scanner$3;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Cpu_Scanner$3;-><init>(Llightning/thunder/cleaner/Cpu_Scanner;)V

    const-wide/16 v1, 0x384

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 204
    new-instance v0, Llightning/thunder/cleaner/Cpu_Scanner$4;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Cpu_Scanner$4;-><init>(Llightning/thunder/cleaner/Cpu_Scanner;)V

    const-wide/16 v1, 0x708

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 215
    new-instance v0, Llightning/thunder/cleaner/Cpu_Scanner$5;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Cpu_Scanner$5;-><init>(Llightning/thunder/cleaner/Cpu_Scanner;)V

    const-wide/16 v1, 0xa8c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 226
    new-instance v0, Llightning/thunder/cleaner/Cpu_Scanner$6;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Cpu_Scanner$6;-><init>(Llightning/thunder/cleaner/Cpu_Scanner;)V

    const-wide/16 v1, 0xe74

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 234
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 235
    new-instance v0, Llightning/thunder/cleaner/Cpu_Scanner$7;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Cpu_Scanner$7;-><init>(Llightning/thunder/cleaner/Cpu_Scanner;)V

    const-wide/16 v1, 0x1130

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 243
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 244
    new-instance v0, Llightning/thunder/cleaner/Cpu_Scanner$8;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Cpu_Scanner$8;-><init>(Llightning/thunder/cleaner/Cpu_Scanner;)V

    const-wide/16 v1, 0x157c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 377
    iget-object v0, p0, Llightning/thunder/cleaner/Cpu_Scanner;->mAdapter:Llightning/thunder/cleaner/Scan_Cpu_Apps;

    invoke-virtual {v0, p1}, Llightning/thunder/cleaner/Scan_Cpu_Apps;->notifyItemRemoved(I)V

    .line 379
    :try_start_0
    sget-object v0, Llightning/thunder/cleaner/Fragments/CPUCooler;->apps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
