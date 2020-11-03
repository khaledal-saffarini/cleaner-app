.class public Llightning/thunder/cleaner/Junk_Apps_Adapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "Junk_Apps_Adapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llightning/thunder/cleaner/Junk_Apps_Adapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Llightning/thunder/cleaner/Junk_Apps_Adapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llightning/thunder/cleaner/Classes/Apps;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Llightning/thunder/cleaner/Classes/Apps;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    iput-object p1, p0, Llightning/thunder/cleaner/Junk_Apps_Adapter;->apps:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 45
    iget-object v0, p0, Llightning/thunder/cleaner/Junk_Apps_Adapter;->apps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Llightning/thunder/cleaner/Junk_Apps_Adapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Llightning/thunder/cleaner/Junk_Apps_Adapter;->onBindViewHolder(Llightning/thunder/cleaner/Junk_Apps_Adapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Llightning/thunder/cleaner/Junk_Apps_Adapter$MyViewHolder;I)V
    .locals 2

    .line 38
    iget-object v0, p0, Llightning/thunder/cleaner/Junk_Apps_Adapter;->apps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Llightning/thunder/cleaner/Classes/Apps;

    .line 39
    iget-object v0, p1, Llightning/thunder/cleaner/Junk_Apps_Adapter$MyViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {p2}, Llightning/thunder/cleaner/Classes/Apps;->getSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object p1, p1, Llightning/thunder/cleaner/Junk_Apps_Adapter$MyViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {p2}, Llightning/thunder/cleaner/Classes/Apps;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Llightning/thunder/cleaner/Junk_Apps_Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Llightning/thunder/cleaner/Junk_Apps_Adapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Llightning/thunder/cleaner/Junk_Apps_Adapter$MyViewHolder;
    .locals 2

    .line 31
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0032

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 32
    new-instance p2, Llightning/thunder/cleaner/Junk_Apps_Adapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Llightning/thunder/cleaner/Junk_Apps_Adapter$MyViewHolder;-><init>(Llightning/thunder/cleaner/Junk_Apps_Adapter;Landroid/view/View;)V

    return-object p2
.end method
