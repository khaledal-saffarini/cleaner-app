.class public Llightning/thunder/cleaner/Noraml_Mode;
.super Landroid/app/Activity;
.source "Noraml_Mode.java"


# instance fields
.field private GameID:Ljava/lang/String;

.field arcView:Lcom/hookedonplay/decoviewlib/DecoView;

.field check:I

.field completion:Landroid/widget/TextView;

.field editor:Landroid/content/SharedPreferences$Editor;

.field fou:Landroid/widget/TextView;

.field foupic:Landroid/widget/ImageView;

.field private interstitialAdPlacement:Ljava/lang/String;

.field ist:Landroid/widget/TextView;

.field istpic:Landroid/widget/ImageView;

.field sec:Landroid/widget/TextView;

.field secpic:Landroid/widget/ImageView;

.field sharedpreferences:Landroid/content/SharedPreferences;

.field private testMode:Z

.field thir:Landroid/widget/TextView;

.field thirpic:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "video"

    .line 38
    iput-object v0, p0, Llightning/thunder/cleaner/Noraml_Mode;->interstitialAdPlacement:Ljava/lang/String;

    const-string v0, "3474289"

    .line 39
    iput-object v0, p0, Llightning/thunder/cleaner/Noraml_Mode;->GameID:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Llightning/thunder/cleaner/Noraml_Mode;->testMode:Z

    .line 46
    iput v0, p0, Llightning/thunder/cleaner/Noraml_Mode;->check:I

    return-void
.end method

.method private DisplayInterstitialAd()V
    .locals 1

    .line 371
    iget-object v0, p0, Llightning/thunder/cleaner/Noraml_Mode;->interstitialAdPlacement:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Llightning/thunder/cleaner/Noraml_Mode;->interstitialAdPlacement:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Llightning/thunder/cleaner/Noraml_Mode;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Llightning/thunder/cleaner/Noraml_Mode;->interstitialAdPlacement:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Llightning/thunder/cleaner/Noraml_Mode;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Llightning/thunder/cleaner/Noraml_Mode;->DisplayInterstitialAd()V

    return-void
.end method


