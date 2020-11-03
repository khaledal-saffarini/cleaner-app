.class public Llightning/thunder/cleaner/BatterySaver_Black;
.super Landroid/app/Activity;
.source "BatterySaver_Black.java"


# instance fields
.field alaram:Landroid/widget/ImageView;

.field batteryremaning:Landroid/widget/TextView;

.field calculator:Landroid/widget/ImageView;

.field check:I

.field contacts:Landroid/widget/ImageView;

.field disable:Landroid/widget/TextView;

.field dots:Landroid/widget/ImageView;

.field editor:Landroid/content/SharedPreferences$Editor;

.field internet:Landroid/widget/ImageView;

.field private mBatInfoReceiver:Landroid/content/BroadcastReceiver;

.field messages:Landroid/widget/ImageView;

.field phone:Landroid/widget/ImageView;

.field playstore:Landroid/widget/ImageView;

.field setting:Landroid/widget/ImageView;

.field sharedpreferences:Landroid/content/SharedPreferences;

.field timeremaning:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Llightning/thunder/cleaner/BatterySaver_Black;->check:I

    .line 50
    new-instance v0, Llightning/thunder/cleaner/BatterySaver_Black$1;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/BatterySaver_Black$1;-><init>(Llightning/thunder/cleaner/BatterySaver_Black;)V

    iput-object v0, p0, Llightning/thunder/cleaner/BatterySaver_Black;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public alaram()V
    .locals 2

    .line 572
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0}, Llightning/thunder/cleaner/BatterySaver_Black;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 575
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 576
    invoke-virtual {p0, v0}, Llightning/thunder/cleaner/BatterySaver_Black;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "Your System doesn\'t allow to use messaging app."

    .line 580
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public calculator()V
    .locals 6

    const-string v0, "android.intent.category.LAUNCHER"

    const-string v1, "android.intent.action.MAIN"

    .line 546
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 547
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.popupcalculator"

    const-string v5, "com.sec.android.app.popupcalculator.Calculator"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 550
    invoke-virtual {p0, v2}, Llightning/thunder/cleaner/BatterySaver_Black;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 553
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 554
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.calculator2"

    const-string v3, "com.android.calculator2.Calculator"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 557
    invoke-virtual {p0}, Llightning/thunder/cleaner/BatterySaver_Black;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 559
    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {p0, v2}, Llightning/thunder/cleaner/BatterySaver_Black;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "Your System doesn\'t allow to use messaging app."

    .line 564
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public camera()V
    .locals 4

    .line 611
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    const-string v0, "android.permission.CAMERA"

    .line 612
    invoke-virtual {p0, v0}, Llightning/thunder/cleaner/BatterySaver_Black;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    new-array v3, v2, [Ljava/lang/String;

    aput-object v0, v3, v1

    .line 614
    invoke-virtual {p0, v3, v2}, Llightning/thunder/cleaner/BatterySaver_Black;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 619
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p0}, Llightning/thunder/cleaner/BatterySaver_Black;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 622
    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 623
    invoke-virtual {p0, v0, v2}, Llightning/thunder/cleaner/BatterySaver_Black;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const-string v0, "Your System doesn\'t allow to use messaging app."

    .line 627
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public changepic()V
    .locals 16

    move-object/from16 v0, p0

    .line 637
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v2, "button1"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v5, 0x7f0700a0

    const-string v6, "6"

    const v7, 0x7f070085

    const-string v8, "5"

    const v9, 0x7f070071

    const-string v10, "4"

    const v11, 0x7f070067

    const-string v12, "3"

    const v13, 0x7f070095

    const-string v14, "2"

    const v15, 0x7f07005a

    const-string v4, "1"

    if-eqz v1, :cond_0

    .line 639
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->alaram:Landroid/widget/ImageView;

    invoke-virtual {v1, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 641
    :cond_0
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 643
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->alaram:Landroid/widget/ImageView;

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 645
    :cond_1
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 647
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->alaram:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 650
    :cond_2
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 652
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->alaram:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 655
    :cond_3
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 657
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->alaram:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 660
    :cond_4
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 662
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->alaram:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 665
    :cond_5
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 667
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->alaram:Landroid/widget/ImageView;

    const v2, 0x7f070068

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 671
    :cond_6
    :goto_0
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v2, "button2"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 673
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->calculator:Landroid/widget/ImageView;

    invoke-virtual {v1, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 675
    :cond_7
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 677
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->calculator:Landroid/widget/ImageView;

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 679
    :cond_8
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 681
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->calculator:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 684
    :cond_9
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 686
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->calculator:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 689
    :cond_a
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 691
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->calculator:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 694
    :cond_b
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 696
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->calculator:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 699
    :cond_c
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 701
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->calculator:Landroid/widget/ImageView;

    const v2, 0x7f070068

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 706
    :cond_d
    :goto_1
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v2, "button3"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 708
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->playstore:Landroid/widget/ImageView;

    invoke-virtual {v1, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 710
    :cond_e
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 712
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->playstore:Landroid/widget/ImageView;

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 714
    :cond_f
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 716
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->playstore:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 719
    :cond_10
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 721
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->playstore:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 724
    :cond_11
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 726
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->playstore:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 729
    :cond_12
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 731
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->playstore:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 734
    :cond_13
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 736
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->playstore:Landroid/widget/ImageView;

    const v2, 0x7f070068

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 741
    :cond_14
    :goto_2
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v2, "button4"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 743
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->contacts:Landroid/widget/ImageView;

    invoke-virtual {v1, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 745
    :cond_15
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 747
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->contacts:Landroid/widget/ImageView;

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 749
    :cond_16
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 751
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->contacts:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 754
    :cond_17
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 756
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->contacts:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 759
    :cond_18
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 761
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->contacts:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 764
    :cond_19
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 766
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->contacts:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 769
    :cond_1a
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 771
    iget-object v1, v0, Llightning/thunder/cleaner/BatterySaver_Black;->contacts:Landroid/widget/ImageView;

    const v2, 0x7f070068

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1b
    :goto_3
    return-void
.end method

.method public check()V
    .locals 0

    return-void
.end method

.method public contacts()V
    .locals 4

    const-string v0, "content://contacts"

    .line 525
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 526
    invoke-virtual {p0}, Llightning/thunder/cleaner/BatterySaver_Black;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 527
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "vnd.android.cursor.dir/phone_v2"

    .line 528
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    invoke-virtual {v2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 530
    invoke-virtual {p0, v2, v0}, Llightning/thunder/cleaner/BatterySaver_Black;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "Your System doesn\'t allow to use messaging app."

    .line 534
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public map()V
    .locals 6

    .line 587
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v4, ""

    aput-object v4, v1, v2

    const-string v2, "http://maps.google.com/maps?&daddr=%f,%f (%s)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 588
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "com.google.android.apps.maps"

    const-string v5, "com.google.android.maps.MapsActivity"

    .line 589
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    :try_start_0
    invoke-virtual {p0, v1}, Llightning/thunder/cleaner/BatterySaver_Black;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 598
    :catch_0
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 599
    invoke-virtual {p0, v1}, Llightning/thunder/cleaner/BatterySaver_Black;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string v0, "Please install a maps application"

    .line 603
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 472
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/4 p1, 0x2

    new-array v3, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string p2, "data1"

    aput-object p2, v3, p1

    const-string p1, "display_name"

    aput-object p1, v3, v0

    .line 475
    invoke-virtual {p0}, Llightning/thunder/cleaner/BatterySaver_Black;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    .line 477
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 479
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 480
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 482
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 483
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 485
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ZZZ number : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , name : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ContentValues"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.DIAL"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tel:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 489
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/BatterySaver_Black;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 176
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 177
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    const p1, 0x7f0b0040

    .line 178
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/BatterySaver_Black;->setContentView(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0b003f

    .line 180
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/BatterySaver_Black;->setContentView(I)V

    :goto_0
    const p1, 0x7f0800d7

    .line 182
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/BatterySaver_Black;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black;->phone:Landroid/widget/ImageView;

    const p1, 0x7f0800a0

    .line 183
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/BatterySaver_Black;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black;->internet:Landroid/widget/ImageView;

    const p1, 0x7f080108

    .line 184
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/BatterySaver_Black;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black;->setting:Landroid/widget/ImageView;

    const p1, 0x7f0800b3

    .line 185
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/BatterySaver_Black;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black;->messages:Landroid/widget/ImageView;

    const p1, 0x7f0800d9

    .line 186
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/BatterySaver_Black;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black;->playstore:Landroid/widget/ImageView;

    const p1, 0x7f080061

    .line 187
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/BatterySaver_Black;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black;->contacts:Landroid/widget/ImageView;

    const p1, 0x7f080052

    .line 188
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/BatterySaver_Black;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black;->calculator:Landroid/widget/ImageView;

    const p1, 0x7f08003e

    .line 189
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/BatterySaver_Black;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black;->alaram:Landroid/widget/ImageView;

    const p1, 0x7f08004a

    .line 190
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/BatterySaver_Black;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black;->batteryremaning:Landroid/widget/TextView;

    const p1, 0x7f080139

    .line 191
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/BatterySaver_Black;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black;->timeremaning:Landroid/widget/TextView;

    const p1, 0x7f080075

    .line 192
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/BatterySaver_Black;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black;->dots:Landroid/widget/ImageView;

    const p1, 0x7f080073

    .line 193
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/BatterySaver_Black;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black;->disable:Landroid/widget/TextView;

    const/4 p1, 0x0

    const-string v0, "waseembest"

    .line 194
    invoke-virtual {p0, v0, p1}, Llightning/thunder/cleaner/BatterySaver_Black;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 195
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black;->editor:Landroid/content/SharedPreferences$Editor;

    .line 196
    invoke-virtual {p0}, Llightning/thunder/cleaner/BatterySaver_Black;->changepic()V

    .line 197
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Llightning/thunder/cleaner/BatterySaver_Black;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black;->dots:Landroid/widget/ImageView;

    new-instance v0, Llightning/thunder/cleaner/BatterySaver_Black$2;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/BatterySaver_Black$2;-><init>(Llightning/thunder/cleaner/BatterySaver_Black;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black;->alaram:Landroid/widget/ImageView;

    new-instance v0, Llightning/thunder/cleaner/BatterySaver_Black$3;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/BatterySaver_Black$3;-><init>(Llightning/thunder/cleaner/BatterySaver_Black;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black;->calculator:Landroid/widget/ImageView;

    new-instance v0, Llightning/thunder/cleaner/BatterySaver_Black$4;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/BatterySaver_Black$4;-><init>(Llightning/thunder/cleaner/BatterySaver_Black;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black;->phone:Landroid/widget/ImageView;

    new-instance v0, Llightning/thunder/cleaner/BatterySaver_Black$5;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/BatterySaver_Black$5;-><init>(Llightning/thunder/cleaner/BatterySaver_Black;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black;->internet:Landroid/widget/ImageView;

    new-instance v0, Llightning/thunder/cleaner/BatterySaver_Black$6;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/BatterySaver_Black$6;-><init>(Llightning/thunder/cleaner/BatterySaver_Black;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black;->setting:Landroid/widget/ImageView;

    new-instance v0, Llightning/thunder/cleaner/BatterySaver_Black$7;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/BatterySaver_Black$7;-><init>(Llightning/thunder/cleaner/BatterySaver_Black;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black;->messages:Landroid/widget/ImageView;

    new-instance v0, Llightning/thunder/cleaner/BatterySaver_Black$8;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/BatterySaver_Black$8;-><init>(Llightning/thunder/cleaner/BatterySaver_Black;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black;->playstore:Landroid/widget/ImageView;

    new-instance v0, Llightning/thunder/cleaner/BatterySaver_Black$9;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/BatterySaver_Black$9;-><init>(Llightning/thunder/cleaner/BatterySaver_Black;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black;->contacts:Landroid/widget/ImageView;

    new-instance v0, Llightning/thunder/cleaner/BatterySaver_Black$10;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/BatterySaver_Black$10;-><init>(Llightning/thunder/cleaner/BatterySaver_Black;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 804
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 805
    iget-object v0, p0, Llightning/thunder/cleaner/BatterySaver_Black;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Llightning/thunder/cleaner/BatterySaver_Black;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 792
    aget p2, p3, p1

    if-nez p2, :cond_1

    .line 793
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p0, p2, p1}, Llightning/thunder/cleaner/BatterySaver_Black;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const-string p2, "Allow Permission To Use Camera App."

    .line 796
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 778
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 779
    invoke-virtual {p0}, Llightning/thunder/cleaner/BatterySaver_Black;->changepic()V

    return-void
.end method

.method public playstore()V
    .locals 3

    const-string v0, "android.intent.action.VIEW"

    .line 512
    invoke-virtual {p0}, Llightning/thunder/cleaner/BatterySaver_Black;->getPackageName()Ljava/lang/String;

    .line 514
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "market://"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Llightning/thunder/cleaner/BatterySaver_Black;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 516
    :catch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "https://play.google.com/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Llightning/thunder/cleaner/BatterySaver_Black;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
