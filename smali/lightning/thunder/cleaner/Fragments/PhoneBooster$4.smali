.class Llightning/thunder/cleaner/Fragments/PhoneBooster$4;
.super Ljava/lang/Object;
.source "PhoneBooster.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Fragments/PhoneBooster;->optimize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Fragments/PhoneBooster;)V
    .locals 0

    .line 296
    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7

    .line 308
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->scanlay:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 309
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->optimizelay:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    sget-object p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->optimizebutton:Landroid/widget/ImageView;

    const v0, 0x7f0700b4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 314
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 315
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1e

    iput p1, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->x:I

    .line 317
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 v0, 0xa

    .line 318
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    .line 320
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->centree:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    invoke-virtual {v2}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getUsedMemorySize()J

    move-result-wide v2

    iget-object v4, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget v4, v4, Llightning/thunder/cleaner/Fragments/PhoneBooster;->x:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object v1, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->editor:Landroid/content/SharedPreferences$Editor;

    .line 323
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    invoke-virtual {v3}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getUsedMemorySize()J

    move-result-wide v3

    iget-object v5, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget v5, v5, Llightning/thunder/cleaner/Fragments/PhoneBooster;->x:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "value"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 324
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    invoke-virtual {v1}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getUsedMemorySize()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "used mem"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    invoke-virtual {v0}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getTotalRAM()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->totalram:Landroid/widget/TextView;

    iget-object v1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    invoke-virtual {v1}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getTotalRAM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->usedram:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    invoke-virtual {v2}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getUsedMemorySize()J

    move-result-wide v2

    iget-object v4, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget v4, v4, Llightning/thunder/cleaner/Fragments/PhoneBooster;->x:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " MB/ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->appsfreed:Landroid/widget/TextView;

    iget-object v1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    invoke-virtual {v1}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getTotalRAM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->appused:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    invoke-virtual {v3}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getUsedMemorySize()J

    move-result-wide v3

    iget-object v5, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget v5, v5, Llightning/thunder/cleaner/Fragments/PhoneBooster;->x:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1e

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->processes:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget v2, v2, Llightning/thunder/cleaner/Fragments/PhoneBooster;->y:I

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 300
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->scanlay:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 301
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->optimizelay:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 302
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->scanning:Landroid/widget/TextView;

    const-string v0, "SCANNING..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$4;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    invoke-virtual {p1}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->killall()V

    return-void
.end method
