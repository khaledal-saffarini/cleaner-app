.class Llightning/thunder/cleaner/Fragments/CPUCooler$1$1$2;
.super Ljava/lang/Object;
.source "CPUCooler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;)V
    .locals 0

    .line 106
    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1$2;->this$2:Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 111
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1$2;->this$2:Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;->this$1:Llightning/thunder/cleaner/Fragments/CPUCooler$1;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1$2;->this$2:Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;->this$1:Llightning/thunder/cleaner/Fragments/CPUCooler$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    invoke-virtual {v0}, Llightning/thunder/cleaner/Fragments/CPUCooler;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Llightning/thunder/cleaner/Fragments/CPUCooler;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0033

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f08009d

    .line 114
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v0, 0x7f080131

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "CPU Temperature is Already Normal."

    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1$2;->this$2:Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;

    iget-object v1, v1, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;->this$1:Llightning/thunder/cleaner/Fragments/CPUCooler$1;

    iget-object v1, v1, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    invoke-virtual {v1}, Llightning/thunder/cleaner/Fragments/CPUCooler;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/16 v3, 0x46

    .line 120
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    const/4 v1, 0x1

    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 122
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 123
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
