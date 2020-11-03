.class Llightning/thunder/cleaner/Fragments/PhoneBooster$1;
.super Ljava/lang/Object;
.source "PhoneBooster.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Fragments/PhoneBooster;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Fragments/PhoneBooster;)V
    .locals 0

    .line 145
    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$1;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 149
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$1;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v0, "1"

    const-string v1, "booster"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$1;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    invoke-virtual {p1}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->optimize()V

    .line 152
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$1;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object v2, p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->editor:Landroid/content/SharedPreferences$Editor;

    .line 153
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$1;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "0"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$1;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 157
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$1;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    invoke-virtual {v1}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Llightning/thunder/cleaner/Alaram_Booster;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    iget-object v1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$1;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    invoke-virtual {v1}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v0, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 162
    iget-object v1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$1;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    invoke-virtual {v1}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x186a0

    add-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$1;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    invoke-virtual {p1}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v1}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0b0033

    const/4 v2, 0x0

    .line 169
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f08009d

    .line 171
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v1, 0x7f080131

    .line 173
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "Phone Is Aleady Optimized"

    .line 174
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    new-instance v1, Landroid/widget/Toast;

    iget-object v2, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$1;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    invoke-virtual {v2}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x10

    const/16 v3, 0x46

    .line 177
    invoke-virtual {v1, v2, v0, v3}, Landroid/widget/Toast;->setGravity(III)V

    const/4 v0, 0x1

    .line 178
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 179
    invoke-virtual {v1, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 180
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
