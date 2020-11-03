.class public final Llightning/thunder/cleaner/Alaram_Junk;
.super Landroid/content/BroadcastReceiver;
.source "Alaram_Junk.java"


# instance fields
.field editor:Landroid/content/SharedPreferences$Editor;

.field sharedpreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p2, "waseem"

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Llightning/thunder/cleaner/Alaram_Junk;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 26
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Llightning/thunder/cleaner/Alaram_Junk;->editor:Landroid/content/SharedPreferences$Editor;

    const-string p2, "junk"

    const-string v0, "1"

    .line 27
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 28
    iget-object p1, p0, Llightning/thunder/cleaner/Alaram_Junk;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
