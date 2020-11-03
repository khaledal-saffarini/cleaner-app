.class Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;
.super Ljava/util/TimerTask;
.source "PhoneBooster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Fragments/PhoneBooster$6;->onEventEnd(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llightning/thunder/cleaner/Fragments/PhoneBooster$6;

.field final synthetic val$t2:Ljava/util/Timer;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Fragments/PhoneBooster$6;Ljava/util/Timer;)V
    .locals 0

    .line 491
    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;->this$1:Llightning/thunder/cleaner/Fragments/PhoneBooster$6;

    iput-object p2, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;->val$t2:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 497
    :try_start_0
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;->this$1:Llightning/thunder/cleaner/Fragments/PhoneBooster$6;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster$6;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    invoke-virtual {v0}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1$1;

    invoke-direct {v1, p0}, Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1$1;-><init>(Llightning/thunder/cleaner/Fragments/PhoneBooster$6$1;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
