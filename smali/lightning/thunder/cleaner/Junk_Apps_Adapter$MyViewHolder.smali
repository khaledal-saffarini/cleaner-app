.class public Llightning/thunder/cleaner/Junk_Apps_Adapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "Junk_Apps_Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llightning/thunder/cleaner/Junk_Apps_Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field image:Landroid/widget/ImageView;

.field public size:Landroid/widget/TextView;

.field final synthetic this$0:Llightning/thunder/cleaner/Junk_Apps_Adapter;


# direct methods
.method public constructor <init>(Llightning/thunder/cleaner/Junk_Apps_Adapter;Landroid/view/View;)V
    .locals 0

    .line 52
    iput-object p1, p0, Llightning/thunder/cleaner/Junk_Apps_Adapter$MyViewHolder;->this$0:Llightning/thunder/cleaner/Junk_Apps_Adapter;

    .line 53
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f080046

    .line 54
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Junk_Apps_Adapter$MyViewHolder;->size:Landroid/widget/TextView;

    const p1, 0x7f080042

    .line 55
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Junk_Apps_Adapter$MyViewHolder;->image:Landroid/widget/ImageView;

    return-void
.end method
