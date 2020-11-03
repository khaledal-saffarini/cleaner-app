.class public Llightning/thunder/cleaner/PagerAdapter/MyPagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "MyPagerAdapter.java"


# instance fields
.field mNumOfTabs:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 21
    iput p2, p0, Llightning/thunder/cleaner/PagerAdapter/MyPagerAdapter;->mNumOfTabs:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 47
    iget v0, p0, Llightning/thunder/cleaner/PagerAdapter/MyPagerAdapter;->mNumOfTabs:I

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 38
    :cond_0
    new-instance p1, Llightning/thunder/cleaner/Fragments/JunkCleaner;

    invoke-direct {p1}, Llightning/thunder/cleaner/Fragments/JunkCleaner;-><init>()V

    return-object p1

    .line 35
    :cond_1
    new-instance p1, Llightning/thunder/cleaner/Fragments/CPUCooler;

    invoke-direct {p1}, Llightning/thunder/cleaner/Fragments/CPUCooler;-><init>()V

    return-object p1

    .line 32
    :cond_2
    new-instance p1, Llightning/thunder/cleaner/Fragments/BatterySaver;

    invoke-direct {p1}, Llightning/thunder/cleaner/Fragments/BatterySaver;-><init>()V

    return-object p1

    .line 29
    :cond_3
    new-instance p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;

    invoke-direct {p1}, Llightning/thunder/cleaner/Fragments/PhoneBooster;-><init>()V

    return-object p1
.end method
