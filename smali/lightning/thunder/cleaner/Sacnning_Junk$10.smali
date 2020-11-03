.class Llightning/thunder/cleaner/Sacnning_Junk$10;
.super Ljava/lang/Object;
.source "Sacnning_Junk.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$junk:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Sacnning_Junk;Landroid/os/Bundle;)V
    .locals 0

    .line 301
    iput-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk$10;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iput-object p2, p0, Llightning/thunder/cleaner/Sacnning_Junk$10;->val$junk:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 305
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk$10;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llightning/thunder/cleaner/Sacnning_Junk;->remove(I)V

    .line 308
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk$10;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    const v2, 0x7f080063

    invoke-virtual {v0, v2}, Llightning/thunder/cleaner/Sacnning_Junk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/skyfishjy/library/RippleBackground;

    .line 309
    iget-object v2, p0, Llightning/thunder/cleaner/Sacnning_Junk$10;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    const v3, 0x7f080054

    invoke-virtual {v2, v3}, Llightning/thunder/cleaner/Sacnning_Junk;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 310
    invoke-virtual {v0}, Lcom/skyfishjy/library/RippleBackground;->startRippleAnimation()V

    .line 315
    iget-object v2, p0, Llightning/thunder/cleaner/Sacnning_Junk$10;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget-object v2, v2, Llightning/thunder/cleaner/Sacnning_Junk;->front:Landroid/widget/ImageView;

    const v3, 0x7f0700c7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 316
    iget-object v2, p0, Llightning/thunder/cleaner/Sacnning_Junk$10;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget-object v2, v2, Llightning/thunder/cleaner/Sacnning_Junk;->back:Landroid/widget/ImageView;

    const v3, 0x7f070096

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    iget-object v2, p0, Llightning/thunder/cleaner/Sacnning_Junk$10;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    const v3, 0x7f080116

    invoke-virtual {v2, v3}, Llightning/thunder/cleaner/Sacnning_Junk;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 319
    new-instance v3, Lcom/github/ybq/android/spinkit/style/ThreeBounce;

    invoke-direct {v3}, Lcom/github/ybq/android/spinkit/style/ThreeBounce;-><init>()V

    .line 320
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v3, 0x8

    .line 321
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 323
    iget-object v2, p0, Llightning/thunder/cleaner/Sacnning_Junk$10;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget-object v2, v2, Llightning/thunder/cleaner/Sacnning_Junk;->scanning:Landroid/widget/TextView;

    const/16 v3, 0x14

    invoke-virtual {v2, v3, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 326
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, " MB of Junk Files Are Cleared"

    const-string v3, "junk"

    const v4, 0x1030044

    const/16 v5, 0x17

    if-ge v1, v5, :cond_0

    .line 328
    iget-object v1, p0, Llightning/thunder/cleaner/Sacnning_Junk$10;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget-object v1, v1, Llightning/thunder/cleaner/Sacnning_Junk;->scanning:Landroid/widget/TextView;

    iget-object v5, p0, Llightning/thunder/cleaner/Sacnning_Junk$10;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    invoke-virtual {v5}, Llightning/thunder/cleaner/Sacnning_Junk;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 329
    iget-object v1, p0, Llightning/thunder/cleaner/Sacnning_Junk$10;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget-object v1, v1, Llightning/thunder/cleaner/Sacnning_Junk;->scanning:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Llightning/thunder/cleaner/Sacnning_Junk$10;->val$junk:Landroid/os/Bundle;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 333
    :cond_0
    iget-object v1, p0, Llightning/thunder/cleaner/Sacnning_Junk$10;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget-object v1, v1, Llightning/thunder/cleaner/Sacnning_Junk;->scanning:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 334
    iget-object v1, p0, Llightning/thunder/cleaner/Sacnning_Junk$10;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget-object v1, v1, Llightning/thunder/cleaner/Sacnning_Junk;->scanning:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Llightning/thunder/cleaner/Sacnning_Junk$10;->val$junk:Landroid/os/Bundle;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    :goto_0
    iget-object v1, p0, Llightning/thunder/cleaner/Sacnning_Junk$10;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    invoke-virtual {v1}, Llightning/thunder/cleaner/Sacnning_Junk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020003

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    .line 340
    iget-object v2, p0, Llightning/thunder/cleaner/Sacnning_Junk$10;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget-object v2, v2, Llightning/thunder/cleaner/Sacnning_Junk;->front:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    const-wide/16 v2, 0xbb8

    .line 341
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 342
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 344
    new-instance v2, Llightning/thunder/cleaner/Sacnning_Junk$10$1;

    invoke-direct {v2, p0, v0}, Llightning/thunder/cleaner/Sacnning_Junk$10$1;-><init>(Llightning/thunder/cleaner/Sacnning_Junk$10;Lcom/skyfishjy/library/RippleBackground;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 392
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk$10;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget-object v0, v0, Llightning/thunder/cleaner/Sacnning_Junk;->files:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
