.class public Llightning/thunder/cleaner/RecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llightning/thunder/cleaner/RecyclerAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Llightning/thunder/cleaner/RecyclerAdapter$MyViewHolder;",
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

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p1, p0, Llightning/thunder/cleaner/RecyclerAdapter;->apps:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 46
    iget-object v0, p0, Llightning/thunder/cleaner/RecyclerAdapter;->apps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Llightning/thunder/cleaner/RecyclerAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Llightning/thunder/cleaner/RecyclerAdapter;->onBindViewHolder(Llightning/thunder/cleaner/RecyclerAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Llightning/thunder/cleaner/RecyclerAdapter$MyViewHolder;I)V
    .locals 2

    .line 39
    iget-object v0, p0, Llightning/thunder/cleaner/RecyclerAdapter;->apps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Llightning/thunder/cleaner/Classes/Apps;

    .line 40
    iget-object v0, p1, Llightning/thunder/cleaner/RecyclerAdapter$MyViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {p2}, Llightning/thunder/cleaner/Classes/Apps;->getSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object p1, p1, Llightning/thunder/cleaner/RecyclerAdapter$MyViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {p2}, Llightning/thunder/cleaner/Classes/Apps;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Llightning/thunder/cleaner/RecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Llightning/thunder/cleaner/RecyclerAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Llightning/thunder/cleaner/RecyclerAdapter$MyViewHolder;
    .locals 2

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0042

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 33
    new-instance p2, Llightning/thunder/cleaner/RecyclerAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Llightning/thunder/cleaner/RecyclerAdapter$MyViewHolder;-><init>(Llightning/thunder/cleaner/RecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method
