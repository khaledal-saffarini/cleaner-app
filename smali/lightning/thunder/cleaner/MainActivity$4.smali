.class Llightning/thunder/cleaner/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/MainActivity;Landroid/os/Handler;)V
    .locals 0

    .line 154
    iput-object p1, p0, Llightning/thunder/cleaner/MainActivity$4;->this$0:Llightning/thunder/cleaner/MainActivity;

    iput-object p2, p0, Llightning/thunder/cleaner/MainActivity$4;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 160
    iget-object v0, p0, Llightning/thunder/cleaner/MainActivity$4;->val$handler:Landroid/os/Handler;

    new-instance v1, Llightning/thunder/cleaner/MainActivity$4$1;

    invoke-direct {v1, p0}, Llightning/thunder/cleaner/MainActivity$4$1;-><init>(Llightning/thunder/cleaner/MainActivity$4;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
