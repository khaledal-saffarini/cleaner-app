.class Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1$1;
.super Ljava/lang/Object;
.source "PhoneBooster.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;)V
    .locals 0

    .line 497
    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1$1;->this$2:Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 502
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1$1;->this$2:Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;->this$1:Llightning/thunder/cleaner/Fragments/PhoneBooster$6;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->centree:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1$1;->this$2:Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;->this$1:Llightning/thunder/cleaner/Fragments/PhoneBooster$6;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/PhoneBooster$6;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    invoke-virtual {v2}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getUsedMemorySize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1$1;->this$2:Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;->this$1:Llightning/thunder/cleaner/Fragments/PhoneBooster$6;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "booster"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1$1;->this$2:Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;->this$1:Llightning/thunder/cleaner/Fragments/PhoneBooster$6;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->centree:Landroid/widget/TextView;

    iget-object v1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1$1;->this$2:Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;

    iget-object v1, v1, Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;->this$1:Llightning/thunder/cleaner/Fragments/PhoneBooster$6;

    iget-object v1, v1, Llightning/thunder/cleaner/Fragments/PhoneBooster$6;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object v1, v1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v2, "value"

    const-string v3, "50MB"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    :cond_0
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1$1;->this$2:Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;->val$t2:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 510
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1$1;->this$2:Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;->this$1:Llightning/thunder/cleaner/Fragments/PhoneBooster$6;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->timer2:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 511
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1$1;->this$2:Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;->val$t2:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    return-void
.end method
