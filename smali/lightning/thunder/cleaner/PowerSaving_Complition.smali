.class public Llightning/thunder/cleaner/PowerSaving_Complition;
.super Landroid/app/Activity;
.source "PowerSaving_Complition.java"


# instance fields
.field private GameID:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private adView:Landroid/widget/LinearLayout;

.field arcView:Lcom/hookedonplay/decoviewlib/DecoView;

.field check:I

.field completion:Landroid/widget/TextView;

.field fou:Landroid/widget/TextView;

.field foupic:Landroid/widget/ImageView;

.field private interstitialAdPlacement:Ljava/lang/String;

.field ist:Landroid/widget/TextView;

.field istpic:Landroid/widget/ImageView;

.field private nativeAd:Lcom/facebook/ads/NativeAd;

.field private nativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

.field sec:Landroid/widget/TextView;

.field secpic:Landroid/widget/ImageView;

.field private testMode:Z

.field thir:Landroid/widget/TextView;

.field thirpic:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Llightning/thunder/cleaner/PowerSaving_Complition;->check:I

    .line 47
    const-class v1, Llightning/thunder/cleaner/MainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llightning/thunder/cleaner/PowerSaving_Complition;->TAG:Ljava/lang/String;

    const-string v1, "video"

    .line 53
    iput-object v1, p0, Llightning/thunder/cleaner/PowerSaving_Complition;->interstitialAdPlacement:Ljava/lang/String;

    const-string v1, "3365973"

    .line 54
    iput-object v1, p0, Llightning/thunder/cleaner/PowerSaving_Complition;->GameID:Ljava/lang/String;

    .line 55
    iput-boolean v0, p0, Llightning/thunder/cleaner/PowerSaving_Complition;->testMode:Z

    return-void
.end method

.method private DisplayInterstitialAd()V
    .locals 1

    .line 364
    iget-object v0, p0, Llightning/thunder/cleaner/PowerSaving_Complition;->interstitialAdPlacement:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Llightning/thunder/cleaner/PowerSaving_Complition;->interstitialAdPlacement:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Llightning/thunder/cleaner/PowerSaving_Complition;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Llightning/thunder/cleaner/PowerSaving_Complition;->interstitialAdPlacement:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Llightning/thunder/cleaner/PowerSaving_Complition;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Llightning/thunder/cleaner/PowerSaving_Complition;->DisplayInterstitialAd()V

    return-void
.end method

