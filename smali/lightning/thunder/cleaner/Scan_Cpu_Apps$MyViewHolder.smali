.class public Llightning/thunder/cleaner/Scan_Cpu_Apps$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "Scan_Cpu_Apps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llightning/thunder/cleaner/Scan_Cpu_Apps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field image:Landroid/widget/ImageView;

.field public size:Landroid/widget/TextView;

.field final synthetic this$0:Llightning/thunder/cleaner/Scan_Cpu_Apps;


# direct methods
.method public constructor <init>(Llightning/thunder/cleaner/Scan_Cpu_Apps;Landroid/view/View;)V
    .locals 0

    .line 65
    iput-object p1, p0, Llightning/thunder/cleaner/Scan_Cpu_Apps$MyViewHolder;->this$0:Llightning/thunder/cleaner/Scan_Cpu_Apps;

    .line 66
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f080046

    .line 67
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Scan_Cpu_Apps$MyViewHolder;->size:Landroid/widget/TextView;

    const p1, 0x7f080042

    .line 68
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Scan_Cpu_Apps$MyViewHolder;->image:Landroid/widget/ImageView;

    return-void
.end method
