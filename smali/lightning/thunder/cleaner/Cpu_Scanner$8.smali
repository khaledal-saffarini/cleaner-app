.class Llightning/thunder/cleaner/Cpu_Scanner$8;
.super Ljava/lang/Object;
.source "Cpu_Scanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Cpu_Scanner;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llightning/thunder/cleaner/Cpu_Scanner;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Cpu_Scanner;)V
    .locals 0

    .line 244
    iput-object p1, p0, Llightning/thunder/cleaner/Cpu_Scanner$8;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 247
    iget-object v0, p0, Llightning/thunder/cleaner/Cpu_Scanner$8;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    const-string v1, "Closes System Services like Bluetooth,Screen Rotation,Sync etc."

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Llightning/thunder/cleaner/Cpu_Scanner;->add(Ljava/lang/String;I)V

    .line 248
    iget-object v0, p0, Llightning/thunder/cleaner/Cpu_Scanner$8;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llightning/thunder/cleaner/Cpu_Scanner;->remove(I)V

    .line 250
    iget-object v0, p0, Llightning/thunder/cleaner/Cpu_Scanner$8;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    const v2, 0x7f080063

    invoke-virtual {v0, v2}, Llightning/thunder/cleaner/Cpu_Scanner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/skyfishjy/library/RippleBackground;

    .line 251
    iget-object v2, p0, Llightning/thunder/cleaner/Cpu_Scanner$8;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    const v3, 0x7f080054

    invoke-virtual {v2, v3}, Llightning/thunder/cleaner/Cpu_Scanner;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 252
    invoke-virtual {v0}, Lcom/skyfishjy/library/RippleBackground;->startRippleAnimation()V

    .line 254
    iget-object v2, p0, Llightning/thunder/cleaner/Cpu_Scanner$8;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    iget-object v2, v2, Llightning/thunder/cleaner/Cpu_Scanner;->img_animation:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    iget-object v2, p0, Llightning/thunder/cleaner/Cpu_Scanner$8;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    iget-object v2, v2, Llightning/thunder/cleaner/Cpu_Scanner;->img_animation:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 256
    iget-object v1, p0, Llightning/thunder/cleaner/Cpu_Scanner$8;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    iget-object v1, v1, Llightning/thunder/cleaner/Cpu_Scanner;->cpu:Landroid/widget/ImageView;

    const v2, 0x7f070096

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    iget-object v1, p0, Llightning/thunder/cleaner/Cpu_Scanner$8;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    iget-object v1, v1, Llightning/thunder/cleaner/Cpu_Scanner;->scanner:Landroid/widget/ImageView;

    const v2, 0x7f0700c7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 258
    iget-object v1, p0, Llightning/thunder/cleaner/Cpu_Scanner$8;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    invoke-virtual {v1}, Llightning/thunder/cleaner/Cpu_Scanner;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020003

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    .line 259
    iget-object v2, p0, Llightning/thunder/cleaner/Cpu_Scanner$8;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    iget-object v2, v2, Llightning/thunder/cleaner/Cpu_Scanner;->scanner:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    const-wide/16 v2, 0xbb8

    .line 260
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 261
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 263
    iget-object v2, p0, Llightning/thunder/cleaner/Cpu_Scanner$8;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    iget-object v2, v2, Llightning/thunder/cleaner/Cpu_Scanner;->rel:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 265
    iget-object v2, p0, Llightning/thunder/cleaner/Cpu_Scanner$8;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    iget-object v2, v2, Llightning/thunder/cleaner/Cpu_Scanner;->cooledcpu:Landroid/widget/TextView;

    const-string v3, "Cooled CPU to 25.3\u00b0C"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    new-instance v2, Llightning/thunder/cleaner/Cpu_Scanner$8$1;

    invoke-direct {v2, p0, v0}, Llightning/thunder/cleaner/Cpu_Scanner$8$1;-><init>(Llightning/thunder/cleaner/Cpu_Scanner$8;Lcom/skyfishjy/library/RippleBackground;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
