.class public Llightning/thunder/cleaner/Fragments/PhoneBooster;
.super Landroidx/fragment/app/Fragment;
.source "PhoneBooster.java"


# static fields
.field public static optimizebutton:Landroid/widget/ImageView;


# instance fields
.field private GameID:Ljava/lang/String;

.field appsfreed:Landroid/widget/TextView;

.field appused:Landroid/widget/TextView;

.field arcView:Lcom/hookedonplay/decoviewlib/DecoView;

.field bottom:Landroid/widget/TextView;

.field centree:Landroid/widget/TextView;

.field counter:I

.field editor:Landroid/content/SharedPreferences$Editor;

.field private interstitialAdPlacement:Ljava/lang/String;

.field mb:I

.field optimizelay:Landroid/widget/LinearLayout;

.field processes:Landroid/widget/TextView;

.field ramperct:Landroid/widget/TextView;

.field scanlay:Landroid/widget/LinearLayout;

.field scanning:Landroid/widget/TextView;

.field sharedpreferences:Landroid/content/SharedPreferences;

.field private testMode:Z

.field timer:Ljava/util/TimerTask;

.field timer2:Ljava/util/TimerTask;

.field top:Landroid/widget/TextView;

.field totalram:Landroid/widget/TextView;

.field usedram:Landroid/widget/TextView;

.field view:Landroid/view/View;

.field x:I

.field y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/high16 v0, 0x100000

    .line 58
    iput v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->mb:I

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->timer:Ljava/util/TimerTask;

    .line 65
    iput-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->timer2:Ljava/util/TimerTask;

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->counter:I

    const-string v1, "video"

    .line 71
    iput-object v1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->interstitialAdPlacement:Ljava/lang/String;

    const-string v1, "3474289"

    .line 72
    iput-object v1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->GameID:Ljava/lang/String;

    .line 73
    iput-boolean v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->testMode:Z

    return-void
.end method

.method private DisplayInterstitialAd()V
    .locals 2

    .line 655
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->interstitialAdPlacement:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {p0}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->interstitialAdPlacement:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Llightning/thunder/cleaner/Fragments/PhoneBooster;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->interstitialAdPlacement:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Llightning/thunder/cleaner/Fragments/PhoneBooster;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->DisplayInterstitialAd()V

    return-void
.end method


