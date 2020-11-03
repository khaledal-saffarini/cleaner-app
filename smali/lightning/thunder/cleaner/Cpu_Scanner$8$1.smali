.class Llightning/thunder/cleaner/Cpu_Scanner$8$1;
.super Ljava/lang/Object;
.source "Cpu_Scanner.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Cpu_Scanner$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llightning/thunder/cleaner/Cpu_Scanner$8;

.field final synthetic val$rippleBackground:Lcom/skyfishjy/library/RippleBackground;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Cpu_Scanner$8;Lcom/skyfishjy/library/RippleBackground;)V
    .locals 0

    .line 266
    iput-object p1, p0, Llightning/thunder/cleaner/Cpu_Scanner$8$1;->this$1:Llightning/thunder/cleaner/Cpu_Scanner$8;

    iput-object p2, p0, Llightning/thunder/cleaner/Cpu_Scanner$8$1;->val$rippleBackground:Lcom/skyfishjy/library/RippleBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 276
    iget-object p1, p0, Llightning/thunder/cleaner/Cpu_Scanner$8$1;->val$rippleBackground:Lcom/skyfishjy/library/RippleBackground;

    invoke-virtual {p1}, Lcom/skyfishjy/library/RippleBackground;->stopRippleAnimation()V

    .line 278
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 279
    new-instance v0, Llightning/thunder/cleaner/Cpu_Scanner$8$1$1;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Cpu_Scanner$8$1$1;-><init>(Llightning/thunder/cleaner/Cpu_Scanner$8$1;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 290
    iget-object p1, p0, Llightning/thunder/cleaner/Cpu_Scanner$8$1;->this$1:Llightning/thunder/cleaner/Cpu_Scanner$8;

    iget-object p1, p1, Llightning/thunder/cleaner/Cpu_Scanner$8;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    iget-object v0, p0, Llightning/thunder/cleaner/Cpu_Scanner$8$1;->this$1:Llightning/thunder/cleaner/Cpu_Scanner$8;

    iget-object v0, v0, Llightning/thunder/cleaner/Cpu_Scanner$8;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    invoke-static {v0}, Llightning/thunder/cleaner/Cpu_Scanner;->access$000(Llightning/thunder/cleaner/Cpu_Scanner;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V

    .line 295
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 296
    new-instance v0, Llightning/thunder/cleaner/Cpu_Scanner$8$1$2;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Cpu_Scanner$8$1$2;-><init>(Llightning/thunder/cleaner/Cpu_Scanner$8$1;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 269
    iget-object p1, p0, Llightning/thunder/cleaner/Cpu_Scanner$8$1;->this$1:Llightning/thunder/cleaner/Cpu_Scanner$8;

    iget-object p1, p1, Llightning/thunder/cleaner/Cpu_Scanner$8;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    iget-object p1, p1, Llightning/thunder/cleaner/Cpu_Scanner;->img_animation:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 270
    iget-object p1, p0, Llightning/thunder/cleaner/Cpu_Scanner$8$1;->this$1:Llightning/thunder/cleaner/Cpu_Scanner$8;

    iget-object p1, p1, Llightning/thunder/cleaner/Cpu_Scanner$8;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    iget-object p1, p1, Llightning/thunder/cleaner/Cpu_Scanner;->img_animation:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method
