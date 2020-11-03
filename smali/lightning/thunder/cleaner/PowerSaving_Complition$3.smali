.class Llightning/thunder/cleaner/PowerSaving_Complition$3;
.super Ljava/lang/Object;
.source "PowerSaving_Complition.java"

# interfaces
.implements Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/PowerSaving_Complition;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llightning/thunder/cleaner/PowerSaving_Complition;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/PowerSaving_Complition;)V
    .locals 0

    .line 191
    iput-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition$3;->this$0:Llightning/thunder/cleaner/PowerSaving_Complition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventEnd(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
    .locals 3

    .line 209
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 210
    new-instance v0, Llightning/thunder/cleaner/PowerSaving_Complition$3$1;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/PowerSaving_Complition$3$1;-><init>(Llightning/thunder/cleaner/PowerSaving_Complition$3;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 222
    iget-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition$3;->this$0:Llightning/thunder/cleaner/PowerSaving_Complition;

    invoke-virtual {p1, p1}, Llightning/thunder/cleaner/PowerSaving_Complition;->youDesirePermissionCode(Landroid/app/Activity;)V

    .line 225
    iget-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition$3;->this$0:Llightning/thunder/cleaner/PowerSaving_Complition;

    invoke-virtual {p1}, Llightning/thunder/cleaner/PowerSaving_Complition;->closesall()V

    .line 227
    iget-object p1, p0, Llightning/thunder/cleaner/PowerSaving_Complition$3;->this$0:Llightning/thunder/cleaner/PowerSaving_Complition;

    const/4 v0, 0x1

    iput v0, p1, Llightning/thunder/cleaner/PowerSaving_Complition;->check:I

    return-void
.end method

.method public onEventStart(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
    .locals 0

    return-void
.end method
