.class public Llightning/thunder/cleaner/Fragments/JunkCleaner;
.super Landroidx/fragment/app/Fragment;
.source "JunkCleaner.java"


# static fields
.field public static mainbutton:Landroid/widget/ImageView;


# instance fields
.field alljunk:I

.field cache:Landroid/widget/ImageView;

.field cachetext:Landroid/widget/TextView;

.field checkvar:I

.field editor:Landroid/content/SharedPreferences$Editor;

.field mainbrush:Landroid/widget/ImageView;

.field maintext:Landroid/widget/TextView;

.field residue:Landroid/widget/ImageView;

.field residuetext:Landroid/widget/TextView;

.field sharedpreferences:Landroid/content/SharedPreferences;

.field system:Landroid/widget/ImageView;

.field systemtext:Landroid/widget/TextView;

.field temp:Landroid/widget/ImageView;

.field temptext:Landroid/widget/TextView;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->checkvar:I

    return-void
.end method


# virtual methods
.method public getUserVisibleHint()Z
    .locals 1

    .line 253
    invoke-virtual {p0}, Llightning/thunder/cleaner/Fragments/JunkCleaner;->getUserVisibleHint()Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const-string p3, "1"

    const-string v0, "0 MB"

    const-string v1, "#F22938"

    const-string v2, " MB"

    const-string v3, "#284a5e"

    const/4 v4, 0x0

    const v5, 0x7f0b0031

    .line 50
    invoke-virtual {p1, v5, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->view:Landroid/view/View;

    const p2, 0x7f0800ae

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->mainbrush:Landroid/widget/ImageView;

    .line 52
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->view:Landroid/view/View;

    const p2, 0x7f0800af

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sput-object p1, Llightning/thunder/cleaner/Fragments/JunkCleaner;->mainbutton:Landroid/widget/ImageView;

    .line 53
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->view:Landroid/view/View;

    const p2, 0x7f080050

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->cache:Landroid/widget/ImageView;

    .line 54
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->view:Landroid/view/View;

    const p2, 0x7f080129

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->temp:Landroid/widget/ImageView;

    .line 55
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->view:Landroid/view/View;

    const p2, 0x7f0800e3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->residue:Landroid/widget/ImageView;

    .line 56
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->view:Landroid/view/View;

    const p2, 0x7f080122

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->system:Landroid/widget/ImageView;

    .line 59
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->view:Landroid/view/View;

    const p2, 0x7f0800b0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->maintext:Landroid/widget/TextView;

    .line 60
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->view:Landroid/view/View;

    const p2, 0x7f080051

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->cachetext:Landroid/widget/TextView;

    .line 61
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->view:Landroid/view/View;

    const p2, 0x7f08012b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->temptext:Landroid/widget/TextView;

    .line 62
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->view:Landroid/view/View;

    const p2, 0x7f0800e4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->residuetext:Landroid/widget/TextView;

    .line 63
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->view:Landroid/view/View;

    const p2, 0x7f080123

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->systemtext:Landroid/widget/TextView;

    .line 67
    :try_start_0
    invoke-virtual {p0}, Llightning/thunder/cleaner/Fragments/JunkCleaner;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "waseem"

    invoke-virtual {p1, p2, v4}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string p2, "junk"

    .line 70
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->mainbrush:Landroid/widget/ImageView;

    const p2, 0x7f07009e

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    sget-object p1, Llightning/thunder/cleaner/Fragments/JunkCleaner;->mainbutton:Landroid/widget/ImageView;

    const p2, 0x7f07006e

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->cache:Landroid/widget/ImageView;

    const p2, 0x7f070065

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->temp:Landroid/widget/ImageView;

    const p2, 0x7f0700c8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->residue:Landroid/widget/ImageView;

    const p2, 0x7f0700bc

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->system:Landroid/widget/ImageView;

    const p2, 0x7f0700c4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 p2, 0x14

    .line 79
    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    .line 81
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    const/16 p3, 0xf

    .line 82
    invoke-virtual {p2, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    add-int/lit8 p2, p2, 0xa

    .line 84
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x1e

    .line 85
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p3

    .line 87
    new-instance p3, Ljava/util/Random;

    invoke-direct {p3}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x19

    .line 88
    invoke-virtual {p3, v3}, Ljava/util/Random;->nextInt(I)I

    move-result p3

    add-int/lit8 p3, p3, 0xa

    add-int v3, p1, p2

    add-int/2addr v3, v0

    add-int/2addr v3, p3

    .line 90
    iput v3, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->alljunk:I

    .line 92
    iget-object v3, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->maintext:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->alljunk:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v3, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->maintext:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v3, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->cachetext:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->cachetext:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->temptext:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->temptext:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->residuetext:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->residuetext:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->systemtext:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->systemtext:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->mainbrush:Landroid/widget/ImageView;

    const p2, 0x7f07009d

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    sget-object p1, Llightning/thunder/cleaner/Fragments/JunkCleaner;->mainbutton:Landroid/widget/ImageView;

    const p2, 0x7f07006f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->cache:Landroid/widget/ImageView;

    const p2, 0x7f070066

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->temp:Landroid/widget/ImageView;

    const p2, 0x7f0700c9

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->residue:Landroid/widget/ImageView;

    const p2, 0x7f0700bd

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->system:Landroid/widget/ImageView;

    const p2, 0x7f0700c5

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->maintext:Landroid/widget/TextView;

    const-string p2, "CRYSTAL CLEAR"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->maintext:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->cachetext:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->cachetext:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->temptext:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->temptext:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->residuetext:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->residuetext:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->systemtext:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->systemtext:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    :goto_0
    sget-object p1, Llightning/thunder/cleaner/Fragments/JunkCleaner;->mainbutton:Landroid/widget/ImageView;

    new-instance p2, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;

    invoke-direct {p2, p0}, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;-><init>(Llightning/thunder/cleaner/Fragments/JunkCleaner;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :catch_0
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->view:Landroid/view/View;

    return-object p1
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 259
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 263
    sget-object p1, Llightning/thunder/cleaner/MainActivity;->name:Landroid/widget/TextView;

    const-string v0, "Junk Cleaner"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
