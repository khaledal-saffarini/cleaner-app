.class Llightning/thunder/cleaner/Fragments/CPUCooler$1$1$1;
.super Ljava/lang/Object;
.source "CPUCooler.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 87
    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1$1;->this$2:Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 92
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1$1;->this$2:Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;->this$1:Llightning/thunder/cleaner/Fragments/CPUCooler$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler;->nooverheating:Landroid/widget/TextView;

    const-string v1, "Currently No App causing Overheating"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1$1;->this$2:Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;->this$1:Llightning/thunder/cleaner/Fragments/CPUCooler$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler;->showmain:Landroid/widget/TextView;

    const-string v1, "NORMAL"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1$1;->this$2:Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;->this$1:Llightning/thunder/cleaner/Fragments/CPUCooler$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler;->showmain:Landroid/widget/TextView;

    const-string v1, "#24D149"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1$1;->this$2:Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;->this$1:Llightning/thunder/cleaner/Fragments/CPUCooler$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler;->showsec:Landroid/widget/TextView;

    const-string v2, "CPU Temperature is GOOD"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1$1;->this$2:Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;->this$1:Llightning/thunder/cleaner/Fragments/CPUCooler$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler;->showsec:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1$1;->this$2:Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;->this$1:Llightning/thunder/cleaner/Fragments/CPUCooler$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler;->coolbutton:Landroid/widget/ImageView;

    const v1, 0x7f070089

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1$1;->this$2:Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;->this$1:Llightning/thunder/cleaner/Fragments/CPUCooler$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler;->tempimg:Landroid/widget/ImageView;

    const v1, 0x7f070063

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1$1;->this$2:Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;->this$1:Llightning/thunder/cleaner/Fragments/CPUCooler$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler;->batterytemp:Landroid/widget/TextView;

    const-string v1, "25.3\u00b0C"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1$1;->this$2:Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler$1$1;->this$1:Llightning/thunder/cleaner/Fragments/CPUCooler$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler$1;->this$0:Llightning/thunder/cleaner/Fragments/CPUCooler;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/CPUCooler;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
