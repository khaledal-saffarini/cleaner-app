.class Llightning/thunder/cleaner/Sacnning_Junk$1;
.super Ljava/lang/Object;
.source "Sacnning_Junk.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Sacnning_Junk;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llightning/thunder/cleaner/Sacnning_Junk;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Sacnning_Junk;)V
    .locals 0

    .line 130
    iput-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk$1;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 138
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk$1;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget-object p1, p1, Llightning/thunder/cleaner/Sacnning_Junk;->T2:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 139
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk$1;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget-object p1, p1, Llightning/thunder/cleaner/Sacnning_Junk;->T2:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    .line 140
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk$1;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget-object p1, p1, Llightning/thunder/cleaner/Sacnning_Junk;->avi1:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->hide()V

    .line 141
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk$1;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget-object p1, p1, Llightning/thunder/cleaner/Sacnning_Junk;->avi2:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->hide()V

    .line 142
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk$1;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget-object p1, p1, Llightning/thunder/cleaner/Sacnning_Junk;->avi3:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->hide()V

    .line 143
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk$1;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget-object p1, p1, Llightning/thunder/cleaner/Sacnning_Junk;->avi4:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->hide()V

    .line 144
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk$1;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget-object p1, p1, Llightning/thunder/cleaner/Sacnning_Junk;->avi5:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->hide()V

    .line 145
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk$1;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget-object p1, p1, Llightning/thunder/cleaner/Sacnning_Junk;->avi6:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/wang/avi/AVLoadingIndicatorView;->hide()V

    .line 151
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk$1;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget-object p1, p1, Llightning/thunder/cleaner/Sacnning_Junk;->files:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    .line 156
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk$1;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget v0, p1, Llightning/thunder/cleaner/Sacnning_Junk;->check:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Llightning/thunder/cleaner/Sacnning_Junk;->check:I

    .line 157
    iget-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk$1;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget v0, p1, Llightning/thunder/cleaner/Sacnning_Junk;->check:I

    invoke-virtual {p1, v0}, Llightning/thunder/cleaner/Sacnning_Junk;->startAnim(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
