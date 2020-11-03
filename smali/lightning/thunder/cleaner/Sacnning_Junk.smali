.class public Llightning/thunder/cleaner/Sacnning_Junk;
.super Landroid/app/Activity;
.source "Sacnning_Junk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llightning/thunder/cleaner/Sacnning_Junk$SimpleDividerItemDecoration;
    }
.end annotation


# instance fields
.field private GameID:Ljava/lang/String;

.field T2:Ljava/util/Timer;

.field T3:Ljava/util/Timer;

.field public apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llightning/thunder/cleaner/Classes/Apps;",
            ">;"
        }
    .end annotation
.end field

.field avi1:Lcom/wang/avi/AVLoadingIndicatorView;

.field avi2:Lcom/wang/avi/AVLoadingIndicatorView;

.field avi3:Lcom/wang/avi/AVLoadingIndicatorView;

.field avi4:Lcom/wang/avi/AVLoadingIndicatorView;

.field avi5:Lcom/wang/avi/AVLoadingIndicatorView;

.field avi6:Lcom/wang/avi/AVLoadingIndicatorView;

.field back:Landroid/widget/ImageView;

.field check:I

.field files:Landroid/widget/TextView;

.field front:Landroid/widget/ImageView;

.field private interstitialAdPlacement:Ljava/lang/String;

.field mAdapter:Llightning/thunder/cleaner/Junk_Apps_Adapter;

.field mImgCheck:Landroid/widget/ImageView;

.field myHandler:Landroid/os/Handler;

.field myHandler2:Landroid/os/Handler;

.field myRunnable:Ljava/lang/Runnable;

.field myRunnable2:Ljava/lang/Runnable;

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

.field prog:I

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field scanning:Landroid/widget/TextView;

.field private testMode:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->check:I

    .line 63
    iput v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->prog:I

    const-string v1, "video"

    .line 72
    iput-object v1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->interstitialAdPlacement:Ljava/lang/String;

    const-string v1, "3474289"

    .line 73
    iput-object v1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->GameID:Ljava/lang/String;

    .line 74
    iput-boolean v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->testMode:Z

    return-void
.end method

