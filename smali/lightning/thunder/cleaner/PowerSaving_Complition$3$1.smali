.class Llightning/thunder/cleaner/PowerSaving_Complition$3$1;
.super Ljava/lang/Object;
.source "PowerSaving_Complition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/PowerSaving_Complition$3;->onEventEnd(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llightning/thunder/cleaner/PowerSaving_Complition$3;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/PowerSaving_Complition$3;)V
    .locals 0

    .line 210
    iput-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition$3$1;->this$1:Llightning/thunder/cleaner/PowerSaving_Complition$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 213
    iget-object v0, p0, Llightning/thunder/cleaner/PowerSaving_Complition$3$1;->this$1:Llightning/thunder/cleaner/PowerSaving_Complition$3;

    iget-object v0, v0, Llightning/thunder/cleaner/PowerSaving_Complition$3;->this$0:Llightning/thunder/cleaner/PowerSaving_Complition;

    invoke-static {v0}, Llightning/thunder/cleaner/PowerSaving_Complition;->access$000(Llightning/thunder/cleaner/PowerSaving_Complition;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Llightning/thunder/cleaner/PowerSaving_Complition$3$1;->this$1:Llightning/thunder/cleaner/PowerSaving_Complition$3;

    iget-object v0, v0, Llightning/thunder/cleaner/PowerSaving_Complition$3;->this$0:Llightning/thunder/cleaner/PowerSaving_Complition;

    iget-object v1, p0, Llightning/thunder/cleaner/PowerSaving_Complition$3$1;->this$1:Llightning/thunder/cleaner/PowerSaving_Complition$3;

    iget-object v1, v1, Llightning/thunder/cleaner/PowerSaving_Complition$3;->this$0:Llightning/thunder/cleaner/PowerSaving_Complition;

    invoke-static {v1}, Llightning/thunder/cleaner/PowerSaving_Complition;->access$000(Llightning/thunder/cleaner/PowerSaving_Complition;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Llightning/thunder/cleaner/PowerSaving_Complition$3$1;->this$1:Llightning/thunder/cleaner/PowerSaving_Complition$3;

    iget-object v0, v0, Llightning/thunder/cleaner/PowerSaving_Complition$3;->this$0:Llightning/thunder/cleaner/PowerSaving_Complition;

    invoke-static {v0}, Llightning/thunder/cleaner/PowerSaving_Complition;->access$100(Llightning/thunder/cleaner/PowerSaving_Complition;)V

    :cond_0
    return-void
.end method
