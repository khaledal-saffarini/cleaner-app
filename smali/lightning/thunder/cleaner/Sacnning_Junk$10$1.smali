.class Llightning/thunder/cleaner/Sacnning_Junk$10$1;
.super Ljava/lang/Object;
.source "Sacnning_Junk.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Sacnning_Junk$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llightning/thunder/cleaner/Sacnning_Junk$10;

.field final synthetic val$rippleBackground:Lcom/skyfishjy/library/RippleBackground;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Sacnning_Junk$10;Lcom/skyfishjy/library/RippleBackground;)V
    .locals 0

    .line 344
    iput-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk$10$1;->this$1:Llightning/thunder/cleaner/Sacnning_Junk$10;

    iput-object p2, p0, Llightning/thunder/cleaner/Sacnning_Junk$10$1;->val$rippleBackground:Lcom/skyfishjy/library/RippleBackground;

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

    .line 357
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk$10$1;->this$1:Llightning/thunder/cleaner/Sacnning_Junk$10;

    iget-object p1, p1, Llightning/thunder/cleaner/Sacnning_Junk$10;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    invoke-static {p1}, Llightning/thunder/cleaner/Sacnning_Junk;->access$000(Llightning/thunder/cleaner/Sacnning_Junk;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 358
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk$10$1;->this$1:Llightning/thunder/cleaner/Sacnning_Junk$10;

    iget-object p1, p1, Llightning/thunder/cleaner/Sacnning_Junk$10;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk$10$1;->this$1:Llightning/thunder/cleaner/Sacnning_Junk$10;

    iget-object v0, v0, Llightning/thunder/cleaner/Sacnning_Junk$10;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    invoke-static {v0}, Llightning/thunder/cleaner/Sacnning_Junk;->access$000(Llightning/thunder/cleaner/Sacnning_Junk;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V

    .line 361
    :cond_0
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk$10$1;->val$rippleBackground:Lcom/skyfishjy/library/RippleBackground;

    invoke-virtual {p1}, Lcom/skyfishjy/library/RippleBackground;->stopRippleAnimation()V

    .line 363
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 364
    new-instance v0, Llightning/thunder/cleaner/Sacnning_Junk$10$1$1;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Sacnning_Junk$10$1$1;-><init>(Llightning/thunder/cleaner/Sacnning_Junk$10$1;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 348
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk$10$1;->this$1:Llightning/thunder/cleaner/Sacnning_Junk$10;

    iget-object p1, p1, Llightning/thunder/cleaner/Sacnning_Junk$10;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget-object p1, p1, Llightning/thunder/cleaner/Sacnning_Junk;->scanning:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cleared "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llightning/thunder/cleaner/Sacnning_Junk$10$1;->this$1:Llightning/thunder/cleaner/Sacnning_Junk$10;

    iget-object v1, v1, Llightning/thunder/cleaner/Sacnning_Junk$10;->val$junk:Landroid/os/Bundle;

    const-string v2, "junk"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk$10$1;->this$1:Llightning/thunder/cleaner/Sacnning_Junk$10;

    iget-object p1, p1, Llightning/thunder/cleaner/Sacnning_Junk$10;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget-object p1, p1, Llightning/thunder/cleaner/Sacnning_Junk;->scanning:Landroid/widget/TextView;

    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