.method private DisplayInterstitialAd()V
    .locals 1

    .line 538
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->interstitialAdPlacement:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->interstitialAdPlacement:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Llightning/thunder/cleaner/Sacnning_Junk;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->interstitialAdPlacement:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 5

    .line 467
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->packages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p1, p1, 0x0

    add-int/lit8 p1, p1, 0x1

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p1, v0

    add-int/lit8 p1, p1, 0x0

    .line 472
    new-instance v0, Llightning/thunder/cleaner/Classes/Apps;

    invoke-direct {v0}, Llightning/thunder/cleaner/Classes/Apps;-><init>()V

    .line 474
    iget-object v1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->packages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 476
    :try_start_0
    iget-object v2, p0, Llightning/thunder/cleaner/Sacnning_Junk;->pm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Llightning/thunder/cleaner/Sacnning_Junk;->pm:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 477
    iget-object v2, p0, Llightning/thunder/cleaner/Sacnning_Junk;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 478
    invoke-virtual {p0}, Llightning/thunder/cleaner/Sacnning_Junk;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Llightning/thunder/cleaner/Sacnning_Junk;->packages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Llightning/thunder/cleaner/Classes/Apps;->setImage(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 480
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 484
    :goto_0
    iget-object v1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->packages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, p1}, Llightning/thunder/cleaner/Classes/Apps;->setSize(Ljava/lang/String;)V

    .line 485
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->apps:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->mAdapter:Llightning/thunder/cleaner/Junk_Apps_Adapter;

    invoke-virtual {p1, p2}, Llightning/thunder/cleaner/Junk_Apps_Adapter;->notifyItemInserted(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 535
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Llightning/thunder/cleaner/Sacnning_Junk;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const v0, 0x7f0b0046

    .line 85
    invoke-virtual {p0, v0}, Llightning/thunder/cleaner/Sacnning_Junk;->setContentView(I)V

    const v0, 0x7f0800eb

    .line 86
    invoke-virtual {p0, v0}, Llightning/thunder/cleaner/Sacnning_Junk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wang/avi/AVLoadingIndicatorView;

    iput-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi1:Lcom/wang/avi/AVLoadingIndicatorView;

    const v0, 0x7f0800ec

    .line 87
    invoke-virtual {p0, v0}, Llightning/thunder/cleaner/Sacnning_Junk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wang/avi/AVLoadingIndicatorView;

    iput-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi2:Lcom/wang/avi/AVLoadingIndicatorView;

    const v0, 0x7f0800ed

    .line 88
    invoke-virtual {p0, v0}, Llightning/thunder/cleaner/Sacnning_Junk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wang/avi/AVLoadingIndicatorView;

    iput-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi3:Lcom/wang/avi/AVLoadingIndicatorView;

    const v0, 0x7f0800ee

    .line 89
    invoke-virtual {p0, v0}, Llightning/thunder/cleaner/Sacnning_Junk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wang/avi/AVLoadingIndicatorView;

    iput-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi4:Lcom/wang/avi/AVLoadingIndicatorView;

    const v0, 0x7f0800ef

    .line 90
    invoke-virtual {p0, v0}, Llightning/thunder/cleaner/Sacnning_Junk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wang/avi/AVLoadingIndicatorView;

    iput-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi5:Lcom/wang/avi/AVLoadingIndicatorView;

    const v0, 0x7f0800f0

    .line 91
    invoke-virtual {p0, v0}, Llightning/thunder/cleaner/Sacnning_Junk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wang/avi/AVLoadingIndicatorView;

    iput-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi6:Lcom/wang/avi/AVLoadingIndicatorView;

    const v0, 0x7f080081

    .line 92
    invoke-virtual {p0, v0}, Llightning/thunder/cleaner/Sacnning_Junk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->files:Landroid/widget/TextView;

    const v0, 0x7f080049

    .line 93
    invoke-virtual {p0, v0}, Llightning/thunder/cleaner/Sacnning_Junk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->back:Landroid/widget/ImageView;

    const v0, 0x7f0800f3

    .line 94
    invoke-virtual {p0, v0}, Llightning/thunder/cleaner/Sacnning_Junk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->scanning:Landroid/widget/TextView;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->apps:Ljava/util/List;

    .line 125
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v1, 0x5dc

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 v1, 0x4

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 128
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 130
    new-instance v1, Llightning/thunder/cleaner/Sacnning_Junk$1;

    invoke-direct {v1, p0}, Llightning/thunder/cleaner/Sacnning_Junk$1;-><init>(Llightning/thunder/cleaner/Sacnning_Junk;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v1, 0x7f08008b

    .line 162
    invoke-virtual {p0, v1}, Llightning/thunder/cleaner/Sacnning_Junk;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->front:Landroid/widget/ImageView;

    .line 164
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 166
    invoke-virtual {p0}, Llightning/thunder/cleaner/Sacnning_Junk;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->pm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->packages:Ljava/util/List;

    const-string v0, "activity"

    .line 170
    invoke-virtual {p0, v0}, Llightning/thunder/cleaner/Sacnning_Junk;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 174
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Llightning/thunder/cleaner/Sacnning_Junk;->T2:Ljava/util/Timer;

    .line 175
    new-instance v3, Llightning/thunder/cleaner/Sacnning_Junk$2;

    invoke-direct {v3, p0}, Llightning/thunder/cleaner/Sacnning_Junk$2;-><init>(Llightning/thunder/cleaner/Sacnning_Junk;)V

    const-wide/16 v4, 0x50

    const-wide/16 v6, 0x50

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    const v0, 0x7f0800e1

    .line 198
    invoke-virtual {p0, v0}, Llightning/thunder/cleaner/Sacnning_Junk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 200
    new-instance v2, Ljp/wasabeef/recyclerview/animators/SlideInLeftAnimator;

    invoke-direct {v2}, Ljp/wasabeef/recyclerview/animators/SlideInLeftAnimator;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 201
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Llightning/thunder/cleaner/Sacnning_Junk$SimpleDividerItemDecoration;

    invoke-direct {v2, p0, p0}, Llightning/thunder/cleaner/Sacnning_Junk$SimpleDividerItemDecoration;-><init>(Llightning/thunder/cleaner/Sacnning_Junk;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 212
    new-instance v0, Llightning/thunder/cleaner/Junk_Apps_Adapter;

    iget-object v2, p0, Llightning/thunder/cleaner/Sacnning_Junk;->apps:Ljava/util/List;

    invoke-direct {v0, v2}, Llightning/thunder/cleaner/Junk_Apps_Adapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->mAdapter:Llightning/thunder/cleaner/Junk_Apps_Adapter;

    .line 213
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Llightning/thunder/cleaner/Sacnning_Junk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 214
    iget-object v1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 215
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Ljp/wasabeef/recyclerview/animators/SlideInUpAnimator;

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-direct {v1, v2}, Ljp/wasabeef/recyclerview/animators/SlideInUpAnimator;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 216
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollExtent()I

    .line 217
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->mAdapter:Llightning/thunder/cleaner/Junk_Apps_Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 218
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->mAdapter:Llightning/thunder/cleaner/Junk_Apps_Adapter;

    invoke-virtual {v0}, Llightning/thunder/cleaner/Junk_Apps_Adapter;->notifyDataSetChanged()V

    .line 219
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Llightning/thunder/cleaner/Sacnning_Junk$SimpleDividerItemDecoration;

    invoke-direct {v1, p0, p0}, Llightning/thunder/cleaner/Sacnning_Junk$SimpleDividerItemDecoration;-><init>(Llightning/thunder/cleaner/Sacnning_Junk;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 225
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 226
    new-instance v1, Llightning/thunder/cleaner/Sacnning_Junk$3;

    invoke-direct {v1, p0}, Llightning/thunder/cleaner/Sacnning_Junk$3;-><init>(Llightning/thunder/cleaner/Sacnning_Junk;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 235
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 236
    new-instance v1, Llightning/thunder/cleaner/Sacnning_Junk$4;

    invoke-direct {v1, p0}, Llightning/thunder/cleaner/Sacnning_Junk$4;-><init>(Llightning/thunder/cleaner/Sacnning_Junk;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 245
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 246
    new-instance v1, Llightning/thunder/cleaner/Sacnning_Junk$5;

    invoke-direct {v1, p0}, Llightning/thunder/cleaner/Sacnning_Junk$5;-><init>(Llightning/thunder/cleaner/Sacnning_Junk;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 256
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 257
    new-instance v1, Llightning/thunder/cleaner/Sacnning_Junk$6;

    invoke-direct {v1, p0}, Llightning/thunder/cleaner/Sacnning_Junk$6;-><init>(Llightning/thunder/cleaner/Sacnning_Junk;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 266
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 267
    new-instance v1, Llightning/thunder/cleaner/Sacnning_Junk$7;

    invoke-direct {v1, p0}, Llightning/thunder/cleaner/Sacnning_Junk$7;-><init>(Llightning/thunder/cleaner/Sacnning_Junk;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 278
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 279
    new-instance v1, Llightning/thunder/cleaner/Sacnning_Junk$8;

    invoke-direct {v1, p0}, Llightning/thunder/cleaner/Sacnning_Junk$8;-><init>(Llightning/thunder/cleaner/Sacnning_Junk;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 289
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 290
    new-instance v1, Llightning/thunder/cleaner/Sacnning_Junk$9;

    invoke-direct {v1, p0}, Llightning/thunder/cleaner/Sacnning_Junk$9;-><init>(Llightning/thunder/cleaner/Sacnning_Junk;)V

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 300
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 301
    new-instance v1, Llightning/thunder/cleaner/Sacnning_Junk$10;

    invoke-direct {v1, p0, p1}, Llightning/thunder/cleaner/Sacnning_Junk$10;-><init>(Llightning/thunder/cleaner/Sacnning_Junk;Landroid/os/Bundle;)V

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 493
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->mAdapter:Llightning/thunder/cleaner/Junk_Apps_Adapter;

    invoke-virtual {v0, p1}, Llightning/thunder/cleaner/Junk_Apps_Adapter;->notifyItemRemoved(I)V

    .line 494
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->apps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method startAnim(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 413
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi1:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->show()V

    .line 414
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi3:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->show()V

    .line 415
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi5:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->show()V

    .line 417
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi2:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->hide()V

    .line 418
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi4:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->hide()V

    .line 419
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi6:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->hide()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 421
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi2:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->show()V

    .line 422
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi4:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->show()V

    .line 423
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi6:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->show()V

    .line 425
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi1:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->hide()V

    .line 426
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi3:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->hide()V

    .line 427
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi5:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->hide()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 430
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi2:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->show()V

    .line 431
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi4:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->show()V

    .line 432
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi6:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->show()V

    .line 434
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi1:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->show()V

    .line 435
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi3:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->show()V

    .line 436
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi5:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->show()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 439
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi2:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->show()V

    .line 440
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi3:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->show()V

    .line 441
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi5:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->show()V

    .line 443
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi1:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->show()V

    .line 444
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi2:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->show()V

    .line 445
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi6:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method stopAnim()V
    .locals 1

    .line 453
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi1:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v0}, Lcom/wang/avi/AVLoadingIndicatorView;->hide()V

    .line 454
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi3:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v0}, Lcom/wang/avi/AVLoadingIndicatorView;->hide()V

    .line 455
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi5:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v0}, Lcom/wang/avi/AVLoadingIndicatorView;->hide()V

    .line 457
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi2:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v0}, Lcom/wang/avi/AVLoadingIndicatorView;->show()V

    .line 458
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi4:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v0}, Lcom/wang/avi/AVLoadingIndicatorView;->show()V

    .line 459
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk;->avi6:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v0}, Lcom/wang/avi/AVLoadingIndicatorView;->show()V

    return-void
.end method
