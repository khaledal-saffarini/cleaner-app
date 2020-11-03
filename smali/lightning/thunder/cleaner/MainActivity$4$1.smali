.class Llightning/thunder/cleaner/MainActivity$4$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/MainActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llightning/thunder/cleaner/MainActivity$4;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/MainActivity$4;)V
    .locals 0

    .line 160
    iput-object p1, p0, Llightning/thunder/cleaner/MainActivity$4$1;->this$1:Llightning/thunder/cleaner/MainActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 163
    iget-object v0, p0, Llightning/thunder/cleaner/MainActivity$4$1;->this$1:Llightning/thunder/cleaner/MainActivity$4;

    iget-object v0, v0, Llightning/thunder/cleaner/MainActivity$4;->this$0:Llightning/thunder/cleaner/MainActivity;

    iget-object v1, p0, Llightning/thunder/cleaner/MainActivity$4$1;->this$1:Llightning/thunder/cleaner/MainActivity$4;

    iget-object v1, v1, Llightning/thunder/cleaner/MainActivity$4;->this$0:Llightning/thunder/cleaner/MainActivity;

    invoke-static {v1}, Llightning/thunder/cleaner/MainActivity;->access$000(Llightning/thunder/cleaner/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/services/banners/UnityBanners;->loadBanner(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
