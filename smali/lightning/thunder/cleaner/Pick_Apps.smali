.class public Llightning/thunder/cleaner/Pick_Apps;
.super Landroid/app/Activity;
.source "Pick_Apps.java"


# instance fields
.field addcalculator:Landroid/widget/ImageView;

.field addcamera:Landroid/widget/ImageView;

.field addclock:Landroid/widget/ImageView;

.field addcontact:Landroid/widget/ImageView;

.field addmap:Landroid/widget/ImageView;

.field addplaystore:Landroid/widget/ImageView;

.field editor:Landroid/content/SharedPreferences$Editor;

.field sharedpreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b003c

    .line 31
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Pick_Apps;->setContentView(I)V

    const-string p1, "waseembest"

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, p1, v0}, Llightning/thunder/cleaner/Pick_Apps;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Llightning/thunder/cleaner/Pick_Apps;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 34
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Llightning/thunder/cleaner/Pick_Apps;->editor:Landroid/content/SharedPreferences$Editor;

    const p1, 0x7f080036

    .line 36
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Pick_Apps;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Pick_Apps;->addcontact:Landroid/widget/ImageView;

    const p1, 0x7f080034

    .line 37
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Pick_Apps;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Pick_Apps;->addcamera:Landroid/widget/ImageView;

    const p1, 0x7f08003b

    .line 38
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Pick_Apps;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Pick_Apps;->addplaystore:Landroid/widget/ImageView;

    const p1, 0x7f080033

    .line 39
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Pick_Apps;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Pick_Apps;->addcalculator:Landroid/widget/ImageView;

    const p1, 0x7f080035

    .line 40
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Pick_Apps;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Pick_Apps;->addclock:Landroid/widget/ImageView;

    const p1, 0x7f08003a

    .line 41
    invoke-virtual {p0, p1}, Llightning/thunder/cleaner/Pick_Apps;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llightning/thunder/cleaner/Pick_Apps;->addmap:Landroid/widget/ImageView;

    .line 44
    iget-object p1, p0, Llightning/thunder/cleaner/Pick_Apps;->addcontact:Landroid/widget/ImageView;

    new-instance v0, Llightning/thunder/cleaner/Pick_Apps$1;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Pick_Apps$1;-><init>(Llightning/thunder/cleaner/Pick_Apps;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object p1, p0, Llightning/thunder/cleaner/Pick_Apps;->addplaystore:Landroid/widget/ImageView;

    new-instance v0, Llightning/thunder/cleaner/Pick_Apps$2;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Pick_Apps$2;-><init>(Llightning/thunder/cleaner/Pick_Apps;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object p1, p0, Llightning/thunder/cleaner/Pick_Apps;->addcalculator:Landroid/widget/ImageView;

    new-instance v0, Llightning/thunder/cleaner/Pick_Apps$3;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Pick_Apps$3;-><init>(Llightning/thunder/cleaner/Pick_Apps;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object p1, p0, Llightning/thunder/cleaner/Pick_Apps;->addclock:Landroid/widget/ImageView;

    new-instance v0, Llightning/thunder/cleaner/Pick_Apps$4;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Pick_Apps$4;-><init>(Llightning/thunder/cleaner/Pick_Apps;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object p1, p0, Llightning/thunder/cleaner/Pick_Apps;->addmap:Landroid/widget/ImageView;

    new-instance v0, Llightning/thunder/cleaner/Pick_Apps$5;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Pick_Apps$5;-><init>(Llightning/thunder/cleaner/Pick_Apps;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object p1, p0, Llightning/thunder/cleaner/Pick_Apps;->addcamera:Landroid/widget/ImageView;

    new-instance v0, Llightning/thunder/cleaner/Pick_Apps$6;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Pick_Apps$6;-><init>(Llightning/thunder/cleaner/Pick_Apps;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
