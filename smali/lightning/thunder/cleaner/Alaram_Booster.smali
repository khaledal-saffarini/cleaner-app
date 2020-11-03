.class public final Llightning/thunder/cleaner/Alaram_Booster;
.super Landroid/content/BroadcastReceiver;
.source "Alaram_Booster.java"


# instance fields
.field editor:Landroid/content/SharedPreferences$Editor;

.field sharedpreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 p2, 0x0

    const-string v0, "waseem"

    .line 22
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Llightning/thunder/cleaner/Alaram_Booster;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 30
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Llightning/thunder/cleaner/Alaram_Booster;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "booster"

    const-string v1, "1"

    .line 31
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    iget-object p1, p0, Llightning/thunder/cleaner/Alaram_Booster;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 35
    :try_start_0
    sget-object p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->optimizebutton:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 36
    sget-object p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->optimizebutton:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    sget-object p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->optimizebutton:Landroid/widget/ImageView;

    const p2, 0x7f0700b2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
