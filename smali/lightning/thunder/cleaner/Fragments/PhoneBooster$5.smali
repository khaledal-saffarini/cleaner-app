.class Llightning/thunder/cleaner/Fragments/PhoneBooster$5;
.super Ljava/util/TimerTask;
.source "PhoneBooster.java"


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


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Fragments/PhoneBooster;)V
    .locals 0

    .line 399
    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$5;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 405
    :try_start_0
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$5;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    invoke-virtual {v0}, Llightning/thunder/cleaner/Fragments/PhoneBooster;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Llightning/thunder/cleaner/Fragments/PhoneBooster$5$1;

    invoke-direct {v1, p0}, Llightning/thunder/cleaner/Fragments/PhoneBooster$5$1;-><init>(Llightning/thunder/cleaner/Fragments/PhoneBooster$5;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
