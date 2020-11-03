.class Llightning/thunder/cleaner/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/unity3d/services/banners/IUnityBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llightning/thunder/cleaner/MainActivity;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/MainActivity;)V
    .locals 0

    .line 107
    iput-object p1, p0, Llightning/thunder/cleaner/MainActivity$2;->this$0:Llightning/thunder/cleaner/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnityBannerClick(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUnityBannerError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUnityBannerHide(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUnityBannerLoaded(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 110
    iget-object p1, p0, Llightning/thunder/cleaner/MainActivity$2;->this$0:Llightning/thunder/cleaner/MainActivity;

    const v0, 0x7f08002f

    invoke-virtual {p1, v0}, Llightning/thunder/cleaner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 111
    iget-object p1, p0, Llightning/thunder/cleaner/MainActivity$2;->this$0:Llightning/thunder/cleaner/MainActivity;

    invoke-virtual {p1, v0}, Llightning/thunder/cleaner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onUnityBannerShow(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUnityBannerUnloaded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
