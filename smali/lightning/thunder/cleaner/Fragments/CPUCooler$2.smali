.class Llightning/thunder/cleaner/Fragments/CPUCooler$2;
.super Ljava/lang/Object;
.source "CPUCooler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Fragments/CPUCooler;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Fragments/CPUCooler;)V
    .locals 0

    .line 191
    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$2;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 194
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$2;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    invoke-virtual {p1}, Llightning/thunder/cleaner/Fragments/CPUCooler;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Llightning/thunder/cleaner/Fragments/CPUCooler;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0033

    const/4 v1, 0x0

    .line 195
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f08009d

    .line 197
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v0, 0x7f080131

    .line 199
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "CPU Temperature is Already Normal."

    .line 200
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$2;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    invoke-virtual {v1}, Llightning/thunder/cleaner/Fragments/CPUCooler;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/16 v3, 0x46

    .line 203
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    const/4 v1, 0x1

    .line 204
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 205
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 206
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
