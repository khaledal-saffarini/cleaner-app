.class Llightning/thunder/cleaner/BatterySaver_Black$3;
.super Ljava/lang/Object;
.source "BatterySaver_Black.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/BatterySaver_Black;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llightning/thunder/cleaner/BatterySaver_Black;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/BatterySaver_Black;)V
    .locals 0

    .line 228
    iput-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$3;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 232
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$3;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    iget-object p1, p1, Llightning/thunder/cleaner/BatterySaver_Black;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "1"

    const-string v1, "button"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 233
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$3;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    iget-object p1, p1, Llightning/thunder/cleaner/BatterySaver_Black;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 235
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$3;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    iget-object p1, p1, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "button1"

    const-string v2, "0"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 237
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Llightning/thunder/cleaner/BatterySaver_Black$3;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    const-class v1, Llightning/thunder/cleaner/Pick_Apps;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    iget-object v0, p0, Llightning/thunder/cleaner/BatterySaver_Black$3;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    invoke-virtual {v0, p1}, Llightning/thunder/cleaner/BatterySaver_Black;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 240
    :cond_0
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$3;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    iget-object p1, p1, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 242
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$3;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    invoke-virtual {p1}, Llightning/thunder/cleaner/BatterySaver_Black;->playstore()V

    goto :goto_0

    .line 244
    :cond_1
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$3;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    iget-object p1, p1, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 246
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$3;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    invoke-virtual {p1}, Llightning/thunder/cleaner/BatterySaver_Black;->calculator()V

    goto :goto_0

    .line 248
    :cond_2
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$3;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    iget-object p1, p1, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 250
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$3;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    invoke-virtual {p1}, Llightning/thunder/cleaner/BatterySaver_Black;->alaram()V

    goto :goto_0

    .line 252
    :cond_3
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$3;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    iget-object p1, p1, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 254
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$3;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    invoke-virtual {p1}, Llightning/thunder/cleaner/BatterySaver_Black;->contacts()V

    goto :goto_0

    .line 256
    :cond_4
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$3;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    iget-object p1, p1, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 258
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$3;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    invoke-virtual {p1}, Llightning/thunder/cleaner/BatterySaver_Black;->map()V

    goto :goto_0

    .line 260
    :cond_5
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$3;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    iget-object p1, p1, Llightning/thunder/cleaner/BatterySaver_Black;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 262
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$3;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    invoke-virtual {p1}, Llightning/thunder/cleaner/BatterySaver_Black;->camera()V

    :cond_6
    :goto_0
    return-void
.end method