# virtual methods
.method public enablesall()V
    .locals 4

    .line 277
    invoke-virtual {p0}, Llightning/thunder/cleaner/Noraml_Mode;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Llightning/thunder/cleaner/PowerSaving_Complition;->setAutoOrientationEnabled(Landroid/content/Context;Z)V

    .line 279
    invoke-virtual {p0}, Llightning/thunder/cleaner/Noraml_Mode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness"

    const/16 v3, 0xff

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 281
    invoke-static {v1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 324
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 325
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "TAG"

    const-string p2, "CODE_WRITE_SETTINGS_PERMISSION success"

    .line 326
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {p0}, Llightning/thunder/cleaner/Noraml_Mode;->enablesall()V

    .line 333
    invoke-virtual {p0}, Llightning/thunder/cleaner/Noraml_Mode;->finish()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0044

    .line 58
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Noraml_Mode;->setContentView(I)V

    const p1, 0x7f0800a1

    .line 60
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Noraml_Mode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Noraml_Mode;->ist:Landroid/widget/TextView;

    const p1, 0x7f080104

    .line 61
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Noraml_Mode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Noraml_Mode;->sec:Landroid/widget/TextView;

    const p1, 0x7f080136

    .line 62
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Noraml_Mode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Noraml_Mode;->thir:Landroid/widget/TextView;

    const p1, 0x7f080089

    .line 63
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Noraml_Mode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Noraml_Mode;->fou:Landroid/widget/TextView;

    const p1, 0x7f0800a2

    .line 64
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Noraml_Mode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Noraml_Mode;->istpic:Landroid/widget/ImageView;

    const p1, 0x7f080105

    .line 65
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Noraml_Mode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Noraml_Mode;->secpic:Landroid/widget/ImageView;

    const p1, 0x7f080137

    .line 66
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Noraml_Mode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Noraml_Mode;->thirpic:Landroid/widget/ImageView;

    const p1, 0x7f08008a

    .line 67
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Noraml_Mode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Noraml_Mode;->foupic:Landroid/widget/ImageView;

    const p1, 0x7f080060

    .line 68
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Noraml_Mode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Noraml_Mode;->completion:Landroid/widget/TextView;

    const/4 p1, 0x0

    const-string v0, "was"

    .line 70
    invoke-virtual {p0, v0, p1}, Llightning/thunder/cleaner/Noraml_Mode;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Llightning/thunder/cleaner/Noraml_Mode;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Llightning/thunder/cleaner/Noraml_Mode;->editor:Landroid/content/SharedPreferences$Editor;

    const v0, 0x7f080076

    .line 106
    invoke-virtual {p0, v0}, Llightning/thunder/cleaner/Noraml_Mode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hookedonplay/decoviewlib/DecoView;

    iput-object v0, p0, Llightning/thunder/cleaner/Noraml_Mode;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    .line 113
    new-instance v1, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    const-string v2, "#27282D"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;-><init>(I)V

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v4, 0x0

    .line 114
    invoke-virtual {v1, v4, v3, v3}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setRange(FFF)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v1

    .line 115
    invoke-virtual {v1, p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setInitialVisibility(Z)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object p1

    const/high16 v1, 0x41400000    # 12.0f

    .line 116
    invoke-virtual {p1, v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setLineWidth(F)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->build()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    move-result-object p1

    .line 113
    invoke-virtual {v0, p1}, Lcom/hookedonplay/decoviewlib/DecoView;->addSeries(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;)I

    .line 120
    new-instance p1, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p1, v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;-><init>(I)V

    .line 121
    invoke-virtual {p1, v4, v3, v4}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setRange(FFF)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object p1

    const/high16 v0, 0x41200000    # 10.0f

    .line 122
    invoke-virtual {p1, v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setLineWidth(F)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->build()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    .line 125
    new-instance p1, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p1, v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;-><init>(I)V

    .line 126
    invoke-virtual {p1, v4, v3, v4}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setRange(FFF)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object p1

    .line 127
    invoke-virtual {p1, v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setLineWidth(F)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->build()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    move-result-object p1

    .line 131
    iget-object v0, p0, Llightning/thunder/cleaner/Noraml_Mode;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    invoke-virtual {v0, p1}, Lcom/hookedonplay/decoviewlib/DecoView;->addSeries(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;)I

    move-result v0

    .line 133
    new-instance v1, Llightning/thunder/cleaner/Noraml_Mode$1;

    invoke-direct {v1, p0}, Llightning/thunder/cleaner/Noraml_Mode$1;-><init>(Llightning/thunder/cleaner/Noraml_Mode;)V

    invoke-virtual {p1, v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->addArcSeriesItemListener(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$SeriesItemListener;)V

    .line 185
    iget-object p1, p0, Llightning/thunder/cleaner/Noraml_Mode;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    new-instance v1, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    sget-object v2, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_SHOW:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;-><init>(Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;Z)V

    const-wide/16 v4, 0x0

    .line 186
    invoke-virtual {v1, v4, v5}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setDelay(J)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v1

    .line 187
    invoke-virtual {v1, v4, v5}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setDuration(J)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v1

    new-instance v2, Llightning/thunder/cleaner/Noraml_Mode$2;

    invoke-direct {v2, p0}, Llightning/thunder/cleaner/Noraml_Mode$2;-><init>(Llightning/thunder/cleaner/Noraml_Mode;)V

    .line 188
    invoke-virtual {v1, v2}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setListener(Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v1

    .line 203
    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->build()Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    move-result-object v1

    .line 185
    invoke-virtual {p1, v1}, Lcom/hookedonplay/decoviewlib/DecoView;->addEvent(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    .line 205
    iget-object p1, p0, Llightning/thunder/cleaner/Noraml_Mode;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    new-instance v1, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    invoke-direct {v1, v3}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;-><init>(F)V

    invoke-virtual {v1, v0}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setIndex(I)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setDelay(J)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v0

    new-instance v1, Llightning/thunder/cleaner/Noraml_Mode$3;

    invoke-direct {v1, p0}, Llightning/thunder/cleaner/Noraml_Mode$3;-><init>(Llightning/thunder/cleaner/Noraml_Mode;)V

    invoke-virtual {v0, v1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setListener(Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->build()Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    move-result-object v0

    .line 205
    invoke-virtual {p1, v0}, Lcom/hookedonplay/decoviewlib/DecoView;->addEvent(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 340
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 341
    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 346
    invoke-virtual {p0}, Llightning/thunder/cleaner/Noraml_Mode;->enablesall()V

    .line 348
    invoke-virtual {p0}, Llightning/thunder/cleaner/Noraml_Mode;->finish()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 356
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 357
    iget v0, p0, Llightning/thunder/cleaner/Noraml_Mode;->check:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 361
    :try_start_0
    invoke-virtual {p0}, Llightning/thunder/cleaner/Noraml_Mode;->enablesall()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    invoke-virtual {p0}, Llightning/thunder/cleaner/Noraml_Mode;->finish()V

    .line 367
    :goto_0
    invoke-virtual {p0}, Llightning/thunder/cleaner/Noraml_Mode;->finish()V

    :cond_0
    return-void
.end method

.method public youDesirePermissionCode(Landroid/app/Activity;)V
    .locals 5

    .line 298
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_SETTINGS"

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-lt v0, v3, :cond_0

    .line 299
    invoke-static {p1}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 301
    :cond_0
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 307
    invoke-virtual {p0}, Llightning/thunder/cleaner/Noraml_Mode;->enablesall()V

    .line 309
    invoke-virtual {p0}, Llightning/thunder/cleaner/Noraml_Mode;->finish()V

    goto :goto_1

    .line 311
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_3

    .line 312
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
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

    .line 314
    invoke-virtual {p1, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_3
    new-array v0, v4, [Ljava/lang/String;

    aput-object v2, v0, v1

    .line 316
    invoke-static {p1, v0, v4}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_1
    return-void
.end method
