.class Llightning/thunder/cleaner/Cpu_Scanner$8$1$1;
.super Ljava/lang/Object;
.source "Cpu_Scanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Cpu_Scanner$8$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Llightning/thunder/cleaner/Cpu_Scanner$8$1;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Cpu_Scanner$8$1;)V
    .locals 0

    .line 279
    iput-object p1, p0, Llightning/thunder/cleaner/Cpu_Scanner$8$1$1;->this$2:Llightning/thunder/cleaner/Cpu_Scanner$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 282
    iget-object v0, p0, Llightning/thunder/cleaner/Cpu_Scanner$8$1$1;->this$2:Llightning/thunder/cleaner/Cpu_Scanner$8$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Cpu_Scanner$8$1;->this$1:Llightning/thunder/cleaner/Cpu_Scanner$8;

    iget-object v0, v0, Llightning/thunder/cleaner/Cpu_Scanner$8;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    invoke-static {v0}, Llightning/thunder/cleaner/Cpu_Scanner;->access$000(Llightning/thunder/cleaner/Cpu_Scanner;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Llightning/thunder/cleaner/Cpu_Scanner$8$1$1;->this$2:Llightning/thunder/cleaner/Cpu_Scanner$8$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Cpu_Scanner$8$1;->this$1:Llightning/thunder/cleaner/Cpu_Scanner$8;

    iget-object v0, v0, Llightning/thunder/cleaner/Cpu_Scanner$8;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    iget-object v1, p0, Llightning/thunder/cleaner/Cpu_Scanner$8$1$1;->this$2:Llightning/thunder/cleaner/Cpu_Scanner$8$1;

    iget-object v1, v1, Llightning/thunder/cleaner/Cpu_Scanner$8$1;->this$1:Llightning/thunder/cleaner/Cpu_Scanner$8;

    iget-object v1, v1, Llightning/thunder/cleaner/Cpu_Scanner$8;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    invoke-static {v1}, Llightning/thunder/cleaner/Cpu_Scanner;->access$000(Llightning/thunder/cleaner/Cpu_Scanner;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Llightning/thunder/cleaner/Cpu_Scanner$8$1$1;->this$2:Llightning/thunder/cleaner/Cpu_Scanner$8$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Cpu_Scanner$8$1;->this$1:Llightning/thunder/cleaner/Cpu_Scanner$8;

    iget-object v0, v0, Llightning/thunder/cleaner/Cpu_Scanner$8;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    invoke-static {v0}, Llightning/thunder/cleaner/Cpu_Scanner;->access$100(Llightning/thunder/cleaner/Cpu_Scanner;)V

    :cond_0
    return-void
.end method
