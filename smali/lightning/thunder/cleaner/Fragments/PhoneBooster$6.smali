.class Llightning/thunder/cleaner/Fragments/PhoneBooster$6;
.super Ljava/lang/Object;
.source "PhoneBooster.java"

# interfaces
.implements Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Fragments/PhoneBooster;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

.field final synthetic val$t:Ljava/util/Timer;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Fragments/PhoneBooster;Ljava/util/Timer;)V
    .locals 0

    .line 462
    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iput-object p2, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6;->val$t:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventEnd(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
    .locals 6

    .line 472
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6;->val$t:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 473
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->timer:Ljava/util/TimerTask;

    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    .line 474
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6;->val$t:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    .line 477
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->centree:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    invoke-virtual {v1}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getUsedMemorySize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v0, "booster"

    const-string v1, "1"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 481
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->centree:Landroid/widget/TextView;

    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "value"

    const-string v2, "50MB"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    :cond_0
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 486
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 491
    :try_start_0
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    new-instance v1, Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;

    invoke-direct {v1, p0, v0}, Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;-><init>(Llightning/thunder/cleaner/Fragments/PhoneBooster$6;Ljava/util/Timer;)V

    iput-object v1, p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->timer2:Ljava/util/TimerTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :catch_0
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object v1, p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->timer2:Ljava/util/TimerTask;

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public onEventStart(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
    .locals 0

    return-void
.end method
