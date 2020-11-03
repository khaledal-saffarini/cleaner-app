.class public Llightning/thunder/cleaner/PowerAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PowerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llightning/thunder/cleaner/PowerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public size:Landroid/widget/TextView;

.field final synthetic this$0:Llightning/thunder/cleaner/PowerAdapter;


# direct methods
.method public constructor <init>(Llightning/thunder/cleaner/PowerAdapter;Landroid/view/View;)V
    .locals 0

    .line 53
    iput-object p1, p0, Llightning/thunder/cleaner/PowerAdapter$MyViewHolder;->this$0:Llightning/thunder/cleaner/PowerAdapter;

    .line 54
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0800a5

    .line 55
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/PowerAdapter$MyViewHolder;->size:Landroid/widget/TextView;

    return-void
.end method
