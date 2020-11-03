.class Llightning/thunder/cleaner/Fragments/JunkCleaner$1;
.super Ljava/lang/Object;
.source "JunkCleaner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Fragments/JunkCleaner;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Fragments/JunkCleaner;)V
    .locals 0

    .line 133
    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 137
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/JunkCleaner;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v0, "1"

    const-string v1, "junk"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 139
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    invoke-virtual {v0}, Llightning/thunder/cleaner/Fragments/JunkCleaner;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v2, Llightning/thunder/cleaner/Sacnning_Junk;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    iget v2, v2, Llightning/thunder/cleaner/Fragments/JunkCleaner;->alljunk:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    invoke-virtual {v0, p1}, Llightning/thunder/cleaner/Fragments/JunkCleaner;->startActivity(Landroid/content/Intent;)V

    .line 143
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 144
    new-instance v0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1$1;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Fragments/JunkCleaner$1$1;-><init>(Llightning/thunder/cleaner/Fragments/JunkCleaner$1;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 192
    :cond_0
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    invoke-virtual {p1}, Llightning/thunder/cleaner/Fragments/JunkCleaner;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Llightning/thunder/cleaner/Fragments/JunkCleaner;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0033

    const/4 v1, 0x0

    .line 193
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f08009d

    .line 195
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v0, 0x7f080131

    .line 197
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "No Junk Files ALready Cleaned."

    .line 198
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    invoke-virtual {v1}, Llightning/thunder/cleaner/Fragments/JunkCleaner;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/16 v3, 0x46

    .line 201
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    const/4 v1, 0x1

    .line 202
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 203
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 204
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
