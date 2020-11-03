.class Llightning/thunder/cleaner/Cpu_Scanner$1;
.super Ljava/lang/Object;
.source "Cpu_Scanner.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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

    .line 146
    iput-object p1, p0, Llightning/thunder/cleaner/Cpu_Scanner$1;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 154
    iget-object p1, p0, Llightning/thunder/cleaner/Cpu_Scanner$1;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    iget-object p1, p1, Llightning/thunder/cleaner/Cpu_Scanner;->img_animation:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    iget-object p1, p0, Llightning/thunder/cleaner/Cpu_Scanner$1;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    iget-object p1, p1, Llightning/thunder/cleaner/Cpu_Scanner;->img_animation:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
