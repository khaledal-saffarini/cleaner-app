.class public Llightning/thunder/cleaner/MainActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llightning/thunder/cleaner/MainActivity$MyException;
    }
.end annotation


# static fields
.field public static name:Landroid/widget/TextView;


# instance fields
.field private GameID:Ljava/lang/String;

.field private bannerAdPlacement:Ljava/lang/String;

.field editor:Landroid/content/SharedPreferences$Editor;

.field sharedpreferences:Landroid/content/SharedPreferences;

.field private testMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const-string v0, "3474289"

    .line 39
    iput-object v0, p0, Llightning/thunder/cleaner/MainActivity;->GameID:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Llightning/thunder/cleaner/MainActivity;->testMode:Z

    const-string v0, "banner"

    .line 41
    iput-object v0, p0, Llightning/thunder/cleaner/MainActivity;->bannerAdPlacement:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Llightning/thunder/cleaner/MainActivity;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Llightning/thunder/cleaner/MainActivity;->bannerAdPlacement:Ljava/lang/String;

    return-object p0
.end method

.method private isNetworkAvailable()Z
    .locals 1

    const-string v0, "connectivity"

    .line 294
    invoke-virtual {p0, v0}, Llightning/thunder/cleaner/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 295
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 46
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    iget-object p1, p0, Llightning/thunder/cleaner/MainActivity;->GameID:Ljava/lang/String;

    iget-boolean v0, p0, Llightning/thunder/cleaner/MainActivity;->testMode:Z

    invoke-static {p0, p1, v0}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 49
    new-instance p1, Llightning/thunder/cleaner/MainActivity$1;

    invoke-direct {p1, p0}, Llightning/thunder/cleaner/MainActivity$1;-><init>(Llightning/thunder/cleaner/MainActivity;)V

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const p1, 0x7f0b001c

    .line 58
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/MainActivity;->setContentView(I)V

    .line 65
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4032000000000000L    # 18.0

    mul-double v0, v0, v2

    double-to-int p1, v0

    add-int/lit8 p1, p1, 0x6

    .line 67
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double v0, v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x6

    .line 72
    new-instance v1, Landroid/content/Intent;

    const-class v2, Llightning/thunder/cleaner/Broadcast/AlarmReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    .line 73
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    const-string v1, "alarm"

    .line 74
    invoke-virtual {p0, v1}, Llightning/thunder/cleaner/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/app/AlarmManager;

    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 77
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0xb

    .line 79
    invoke-virtual {v1, v5, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 80
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 81
    invoke-virtual {v1, p1, v2}, Ljava/util/Calendar;->set(II)V

    .line 83
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 84
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    cmp-long p1, v5, v7

    if-ltz p1, :cond_0

    const/4 v4, 0x1

    const-wide/32 v7, 0x5265c00

    .line 89
    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    const/4 v0, 0x1

    .line 93
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->add(II)V

    .line 94
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const/4 v4, 0x1

    const-wide/32 v7, 0x5265c00

    .line 96
    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 107
    :goto_0
    new-instance p1, Llightning/thunder/cleaner/MainActivity$2;

    invoke-direct {p1, p0}, Llightning/thunder/cleaner/MainActivity$2;-><init>(Llightning/thunder/cleaner/MainActivity;)V

    .line 141
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result v0

    const-wide/16 v3, 0x1388

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Llightning/thunder/cleaner/MainActivity;->bannerAdPlacement:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/unity3d/services/banners/UnityBanners;->loadBanner(Landroid/app/Activity;Ljava/lang/String;)V

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 146
    new-instance v1, Llightning/thunder/cleaner/MainActivity$3;

    invoke-direct {v1, p0}, Llightning/thunder/cleaner/MainActivity$3;-><init>(Llightning/thunder/cleaner/MainActivity;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 153
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 154
    new-instance v1, Llightning/thunder/cleaner/MainActivity$4;

    invoke-direct {v1, p0, v0}, Llightning/thunder/cleaner/MainActivity$4;-><init>(Llightning/thunder/cleaner/MainActivity;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 169
    :goto_1
    invoke-static {p1}, Lcom/unity3d/services/banners/UnityBanners;->setBannerListener(Lcom/unity3d/services/banners/IUnityBannerListener;)V

    .line 172
    iget-object p1, p0, Llightning/thunder/cleaner/MainActivity;->bannerAdPlacement:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/unity3d/services/banners/UnityBanners;->loadBanner(Landroid/app/Activity;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    .line 186
    new-instance v0, Llightning/thunder/cleaner/MainActivity$5;

    invoke-direct {v0, p0, p1}, Llightning/thunder/cleaner/MainActivity$5;-><init>(Llightning/thunder/cleaner/MainActivity;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const p1, 0x7f0800be

    .line 209
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sput-object p1, Llightning/thunder/cleaner/MainActivity;->name:Landroid/widget/TextView;

    const-string p1, "waseembest"

    .line 210
    invoke-virtual {p0, p1, v2}, Llightning/thunder/cleaner/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Llightning/thunder/cleaner/MainActivity;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 211
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Llightning/thunder/cleaner/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const p1, 0x7f080125

    .line 237
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    .line 238
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    const v1, 0x7f0700b7

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 239
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    const v1, 0x7f070060

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 240
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    const v1, 0x7f070089

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 241
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    const v1, 0x7f070070

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 242
    invoke-virtual {p1, v2}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    const v0, 0x7f0800d3

    .line 244
    invoke-virtual {p0, v0}, Llightning/thunder/cleaner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 245
    new-instance v1, Llightning/thunder/cleaner/PagerAdapter/MyPagerAdapter;

    invoke-virtual {p0}, Llightning/thunder/cleaner/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v3

    invoke-direct {v1, v2, v3}, Llightning/thunder/cleaner/PagerAdapter/MyPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    .line 246
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const/4 v1, 0x4

    .line 248
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 251
    new-instance v1, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v1, p1}, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 253
    new-instance v1, Llightning/thunder/cleaner/MainActivity$6;

    invoke-direct {v1, p0, v0}, Llightning/thunder/cleaner/MainActivity$6;-><init>(Llightning/thunder/cleaner/MainActivity;Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 276
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 278
    iget-object v0, p0, Llightning/thunder/cleaner/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "0"

    const-string v2, "button1"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 279
    iget-object v0, p0, Llightning/thunder/cleaner/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "button2"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 280
    iget-object v0, p0, Llightning/thunder/cleaner/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "button3"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 281
    iget-object v0, p0, Llightning/thunder/cleaner/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "button4"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 282
    iget-object v0, p0, Llightning/thunder/cleaner/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
