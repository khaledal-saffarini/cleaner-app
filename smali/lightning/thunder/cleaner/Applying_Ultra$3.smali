.class Llightning/thunder/cleaner/Applying_Ultra$3;
.super Ljava/lang/Object;
.source "Applying_Ultra.java"

# interfaces
.implements Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Applying_Ultra;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llightning/thunder/cleaner/Applying_Ultra;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Applying_Ultra;)V
    .locals 0

    .line 164
    iput-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra$3;->this$0:Llightning/thunder/cleaner/Applying_Ultra;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventEnd(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
    .locals 1

    .line 183
    iget-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra$3;->this$0:Llightning/thunder/cleaner/Applying_Ultra;

    const/4 v0, 0x1

    iput v0, p1, Llightning/thunder/cleaner/Applying_Ultra;->check:I

    .line 184
    iget-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra$3;->this$0:Llightning/thunder/cleaner/Applying_Ultra;

    invoke-virtual {p1, p1}, Llightning/thunder/cleaner/Applying_Ultra;->youDesirePermissionCode(Landroid/app/Activity;)V

    .line 192
    iget-object p1, p0, Llightning/thunder/cleaner/Applying_Ultra$3;->this$0:Llightning/thunder/cleaner/Applying_Ultra;

    invoke-virtual {p1}, Llightning/thunder/cleaner/Applying_Ultra;->enablesall()V

    return-void
.end method

.method public onEventStart(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
    .locals 0

    return-void
.end method