# virtual methods
.method public getTotalRAM()Ljava/lang/String;
    .locals 13

    const-string v0, ""

    .line 560
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 565
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "/proc/meminfo"

    const-string v5, "r"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-object v3, v2

    :catch_1
    :goto_0
    :try_start_2
    const-string v4, "(\\d+)"

    .line 572
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 573
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    move-object v4, v0

    .line 575
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    .line 576
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 580
    :cond_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 585
    :catch_2
    :try_start_4
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double v4, v2, v4

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double v6, v2, v6

    const-wide/high16 v8, 0x41d0000000000000L    # 1.073741824E9

    div-double v8, v2, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v8, v10

    if-lez v12, :cond_1

    .line 593
    invoke-virtual {v1, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, " TB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    cmpl-double v8, v6, v10

    if-lez v8, :cond_2

    .line 595
    invoke-virtual {v1, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, " GB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    cmpl-double v6, v4, v10

    if-lez v6, :cond_3

    .line 597
    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, " MB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 599
    :cond_3
    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, " KB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_3
    move-exception v1

    .line 602
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    return-object v0

    .line 605
    :goto_3
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public getUsedMemorySize()J
    .locals 4

    .line 614
    :try_start_0
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 615
    invoke-virtual {p0}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 616
    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 617
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0xc8

    return-wide v0
.end method

.method public killall()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 p3, 0x0

    const v0, 0x7f0b003b

    .line 78
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->view:Landroid/view/View;

    const p2, 0x7f080076

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hookedonplay/decoviewlib/DecoView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    .line 81
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->view:Landroid/view/View;

    const p2, 0x7f0800f3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->scanning:Landroid/widget/TextView;

    .line 82
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->view:Landroid/view/View;

    const p2, 0x7f0800f1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->scanlay:Landroid/widget/LinearLayout;

    .line 83
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->view:Landroid/view/View;

    const p2, 0x7f0800d1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->optimizelay:Landroid/widget/LinearLayout;

    .line 84
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->view:Landroid/view/View;

    const p2, 0x7f0800d0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sput-object p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->optimizebutton:Landroid/widget/ImageView;

    .line 85
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->view:Landroid/view/View;

    const p2, 0x7f080057

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->centree:Landroid/widget/TextView;

    .line 86
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->view:Landroid/view/View;

    const p2, 0x7f080140

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->totalram:Landroid/widget/TextView;

    .line 87
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->view:Landroid/view/View;

    const p2, 0x7f08014d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->usedram:Landroid/widget/TextView;

    .line 88
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->view:Landroid/view/View;

    const p2, 0x7f080044

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->appsfreed:Landroid/widget/TextView;

    .line 89
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->view:Landroid/view/View;

    const p2, 0x7f080045

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->appused:Landroid/widget/TextView;

    .line 90
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->view:Landroid/view/View;

    const p2, 0x7f0800db

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->processes:Landroid/widget/TextView;

    .line 91
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->view:Landroid/view/View;

    const p2, 0x7f08013e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->top:Landroid/widget/TextView;

    .line 92
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->view:Landroid/view/View;

    const p2, 0x7f08004e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->bottom:Landroid/widget/TextView;

    .line 93
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->view:Landroid/view/View;

    const p2, 0x7f0800df

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->ramperct:Landroid/widget/TextView;

    .line 94
    invoke-virtual {p0}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "waseem"

    invoke-virtual {p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 96
    invoke-virtual {p0}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->GameID:Ljava/lang/String;

    iget-boolean v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->testMode:Z

    invoke-static {p1, p2, v0}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 99
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->interstitialAdPlacement:Ljava/lang/String;

    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->load(Ljava/lang/String;)V

    .line 124
    :cond_0
    :try_start_0
    sget-object p1, Llightning/thunder/cleaner/MainActivity;->name:Landroid/widget/TextView;

    const-string p2, "Charge Booster"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 128
    iget-object p2, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->ramperct:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3c

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x28

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    sget-object p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->optimizebutton:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 132
    sget-object p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->optimizebutton:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    sget-object p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->optimizebutton:Landroid/widget/ImageView;

    const p2, 0x7f0700b2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string p2, "booster"

    const-string v0, "1"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 136
    sget-object p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->optimizebutton:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    sget-object p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->optimizebutton:Landroid/widget/ImageView;

    const p2, 0x7f0700b4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->centree:Landroid/widget/TextView;

    iget-object p2, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string p3, "value"

    const-string v0, "50MB"

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_1
    invoke-virtual {p0}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->start()V

    .line 145
    sget-object p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->optimizebutton:Landroid/widget/ImageView;

    new-instance p2, Llightning/thunder/cleaner/Fragments/PhoneBooster$1;

    invoke-direct {p2, p0}, Llightning/thunder/cleaner/Fragments/PhoneBooster$1;-><init>(Llightning/thunder/cleaner/Fragments/PhoneBooster;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :catch_0
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->view:Landroid/view/View;

    return-object p1
.end method

.method public optimize()V
    .locals 11

    .line 202
    new-instance v7, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const v2, 0x43b38000    # 359.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v0, 0x1388

    .line 203
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 204
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 206
    iget-object v2, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->view:Landroid/view/View;

    const v3, 0x7f08005b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 208
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 211
    iget-object v2, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    new-instance v3, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    const/16 v4, 0xda

    const/16 v5, 0xff

    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;-><init>(I)V

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v5, 0x0

    .line 212
    invoke-virtual {v3, v5, v4, v5}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setRange(FFF)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v3

    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 213
    invoke-virtual {v3, v6}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v3

    .line 214
    invoke-virtual {v3}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->build()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    move-result-object v3

    .line 211
    invoke-virtual {v2, v3}, Lcom/hookedonplay/decoviewlib/DecoView;->addSeries(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;)I

    .line 216
    iget-object v2, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    new-instance v3, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    const-string v6, "#F22938"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v3, v7}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;-><init>(I)V

    .line 217
    invoke-virtual {v3, v5, v4, v4}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setRange(FFF)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v3

    const/4 v7, 0x0

    .line 218
    invoke-virtual {v3, v7}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setInitialVisibility(Z)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v3

    const/high16 v8, 0x42000000    # 32.0f

    .line 219
    invoke-virtual {v3, v8}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setLineWidth(F)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v3

    .line 220
    invoke-virtual {v3}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->build()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    move-result-object v3

    .line 216
    invoke-virtual {v2, v3}, Lcom/hookedonplay/decoviewlib/DecoView;->addSeries(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;)I

    .line 223
    new-instance v2, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;-><init>(I)V

    .line 224
    invoke-virtual {v2, v5, v4, v5}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setRange(FFF)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v2

    .line 225
    invoke-virtual {v2, v8}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setLineWidth(F)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v2

    .line 226
    invoke-virtual {v2}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->build()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    .line 228
    new-instance v2, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    const-string v3, "#2499E0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;-><init>(I)V

    .line 229
    invoke-virtual {v2, v5, v4, v5}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setRange(FFF)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v2

    .line 230
    invoke-virtual {v2, v8}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setLineWidth(F)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v2

    .line 231
    invoke-virtual {v2}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->build()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    move-result-object v2

    .line 234
    iget-object v3, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    invoke-virtual {v3, v2}, Lcom/hookedonplay/decoviewlib/DecoView;->addSeries(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;)I

    move-result v2

    .line 236
    iget-object v3, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    new-instance v4, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    sget-object v6, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_SHOW:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    const/4 v8, 0x1

    invoke-direct {v4, v6, v8}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;-><init>(Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;Z)V

    const-wide/16 v9, 0x1f4

    .line 237
    invoke-virtual {v4, v9, v10}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setDelay(J)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v4

    const-wide/16 v9, 0x7d0

    .line 238
    invoke-virtual {v4, v9, v10}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setDuration(J)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v4

    new-instance v6, Llightning/thunder/cleaner/Fragments/PhoneBooster$2;

    invoke-direct {v6, p0}, Llightning/thunder/cleaner/Fragments/PhoneBooster$2;-><init>(Llightning/thunder/cleaner/Fragments/PhoneBooster;)V

    .line 239
    invoke-virtual {v4, v6}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setListener(Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v4

    .line 252
    invoke-virtual {v4}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->build()Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    move-result-object v4

    .line 236
    invoke-virtual {v3, v4}, Lcom/hookedonplay/decoviewlib/DecoView;->addEvent(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    .line 254
    iget-object v3, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    new-instance v4, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    const/high16 v6, 0x41c80000    # 25.0f

    invoke-direct {v4, v6}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;-><init>(F)V

    invoke-virtual {v4, v2}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setIndex(I)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v2

    const-wide/16 v9, 0xfa0

    invoke-virtual {v2, v9, v10}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setDelay(J)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v2

    new-instance v4, Llightning/thunder/cleaner/Fragments/PhoneBooster$3;

    invoke-direct {v4, p0}, Llightning/thunder/cleaner/Fragments/PhoneBooster$3;-><init>(Llightning/thunder/cleaner/Fragments/PhoneBooster;)V

    invoke-virtual {v2, v4}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setListener(Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v2

    .line 282
    invoke-virtual {v2}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->build()Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    move-result-object v2

    .line 254
    invoke-virtual {v3, v2}, Lcom/hookedonplay/decoviewlib/DecoView;->addEvent(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    .line 284
    iget-object v2, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->view:Landroid/view/View;

    const v3, 0x7f080151

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 286
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x447a0000    # 1000.0f

    invoke-direct {v3, v5, v4, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 287
    invoke-virtual {v3, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 288
    invoke-virtual {v3, v7}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 289
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 291
    invoke-virtual {v3, v8}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 293
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 296
    new-instance v0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;-><init>(Llightning/thunder/cleaner/Fragments/PhoneBooster;)V

    invoke-virtual {v3, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 645
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 649
    sget-object p1, Llightning/thunder/cleaner/MainActivity;->name:Landroid/widget/TextView;

    const-string v0, "Charge Booster"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 8

    .line 398
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    .line 399
    new-instance v1, Llightning/thunder/cleaner/Fragments/PhoneBooster$5;

    invoke-direct {v1, p0}, Llightning/thunder/cleaner/Fragments/PhoneBooster$5;-><init>(Llightning/thunder/cleaner/Fragments/PhoneBooster;)V

    iput-object v1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->timer:Ljava/util/TimerTask;

    const-wide/16 v2, 0x1e

    const-wide/16 v4, 0x1e

    move-object v0, v6

    .line 422
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 425
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x3c

    .line 426
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1e

    .line 429
    iget-object v1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    new-instance v2, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    const/16 v3, 0xda

    const/16 v4, 0xff

    invoke-static {v4, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;-><init>(I)V

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v4, 0x0

    .line 430
    invoke-virtual {v2, v4, v3, v4}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setRange(FFF)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v2

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 431
    invoke-virtual {v2, v5}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v2

    .line 432
    invoke-virtual {v2}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->build()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    move-result-object v2

    .line 429
    invoke-virtual {v1, v2}, Lcom/hookedonplay/decoviewlib/DecoView;->addSeries(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;)I

    .line 434
    iget-object v1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    new-instance v2, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    const-string v5, "#F22938"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v2, v7}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;-><init>(I)V

    .line 435
    invoke-virtual {v2, v4, v3, v3}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setRange(FFF)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v2

    const/4 v7, 0x0

    .line 436
    invoke-virtual {v2, v7}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setInitialVisibility(Z)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v2

    const/high16 v7, 0x42000000    # 32.0f

    .line 437
    invoke-virtual {v2, v7}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setLineWidth(F)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v2

    .line 438
    invoke-virtual {v2}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->build()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    move-result-object v2

    .line 434
    invoke-virtual {v1, v2}, Lcom/hookedonplay/decoviewlib/DecoView;->addSeries(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;)I

    .line 441
    new-instance v1, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;-><init>(I)V

    .line 442
    invoke-virtual {v1, v4, v3, v4}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setRange(FFF)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v1

    .line 443
    invoke-virtual {v1, v7}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setLineWidth(F)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v1

    .line 444
    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->build()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    .line 446
    new-instance v1, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    const-string v2, "#2499E0"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;-><init>(I)V

    .line 447
    invoke-virtual {v1, v4, v3, v4}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setRange(FFF)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v1

    .line 448
    invoke-virtual {v1, v7}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setLineWidth(F)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v1

    .line 449
    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->build()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    move-result-object v1

    .line 454
    iget-object v2, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    invoke-virtual {v2, v1}, Lcom/hookedonplay/decoviewlib/DecoView;->addSeries(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;)I

    move-result v1

    .line 456
    iget-object v2, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    new-instance v3, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    sget-object v4, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_SHOW:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;-><init>(Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;Z)V

    const-wide/16 v4, 0x0

    .line 457
    invoke-virtual {v3, v4, v5}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setDelay(J)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v3

    const-wide/16 v4, 0x258

    .line 458
    invoke-virtual {v3, v4, v5}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setDuration(J)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v3

    .line 459
    invoke-virtual {v3}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->build()Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    move-result-object v3

    .line 456
    invoke-virtual {v2, v3}, Lcom/hookedonplay/decoviewlib/DecoView;->addEvent(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    .line 462
    iget-object v2, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    new-instance v3, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    int-to-float v0, v0

    invoke-direct {v3, v0}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;-><init>(F)V

    invoke-virtual {v3, v1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setIndex(I)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v0

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v3, v4}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setDelay(J)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v0

    new-instance v1, Llightning/thunder/cleaner/Fragments/PhoneBooster$6;

    invoke-direct {v1, p0, v6}, Llightning/thunder/cleaner/Fragments/PhoneBooster$6;-><init>(Llightning/thunder/cleaner/Fragments/PhoneBooster;Ljava/util/Timer;)V

    invoke-virtual {v0, v1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setListener(Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v0

    .line 532
    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->build()Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    move-result-object v0

    .line 462
    invoke-virtual {v2, v0}, Lcom/hookedonplay/decoviewlib/DecoView;->addEvent(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getUsedMemorySize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "used mem"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-virtual {p0}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getTotalRAM()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->totalram:Landroid/widget/TextView;

    invoke-virtual {p0}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getTotalRAM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->usedram:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getUsedMemorySize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " MB/ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->appsfreed:Landroid/widget/TextView;

    invoke-virtual {p0}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getTotalRAM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->appused:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getUsedMemorySize()J

    move-result-wide v3

    iget v5, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->x:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1e

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x32

    .line 543
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0xf

    iput v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->y:I

    .line 545
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->processes:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
