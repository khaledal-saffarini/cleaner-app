.class Llightning/thunder/cleaner/Fragments/BatterySaver$1;
.super Landroid/content/BroadcastReceiver;
.source "BatterySaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llightning/thunder/cleaner/Fragments/BatterySaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Fragments/BatterySaver;)V
    .locals 0

    .line 40
    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "level"

    const/4 v2, 0x0

    move-object/from16 v3, p2

    .line 43
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 45
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->mWaveLoadingView:Lme/itangqi/waveloadingview/WaveLoadingView;

    invoke-virtual {v2, v1}, Lme/itangqi/waveloadingview/WaveLoadingView;->setProgressValue(I)V

    .line 47
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->mWaveLoadingView:Lme/itangqi/waveloadingview/WaveLoadingView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lme/itangqi/waveloadingview/WaveLoadingView;->setCenterTitle(Ljava/lang/String;)V

    const/4 v2, 0x5

    const-string v3, "55"

    const-string v4, "3"

    const-string v5, "15"

    const-string v6, "25"

    const-string v7, "2"

    const-string v8, "1"

    const-string v9, "mode"

    const-string v10, "0"

    if-gt v1, v2, :cond_1

    .line 50
    iget-object v11, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v11, v11, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourn:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v11, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v11, v11, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutes:Landroid/widget/TextView;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v11, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v11, v11, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourp:Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v11, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v11, v11, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutep:Landroid/widget/TextView;

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v11, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v11, v11, Llightning/thunder/cleaner/Fragments/BatterySaver;->houru:Landroid/widget/TextView;

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v11, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v11, v11, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesu:Landroid/widget/TextView;

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v11, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v11, v11, Llightning/thunder/cleaner/Fragments/BatterySaver;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v11, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 60
    iget-object v11, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v11, v11, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourmain:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v11, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v11, v11, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesmain:Landroid/widget/TextView;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_0
    iget-object v11, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v11, v11, Llightning/thunder/cleaner/Fragments/BatterySaver;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v11, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 65
    iget-object v11, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v11, v11, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourmain:Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v11, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v11, v11, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesmain:Landroid/widget/TextView;

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/16 v11, 0xa

    const-string v12, "6"

    const-string v13, "5"

    const-string v14, "30"

    if-le v1, v2, :cond_3

    if-gt v1, v11, :cond_3

    .line 70
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourn:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutes:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourp:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutep:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->houru:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesu:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourmain:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesmain:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_2
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourmain:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesmain:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const/16 v2, 0xf

    const-string v15, "45"

    if-le v1, v11, :cond_5

    if-gt v1, v2, :cond_5

    .line 90
    iget-object v11, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v11, v11, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourn:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v11, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v11, v11, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutes:Landroid/widget/TextView;

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v11, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v11, v11, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourp:Landroid/widget/TextView;

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v11, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v11, v11, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutep:Landroid/widget/TextView;

    const-string v2, "50"

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v11, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v11, v11, Llightning/thunder/cleaner/Fragments/BatterySaver;->houru:Landroid/widget/TextView;

    move-object/from16 p2, v5

    const-string v5, "8"

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v5, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v5, v5, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesu:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v5, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v5, v5, Llightning/thunder/cleaner/Fragments/BatterySaver;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 100
    iget-object v5, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v5, v5, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourmain:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v5, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v5, v5, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesmain:Landroid/widget/TextView;

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_4
    iget-object v5, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v5, v5, Llightning/thunder/cleaner/Fragments/BatterySaver;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 105
    iget-object v5, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v5, v5, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourmain:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesmain:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    move-object/from16 p2, v5

    :cond_6
    :goto_0
    const/16 v2, 0x19

    const/16 v4, 0xf

    if-le v1, v4, :cond_8

    if-gt v1, v2, :cond_8

    .line 110
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourn:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutes:Landroid/widget/TextView;

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourp:Landroid/widget/TextView;

    const-string v5, "4"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutep:Landroid/widget/TextView;

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->houru:Landroid/widget/TextView;

    const-string v5, "12"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesu:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 120
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourmain:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesmain:Landroid/widget/TextView;

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_7
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 125
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourmain:Landroid/widget/TextView;

    const-string v5, "4"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesmain:Landroid/widget/TextView;

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    const/16 v4, 0x23

    const-string v5, "20"

    if-le v1, v2, :cond_a

    if-gt v1, v4, :cond_a

    .line 130
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourn:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutes:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourp:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutep:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->houru:Landroid/widget/TextView;

    const-string v11, "19"

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesu:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 140
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourmain:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesmain:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :cond_9
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 145
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourmain:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesmain:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    const-string v2, "9"

    if-le v1, v4, :cond_c

    const/16 v4, 0x32

    if-gt v1, v4, :cond_c

    .line 150
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourn:Landroid/widget/TextView;

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutes:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourp:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutep:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->houru:Landroid/widget/TextView;

    const-string v7, "22"

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesu:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 160
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourmain:Landroid/widget/TextView;

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesmain:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :cond_b
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 165
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourmain:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesmain:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    const/16 v4, 0x32

    if-le v1, v4, :cond_e

    const/16 v4, 0x41

    if-gt v1, v4, :cond_e

    .line 170
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourn:Landroid/widget/TextView;

    const-string v7, "7"

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutes:Landroid/widget/TextView;

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourp:Landroid/widget/TextView;

    const-string v7, "11"

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutep:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->houru:Landroid/widget/TextView;

    const-string v7, "28"

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesu:Landroid/widget/TextView;

    move-object/from16 v7, p2

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 180
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourmain:Landroid/widget/TextView;

    const-string v11, "7"

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesmain:Landroid/widget/TextView;

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_d
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 185
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourmain:Landroid/widget/TextView;

    const-string v11, "11"

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesmain:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_e
    move-object/from16 v7, p2

    :cond_f
    :goto_1
    const/16 v4, 0x41

    const-string v11, "14"

    const-string v12, "10"

    if-le v1, v4, :cond_11

    const/16 v4, 0x4b

    if-gt v1, v4, :cond_11

    .line 190
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourn:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutes:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourp:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutep:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->houru:Landroid/widget/TextView;

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesu:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 200
    iget-object v4, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v4, v4, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourmain:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesmain:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_10
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 205
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourmain:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesmain:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    const/16 v2, 0x4b

    if-le v1, v2, :cond_13

    const/16 v2, 0x55

    if-gt v1, v2, :cond_13

    .line 210
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourn:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutes:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourp:Landroid/widget/TextView;

    const-string v4, "17"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutep:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->houru:Landroid/widget/TextView;

    const-string v4, "38"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesu:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 220
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourmain:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesmain:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_12
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 225
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourmain:Landroid/widget/TextView;

    const-string v4, "17"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v2, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesmain:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    const/16 v2, 0x55

    if-le v1, v2, :cond_15

    const/16 v2, 0x64

    if-gt v1, v2, :cond_15

    .line 230
    iget-object v1, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v1, v1, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourn:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v1, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v1, v1, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutes:Landroid/widget/TextView;

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v1, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v1, v1, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourp:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v1, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v1, v1, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutep:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v1, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v1, v1, Llightning/thunder/cleaner/Fragments/BatterySaver;->houru:Landroid/widget/TextView;

    const-string v2, "60"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v1, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v1, v1, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesu:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v1, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v1, v1, Llightning/thunder/cleaner/Fragments/BatterySaver;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 240
    iget-object v1, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v1, v1, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourmain:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v1, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v1, v1, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesmain:Landroid/widget/TextView;

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :cond_14
    iget-object v1, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v1, v1, Llightning/thunder/cleaner/Fragments/BatterySaver;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 245
    iget-object v1, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v1, v1, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourmain:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v1, v0, Llightning/thunder/cleaner/Fragments/BatterySaver$1;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v1, v1, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutesmain:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    return-void
.end method
