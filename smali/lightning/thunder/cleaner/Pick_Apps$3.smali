.class Llightning/thunder/cleaner/Pick_Apps$3;
.super Ljava/lang/Object;
.source "Pick_Apps.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Pick_Apps;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llightning/thunder/cleaner/Pick_Apps;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Pick_Apps;)V
    .locals 0

    .line 130
    iput-object p1, p0, Llightning/thunder/cleaner/Pick_Apps$3;->this$0:Llightning/thunder/cleaner/Pick_Apps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 134
    iget-object p1, p0, Llightning/thunder/cleaner/Pick_Apps$3;->this$0:Llightning/thunder/cleaner/Pick_Apps;

    iget-object p1, p1, Llightning/thunder/cleaner/Pick_Apps;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v0, "button1"

    const-string v1, "l"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Llightning/thunder/cleaner/Pick_Apps$3;->this$0:Llightning/thunder/cleaner/Pick_Apps;

    iget-object p1, p1, Llightning/thunder/cleaner/Pick_Apps;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v3, "button2"

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Llightning/thunder/cleaner/Pick_Apps$3;->this$0:Llightning/thunder/cleaner/Pick_Apps;

    iget-object p1, p1, Llightning/thunder/cleaner/Pick_Apps;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v4, "button3"

    invoke-interface {p1, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Llightning/thunder/cleaner/Pick_Apps$3;->this$0:Llightning/thunder/cleaner/Pick_Apps;

    iget-object p1, p1, Llightning/thunder/cleaner/Pick_Apps;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v5, "button4"

    invoke-interface {p1, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 136
    iget-object p1, p0, Llightning/thunder/cleaner/Pick_Apps$3;->this$0:Llightning/thunder/cleaner/Pick_Apps;

    iget-object p1, p1, Llightning/thunder/cleaner/Pick_Apps;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "button"

    const-string v6, "1"

    invoke-interface {p1, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Llightning/thunder/cleaner/Pick_Apps$3;->this$0:Llightning/thunder/cleaner/Pick_Apps;

    iget-object p1, p1, Llightning/thunder/cleaner/Pick_Apps;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    iget-object p1, p0, Llightning/thunder/cleaner/Pick_Apps$3;->this$0:Llightning/thunder/cleaner/Pick_Apps;

    iget-object p1, p1, Llightning/thunder/cleaner/Pick_Apps;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 139
    :cond_0
    iget-object p1, p0, Llightning/thunder/cleaner/Pick_Apps$3;->this$0:Llightning/thunder/cleaner/Pick_Apps;

    iget-object p1, p1, Llightning/thunder/cleaner/Pick_Apps;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 140
    iget-object p1, p0, Llightning/thunder/cleaner/Pick_Apps$3;->this$0:Llightning/thunder/cleaner/Pick_Apps;

    iget-object p1, p1, Llightning/thunder/cleaner/Pick_Apps;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    iget-object p1, p0, Llightning/thunder/cleaner/Pick_Apps$3;->this$0:Llightning/thunder/cleaner/Pick_Apps;

    iget-object p1, p1, Llightning/thunder/cleaner/Pick_Apps;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 142
    :cond_1
    iget-object p1, p0, Llightning/thunder/cleaner/Pick_Apps$3;->this$0:Llightning/thunder/cleaner/Pick_Apps;

    iget-object p1, p1, Llightning/thunder/cleaner/Pick_Apps;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 143
    iget-object p1, p0, Llightning/thunder/cleaner/Pick_Apps$3;->this$0:Llightning/thunder/cleaner/Pick_Apps;

    iget-object p1, p1, Llightning/thunder/cleaner/Pick_Apps;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    iget-object p1, p0, Llightning/thunder/cleaner/Pick_Apps$3;->this$0:Llightning/thunder/cleaner/Pick_Apps;

    iget-object p1, p1, Llightning/thunder/cleaner/Pick_Apps;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 145
    :cond_2
    iget-object p1, p0, Llightning/thunder/cleaner/Pick_Apps$3;->this$0:Llightning/thunder/cleaner/Pick_Apps;

    iget-object p1, p1, Llightning/thunder/cleaner/Pick_Apps;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 146
    iget-object p1, p0, Llightning/thunder/cleaner/Pick_Apps$3;->this$0:Llightning/thunder/cleaner/Pick_Apps;

    iget-object p1, p1, Llightning/thunder/cleaner/Pick_Apps;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 147
    iget-object p1, p0, Llightning/thunder/cleaner/Pick_Apps$3;->this$0:Llightning/thunder/cleaner/Pick_Apps;

    iget-object p1, p1, Llightning/thunder/cleaner/Pick_Apps;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    :cond_3
    :goto_0
    iget-object p1, p0, Llightning/thunder/cleaner/Pick_Apps$3;->this$0:Llightning/thunder/cleaner/Pick_Apps;

    invoke-virtual {p1}, Llightning/thunder/cleaner/Pick_Apps;->finish()V

    goto :goto_1

    .line 155
    :cond_4
    iget-object p1, p0, Llightning/thunder/cleaner/Pick_Apps$3;->this$0:Llightning/thunder/cleaner/Pick_Apps;

    invoke-virtual {p1}, Llightning/thunder/cleaner/Pick_Apps;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0033

    const/4 v1, 0x0

    .line 156
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f08009d

    .line 158
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v0, 0x7f080131

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "This App Is Already Added"

    .line 161
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Llightning/thunder/cleaner/Pick_Apps$3;->this$0:Llightning/thunder/cleaner/Pick_Apps;

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/16 v3, 0x46

    .line 164
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    const/4 v1, 0x1

    .line 165
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 166
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 167
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
