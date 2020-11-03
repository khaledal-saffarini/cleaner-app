.class public Llightning/thunder/cleaner/Fragments/BatterySaver;
.super Landroidx/fragment/app/Fragment;
.source "BatterySaver.java"


# instance fields
.field editor:Landroid/content/SharedPreferences$Editor;

.field hourmain:Landroid/widget/TextView;

.field hourn:Landroid/widget/TextView;

.field hourp:Landroid/widget/TextView;

.field houru:Landroid/widget/TextView;

.field private mBatInfoReceiver:Landroid/content/BroadcastReceiver;

.field mWaveLoadingView:Lme/itangqi/waveloadingview/WaveLoadingView;

.field minutep:Landroid/widget/TextView;

.field minutes:Landroid/widget/TextView;

.field minutesmain:Landroid/widget/TextView;

.field minutesu:Landroid/widget/TextView;

.field normal:Landroid/widget/ImageView;

.field powersaving:Landroid/widget/ImageView;

.field sharedpreferences:Landroid/content/SharedPreferences;

.field ultrasaving:Landroid/widget/ImageView;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 40
    new-instance v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Fragments/BatterySaver$1;-><init>(Llightning/thunder/cleaner/Fragments/BatterySaver;)V

    iput-object v0, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "#FFFFFF"

    const/4 v0, 0x0

    const v1, 0x7f0b001e

    .line 256
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->view:Landroid/view/View;

    const p2, 0x7f080150

    .line 257
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lme/itangqi/waveloadingview/WaveLoadingView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->mWaveLoadingView:Lme/itangqi/waveloadingview/WaveLoadingView;

    .line 258
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->view:Landroid/view/View;

    const p2, 0x7f0800da

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->powersaving:Landroid/widget/ImageView;

    .line 259
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->view:Landroid/view/View;

    const p2, 0x7f080148

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->ultrasaving:Landroid/widget/ImageView;

    .line 260
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->view:Landroid/view/View;

    const p2, 0x7f0800cb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->normal:Landroid/widget/ImageView;

    .line 261
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->view:Landroid/view/View;

    const p2, 0x7f080096

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourn:Landroid/widget/TextView;

    .line 262
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->view:Landroid/view/View;

    const p2, 0x7f0800b6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutes:Landroid/widget/TextView;

    .line 263
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->view:Landroid/view/View;

    const p2, 0x7f080097

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourp:Landroid/widget/TextView;

    .line 264
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->view:Landroid/view/View;

    const p2, 0x7f0800b8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutep:Landroid/widget/TextView;

    .line 265
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->view:Landroid/view/View;

    const p2, 0x7f080098

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->houru:Landroid/widget/TextView;

    .line 266
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->view:Landroid/view/View;

    const p2, 0x7f0800b9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesu:Landroid/widget/TextView;

    .line 267
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->view:Landroid/view/View;

    const p2, 0x7f080095

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourmain:Landroid/widget/TextView;

    .line 268
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->view:Landroid/view/View;

    const p2, 0x7f0800b7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesmain:Landroid/widget/TextView;

    .line 269
    invoke-virtual {p0}, Llightning/thunder/cleaner/Fragments/BatterySaver;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "was"

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 270
    invoke-virtual {p0}, Llightning/thunder/cleaner/Fragments/BatterySaver;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 274
    :try_start_0
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->powersaving:Landroid/widget/ImageView;

    new-instance p2, Llightning/thunder/cleaner/Fragments/BatterySaver$2;

    invoke-direct {p2, p0}, Llightning/thunder/cleaner/Fragments/BatterySaver$2;-><init>(Llightning/thunder/cleaner/Fragments/BatterySaver;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->ultrasaving:Landroid/widget/ImageView;

    new-instance p2, Llightning/thunder/cleaner/Fragments/BatterySaver$3;

    invoke-direct {p2, p0}, Llightning/thunder/cleaner/Fragments/BatterySaver$3;-><init>(Llightning/thunder/cleaner/Fragments/BatterySaver;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->normal:Landroid/widget/ImageView;

    new-instance p2, Llightning/thunder/cleaner/Fragments/BatterySaver$4;

    invoke-direct {p2, p0}, Llightning/thunder/cleaner/Fragments/BatterySaver$4;-><init>(Llightning/thunder/cleaner/Fragments/BatterySaver;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->mWaveLoadingView:Lme/itangqi/waveloadingview/WaveLoadingView;

    sget-object p2, Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;->CIRCLE:Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;

    invoke-virtual {p1, p2}, Lme/itangqi/waveloadingview/WaveLoadingView;->setShapeType(Lme/itangqi/waveloadingview/WaveLoadingView$ShapeType;)V

    .line 308
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->mWaveLoadingView:Lme/itangqi/waveloadingview/WaveLoadingView;

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lme/itangqi/waveloadingview/WaveLoadingView;->setCenterTitleColor(I)V

    .line 309
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->mWaveLoadingView:Lme/itangqi/waveloadingview/WaveLoadingView;

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lme/itangqi/waveloadingview/WaveLoadingView;->setBottomTitleColor(I)V

    .line 310
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->mWaveLoadingView:Lme/itangqi/waveloadingview/WaveLoadingView;

    const/high16 p2, 0x41200000    # 10.0f

    invoke-virtual {p1, p2}, Lme/itangqi/waveloadingview/WaveLoadingView;->setBorderWidth(F)V

    .line 311
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->mWaveLoadingView:Lme/itangqi/waveloadingview/WaveLoadingView;

    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Lme/itangqi/waveloadingview/WaveLoadingView;->setAmplitudeRatio(I)V

    .line 312
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->mWaveLoadingView:Lme/itangqi/waveloadingview/WaveLoadingView;

    const-string p2, "#2499E0"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lme/itangqi/waveloadingview/WaveLoadingView;->setWaveColor(I)V

    .line 313
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->mWaveLoadingView:Lme/itangqi/waveloadingview/WaveLoadingView;

    const-string p2, "#000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lme/itangqi/waveloadingview/WaveLoadingView;->setBorderColor(I)V

    .line 314
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->mWaveLoadingView:Lme/itangqi/waveloadingview/WaveLoadingView;

    const p2, -0xffff01

    invoke-virtual {p1, p2}, Lme/itangqi/waveloadingview/WaveLoadingView;->setTopTitleStrokeColor(I)V

    .line 315
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->mWaveLoadingView:Lme/itangqi/waveloadingview/WaveLoadingView;

    const/high16 p2, 0x40400000    # 3.0f

    invoke-virtual {p1, p2}, Lme/itangqi/waveloadingview/WaveLoadingView;->setTopTitleStrokeWidth(F)V

    .line 316
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->mWaveLoadingView:Lme/itangqi/waveloadingview/WaveLoadingView;

    const-wide/16 p2, 0xbb8

    invoke-virtual {p1, p2, p3}, Lme/itangqi/waveloadingview/WaveLoadingView;->setAnimDuration(J)V

    .line 320
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->mWaveLoadingView:Lme/itangqi/waveloadingview/WaveLoadingView;

    invoke-virtual {p1}, Lme/itangqi/waveloadingview/WaveLoadingView;->startAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :catch_0
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->view:Landroid/view/View;

    return-object p1
.end method

.method public onResume()V
    .locals 4

    .line 334
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 336
    invoke-virtual {p0}, Llightning/thunder/cleaner/Fragments/BatterySaver;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 341
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 343
    :try_start_0
    invoke-virtual {p0}, Llightning/thunder/cleaner/Fragments/BatterySaver;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 354
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 358
    sget-object p1, Llightning/thunder/cleaner/MainActivity;->name:Landroid/widget/TextView;

    const-string v0, "Battery Saver"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