.method public static setAutoOrientationEnabled(Landroid/content/Context;Z)V
    .locals 1

    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accelerometer_rotation"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public closesall()V
    .locals 2

    .line 239
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_0
    const/4 v0, 0x0

    .line 258
    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 309
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 310
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "TAG"

    const-string p2, "CODE_WRITE_SETTINGS_PERMISSION success"

    .line 311
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {p0}, Llightning/thunder/cleaner/PowerSaving_Complition;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/16 p2, 0x1e

    const-string p3, "screen_brightness"

    invoke-static {p1, p3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x0

    .line 317
    invoke-static {p0, p1}, Llightning/thunder/cleaner/PowerSaving_Complition;->setAutoOrientationEnabled(Landroid/content/Context;Z)V

    .line 319
    invoke-virtual {p0}, Llightning/thunder/cleaner/PowerSaving_Complition;->finish()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b003e

    .line 63
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/PowerSaving_Complition;->setContentView(I)V

    const p1, 0x7f0800a1

    .line 64
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/PowerSaving_Complition;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition;->ist:Landroid/widget/TextView;

    const p1, 0x7f080104

    .line 65
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/PowerSaving_Complition;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition;->sec:Landroid/widget/TextView;

    const p1, 0x7f080136

    .line 66
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/PowerSaving_Complition;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition;->thir:Landroid/widget/TextView;

    const p1, 0x7f080089

    .line 67
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/PowerSaving_Complition;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition;->fou:Landroid/widget/TextView;

    const p1, 0x7f0800a2

    .line 68
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/PowerSaving_Complition;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition;->istpic:Landroid/widget/ImageView;

    const p1, 0x7f080105

    .line 69
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/PowerSaving_Complition;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition;->secpic:Landroid/widget/ImageView;

    const p1, 0x7f080137

    .line 70
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/PowerSaving_Complition;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition;->thirpic:Landroid/widget/ImageView;

    const p1, 0x7f08008a

    .line 71
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/PowerSaving_Complition;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition;->foupic:Landroid/widget/ImageView;

    const p1, 0x7f080060

    .line 72
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/PowerSaving_Complition;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition;->completion:Landroid/widget/TextView;

    .line 74
    iget-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition;->GameID:Ljava/lang/String;

    iget-boolean v0, p0, Llightning/thunder/cleaner/PowerSaving_Complition;->testMode:Z

    invoke-static {p0, p1, v0}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/app/Activity;Ljava/lang/String;Z)V

    const p1, 0x7f080076

    .line 76
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/PowerSaving_Complition;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hookedonplay/decoviewlib/DecoView;

    iput-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    .line 108
    new-instance v0, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    const-string v1, "#27282D"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;-><init>(I)V

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    .line 109
    invoke-virtual {v0, v3, v2, v2}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setRange(FFF)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v0

    const/4 v4, 0x0

    .line 110
    invoke-virtual {v0, v4}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setInitialVisibility(Z)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v0

    const/high16 v4, 0x41400000    # 12.0f

    .line 111
    invoke-virtual {v0, v4}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setLineWidth(F)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->build()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    move-result-object v0

    .line 108
    invoke-virtual {p1, v0}, Lcom/hookedonplay/decoviewlib/DecoView;->addSeries(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;)I

    .line 115
    new-instance p1, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p1, v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;-><init>(I)V

    .line 116
    invoke-virtual {p1, v3, v2, v3}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setRange(FFF)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object p1

    const/high16 v0, 0x41200000    # 10.0f

    .line 117
    invoke-virtual {p1, v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setLineWidth(F)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->build()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    .line 120
    new-instance p1, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p1, v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;-><init>(I)V

    .line 121
    invoke-virtual {p1, v3, v2, v3}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setRange(FFF)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object p1

    .line 122
    invoke-virtual {p1, v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setLineWidth(F)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->build()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    move-result-object p1

    .line 126
    iget-object v0, p0, Llightning/thunder/cleaner/PowerSaving_Complition;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    invoke-virtual {v0, p1}, Lcom/hookedonplay/decoviewlib/DecoView;->addSeries(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;)I

    move-result v0

    .line 128
    new-instance v1, Llightning/thunder/cleaner/PowerSaving_Complition$1;

    invoke-direct {v1, p0}, Llightning/thunder/cleaner/PowerSaving_Complition$1;-><init>(Llightning/thunder/cleaner/PowerSaving_Complition;)V

    invoke-virtual {p1, v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->addArcSeriesItemListener(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$SeriesItemListener;)V

    .line 171
    iget-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    new-instance v1, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    sget-object v3, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_SHOW:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;-><init>(Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;Z)V

    const-wide/16 v3, 0x0

    .line 172
    invoke-virtual {v1, v3, v4}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setDelay(J)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v1

    .line 173
    invoke-virtual {v1, v3, v4}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setDuration(J)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v1

    new-instance v3, Llightning/thunder/cleaner/PowerSaving_Complition$2;

    invoke-direct {v3, p0}, Llightning/thunder/cleaner/PowerSaving_Complition$2;-><init>(Llightning/thunder/cleaner/PowerSaving_Complition;)V

    .line 174
    invoke-virtual {v1, v3}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setListener(Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->build()Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    move-result-object v1

    .line 171
    invoke-virtual {p1, v1}, Lcom/hookedonplay/decoviewlib/DecoView;->addEvent(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    .line 191
    iget-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    new-instance v1, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    invoke-direct {v1, v2}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;-><init>(F)V

    invoke-virtual {v1, v0}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setIndex(I)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setDelay(J)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v0

    new-instance v1, Llightning/thunder/cleaner/PowerSaving_Complition$3;

    invoke-direct {v1, p0}, Llightning/thunder/cleaner/PowerSaving_Complition$3;-><init>(Llightning/thunder/cleaner/PowerSaving_Complition;)V

    invoke-virtual {v0, v1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setListener(Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->build()Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    move-result-object v0

    .line 191
    invoke-virtual {p1, v0}, Lcom/hookedonplay/decoviewlib/DecoView;->addEvent(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 361
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 326
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 327
    aget p3, p3, p1

    if-nez p3, :cond_0

    .line 330
    invoke-virtual {p0}, Llightning/thunder/cleaner/PowerSaving_Complition;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "onRequestPermissionsResult"

    invoke-static {p3, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 332
    invoke-virtual {p0}, Llightning/thunder/cleaner/PowerSaving_Complition;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/16 p3, 0x1e

    const-string v0, "screen_brightness"

    invoke-static {p2, v0, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 333
    invoke-static {p0, p1}, Llightning/thunder/cleaner/PowerSaving_Complition;->setAutoOrientationEnabled(Landroid/content/Context;Z)V

    .line 335
    invoke-virtual {p0}, Llightning/thunder/cleaner/PowerSaving_Complition;->finish()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 343
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 344
    iget v0, p0, Llightning/thunder/cleaner/PowerSaving_Complition;->check:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 348
    :try_start_0
    invoke-virtual {p0}, Llightning/thunder/cleaner/PowerSaving_Complition;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    .line 349
    invoke-static {p0, v0}, Llightning/thunder/cleaner/PowerSaving_Complition;->setAutoOrientationEnabled(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    invoke-virtual {p0}, Llightning/thunder/cleaner/PowerSaving_Complition;->finish()V

    .line 355
    :goto_0
    invoke-virtual {p0}, Llightning/thunder/cleaner/PowerSaving_Complition;->finish()V

    :cond_0
    return-void
.end method

.method public youDesirePermissionCode(Landroid/app/Activity;)V
    .locals 5

    .line 282
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "android.permission.WRITE_SETTINGS"

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v0, v2, :cond_0

    .line 283
    invoke-static {p1}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 285
    :cond_0
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 291
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0x1e

    const-string v2, "screen_brightness"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 292
    invoke-static {p1, v3}, Llightning/thunder/cleaner/PowerSaving_Complition;->setAutoOrientationEnabled(Landroid/content/Context;Z)V

    .line 294
    invoke-virtual {p0}, Llightning/thunder/cleaner/PowerSaving_Complition;->finish()V

    goto :goto_1

    .line 296
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_3

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 299
    invoke-virtual {p1, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_3
    new-array v0, v4, [Ljava/lang/String;

    aput-object v1, v0, v3

    .line 301
    invoke-static {p1, v0, v4}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_1
    return-void
.end method
