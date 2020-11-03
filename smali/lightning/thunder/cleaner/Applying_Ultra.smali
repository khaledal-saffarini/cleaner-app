.class public Llightning/thunder/cleaner/Applying_Ultra;
.super Landroid/app/Activity;
.source "Applying_Ultra.java"


# instance fields
.field arcView:Lcom/hookedonplay/decoviewlib/DecoView;

.field check:I

.field completion:Landroid/widget/TextView;

.field editor:Landroid/content/SharedPreferences$Editor;

.field fif:Landroid/widget/TextView;

.field fifthpic:Landroid/widget/ImageView;

.field fou:Landroid/widget/TextView;

.field foupic:Landroid/widget/ImageView;

.field ist:Landroid/widget/TextView;

.field istpic:Landroid/widget/ImageView;

.field sec:Landroid/widget/TextView;

.field secpic:Landroid/widget/ImageView;

.field sharedpreferences:Landroid/content/SharedPreferences;

.field thir:Landroid/widget/TextView;

.field thirpic:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Llightning/thunder/cleaner/Applying_Ultra;->check:I

    return-void
.end method


# virtual methods
.method public enablesall()V
    .locals 2

    .line 201
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 206
    :cond_0
    invoke-virtual {p0}, Llightning/thunder/cleaner/Applying_Ultra;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 209
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 212
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 235
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 236
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "TAG"

    const-string p2, "CODE_WRITE_SETTINGS_PERMISSION success"

    .line 237
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p0}, Llightning/thunder/cleaner/Applying_Ultra;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Llightning/thunder/cleaner/PowerSaving_Complition;->setAutoOrientationEnabled(Landroid/content/Context;Z)V

    .line 244
    invoke-virtual {p0}, Llightning/thunder/cleaner/Applying_Ultra;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/16 p3, 0x14

    const-string v0, "screen_brightness"

    invoke-static {p1, v0, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 246
    invoke-static {p2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 249
    new-instance p1, Landroid/content/Intent;

    const-class p2, Llightning/thunder/cleaner/BatterySaver_Black;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Applying_Ultra;->startActivity(Landroid/content/Intent;)V

    .line 251
    invoke-virtual {p0}, Llightning/thunder/cleaner/Applying_Ultra;->finish()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001d

    .line 50
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Applying_Ultra;->setContentView(I)V

    const p1, 0x7f0800a1

    .line 52
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Applying_Ultra;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra;->ist:Landroid/widget/TextView;

    const p1, 0x7f080104

    .line 53
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Applying_Ultra;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra;->sec:Landroid/widget/TextView;

    const p1, 0x7f080136

    .line 54
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Applying_Ultra;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra;->thir:Landroid/widget/TextView;

    const p1, 0x7f080089

    .line 55
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Applying_Ultra;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra;->fou:Landroid/widget/TextView;

    const p1, 0x7f08007f

    .line 56
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Applying_Ultra;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra;->fif:Landroid/widget/TextView;

    const p1, 0x7f0800a2

    .line 57
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Applying_Ultra;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra;->istpic:Landroid/widget/ImageView;

    const p1, 0x7f080105

    .line 58
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Applying_Ultra;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra;->secpic:Landroid/widget/ImageView;

    const p1, 0x7f080137

    .line 59
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Applying_Ultra;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra;->thirpic:Landroid/widget/ImageView;

    const p1, 0x7f08008a

    .line 60
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Applying_Ultra;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llightning/thunder/cleaner/Applying_Ultra;->foupic:Landroid/widget/ImageView;

    .line 61
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Applying_Ultra;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra;->foupic:Landroid/widget/ImageView;

    const p1, 0x7f080080

    .line 62
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Applying_Ultra;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra;->fifthpic:Landroid/widget/ImageView;

    const p1, 0x7f080060

    .line 63
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Applying_Ultra;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra;->completion:Landroid/widget/TextView;

    const/4 p1, 0x0

    const-string v0, "was"

    .line 65
    invoke-virtual {p0, v0, p1}, Llightning/thunder/cleaner/Applying_Ultra;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Llightning/thunder/cleaner/Applying_Ultra;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Llightning/thunder/cleaner/Applying_Ultra;->editor:Landroid/content/SharedPreferences$Editor;

    const v0, 0x7f080076

    .line 71
    invoke-virtual {p0, v0}, Llightning/thunder/cleaner/Applying_Ultra;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hookedonplay/decoviewlib/DecoView;

    iput-object v0, p0, Llightning/thunder/cleaner/Applying_Ultra;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    .line 78
    new-instance v1, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    const-string v2, "#27282D"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;-><init>(I)V

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v4, 0x0

    .line 79
    invoke-virtual {v1, v4, v3, v3}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setRange(FFF)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object v1

    .line 80
    invoke-virtual {v1, p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setInitialVisibility(Z)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object p1

    const/high16 v1, 0x41400000    # 12.0f

    .line 81
    invoke-virtual {p1, v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setLineWidth(F)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->build()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    move-result-object p1

    .line 78
    invoke-virtual {v0, p1}, Lcom/hookedonplay/decoviewlib/DecoView;->addSeries(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;)I

    .line 85
    new-instance p1, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p1, v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;-><init>(I)V

    .line 86
    invoke-virtual {p1, v4, v3, v4}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setRange(FFF)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object p1

    const/high16 v0, 0x41200000    # 10.0f

    .line 87
    invoke-virtual {p1, v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setLineWidth(F)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->build()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    .line 90
    new-instance p1, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p1, v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;-><init>(I)V

    .line 91
    invoke-virtual {p1, v4, v3, v4}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setRange(FFF)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object p1

    .line 92
    invoke-virtual {p1, v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->setLineWidth(F)Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem$Builder;->build()Lcom/hookedonplay/decoviewlib/charts/SeriesItem;

    move-result-object p1

    .line 96
    iget-object v0, p0, Llightning/thunder/cleaner/Applying_Ultra;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    invoke-virtual {v0, p1}, Lcom/hookedonplay/decoviewlib/DecoView;->addSeries(Lcom/hookedonplay/decoviewlib/charts/SeriesItem;)I

    move-result v0

    .line 98
    new-instance v1, Llightning/thunder/cleaner/Applying_Ultra$1;

    invoke-direct {v1, p0}, Llightning/thunder/cleaner/Applying_Ultra$1;-><init>(Llightning/thunder/cleaner/Applying_Ultra;)V

    invoke-virtual {p1, v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesItem;->addArcSeriesItemListener(Lcom/hookedonplay/decoviewlib/charts/SeriesItem$SeriesItemListener;)V

    .line 144
    iget-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    new-instance v1, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    sget-object v2, Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;->EVENT_SHOW:Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;-><init>(Lcom/hookedonplay/decoviewlib/events/DecoEvent$EventType;Z)V

    const-wide/16 v4, 0x0

    .line 145
    invoke-virtual {v1, v4, v5}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setDelay(J)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v1

    .line 146
    invoke-virtual {v1, v4, v5}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setDuration(J)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v1

    new-instance v2, Llightning/thunder/cleaner/Applying_Ultra$2;

    invoke-direct {v2, p0}, Llightning/thunder/cleaner/Applying_Ultra$2;-><init>(Llightning/thunder/cleaner/Applying_Ultra;)V

    .line 147
    invoke-virtual {v1, v2}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setListener(Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->build()Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    move-result-object v1

    .line 144
    invoke-virtual {p1, v1}, Lcom/hookedonplay/decoviewlib/DecoView;->addEvent(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    .line 164
    iget-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra;->arcView:Lcom/hookedonplay/decoviewlib/DecoView;

    new-instance v1, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    invoke-direct {v1, v3}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;-><init>(F)V

    invoke-virtual {v1, v0}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setIndex(I)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setDelay(J)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v0

    new-instance v1, Llightning/thunder/cleaner/Applying_Ultra$3;

    invoke-direct {v1, p0}, Llightning/thunder/cleaner/Applying_Ultra$3;-><init>(Llightning/thunder/cleaner/Applying_Ultra;)V

    invoke-virtual {v0, v1}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->setListener(Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;)Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/events/DecoEvent$Builder;->build()Lcom/hookedonplay/decoviewlib/events/DecoEvent;

    move-result-object v0

    .line 164
    invoke-virtual {p1, v0}, Lcom/hookedonplay/decoviewlib/DecoView;->addEvent(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 293
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 294
    aget p2, p3, p1

    if-nez p2, :cond_0

    .line 299
    invoke-virtual {p0}, Llightning/thunder/cleaner/Applying_Ultra;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Llightning/thunder/cleaner/PowerSaving_Complition;->setAutoOrientationEnabled(Landroid/content/Context;Z)V

    .line 301
    invoke-virtual {p0}, Llightning/thunder/cleaner/Applying_Ultra;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/16 p3, 0x14

    const-string v0, "screen_brightness"

    invoke-static {p2, v0, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    invoke-static {p1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 306
    new-instance p1, Landroid/content/Intent;

    const-class p2, Llightning/thunder/cleaner/BatterySaver_Black;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Applying_Ultra;->startActivity(Landroid/content/Intent;)V

    .line 308
    invoke-virtual {p0}, Llightning/thunder/cleaner/Applying_Ultra;->finish()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 316
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 317
    iget v0, p0, Llightning/thunder/cleaner/Applying_Ultra;->check:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 321
    :try_start_0
    invoke-virtual {p0}, Llightning/thunder/cleaner/Applying_Ultra;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Llightning/thunder/cleaner/PowerSaving_Complition;->setAutoOrientationEnabled(Landroid/content/Context;Z)V

    .line 323
    invoke-virtual {p0}, Llightning/thunder/cleaner/Applying_Ultra;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness"

    const/16 v3, 0x14

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 325
    invoke-static {v1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    :catch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Llightning/thunder/cleaner/BatterySaver_Black;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 331
    invoke-virtual {p0, v0}, Llightning/thunder/cleaner/Applying_Ultra;->startActivity(Landroid/content/Intent;)V

    .line 332
    invoke-virtual {p0}, Llightning/thunder/cleaner/Applying_Ultra;->finish()V

    .line 335
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Llightning/thunder/cleaner/BatterySaver_Black;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    invoke-virtual {p0, v0}, Llightning/thunder/cleaner/Applying_Ultra;->startActivity(Landroid/content/Intent;)V

    .line 337
    invoke-virtual {p0}, Llightning/thunder/cleaner/Applying_Ultra;->finish()V

    :cond_0
    return-void
.end method

.method public youDesirePermissionCode(Landroid/app/Activity;)V
    .locals 5

    .line 258
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "android.permission.WRITE_SETTINGS"

    const/16 v2, 0x17

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v0, v2, :cond_0

    .line 259
    invoke-static {p1}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 261
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

    .line 267
    invoke-virtual {p0}, Llightning/thunder/cleaner/Applying_Ultra;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4}, Llightning/thunder/cleaner/PowerSaving_Complition;->setAutoOrientationEnabled(Landroid/content/Context;Z)V

    .line 269
    invoke-virtual {p0}, Llightning/thunder/cleaner/Applying_Ultra;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/16 v0, 0x14

    const-string v1, "screen_brightness"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 271
    invoke-static {v4}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 274
    new-instance p1, Landroid/content/Intent;

    const-class v0, Llightning/thunder/cleaner/BatterySaver_Black;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Applying_Ultra;->startActivity(Landroid/content/Intent;)V

    .line 276
    invoke-virtual {p0}, Llightning/thunder/cleaner/Applying_Ultra;->finish()V

    goto :goto_1

    .line 279
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_3

    .line 280
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
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

    .line 282
    invoke-virtual {p1, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_3
    new-array v0, v3, [Ljava/lang/String;

    aput-object v1, v0, v4

    .line 284
    invoke-static {p1, v0, v3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_1
    return-void
.end method
