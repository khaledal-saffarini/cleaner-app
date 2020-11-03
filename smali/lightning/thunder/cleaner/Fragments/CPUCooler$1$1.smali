.class Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;
.super Ljava/lang/Object;
.source "CPUCooler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Fragments/CPUCooler$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llightning/thunder/cleaner/Fragments/CPUCooler$1;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Fragments/CPUCooler$1;)V
    .locals 0

    .line 78
    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;->this$1:Llightning/thunder/cleaner/Fragments/CPUCooler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 83
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;->this$1:Llightning/thunder/cleaner/Fragments/CPUCooler$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    invoke-virtual {v0}, Llightning/thunder/cleaner/Fragments/CPUCooler;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Llightning/thunder/cleaner/Cpu_Scanner;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;->this$1:Llightning/thunder/cleaner/Fragments/CPUCooler$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    invoke-virtual {v0, p1}, Llightning/thunder/cleaner/Fragments/CPUCooler;->startActivity(Landroid/content/Intent;)V

    .line 86
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 87
    new-instance v0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1$1;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1$1;-><init>(Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;->this$1:Llightning/thunder/cleaner/Fragments/CPUCooler$1;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/CPUCooler;->coolbutton:Landroid/widget/ImageView;

    new-instance v0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1$2;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1$2;-><init>(Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
