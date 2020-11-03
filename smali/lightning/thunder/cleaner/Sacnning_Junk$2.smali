.class Llightning/thunder/cleaner/Sacnning_Junk$2;
.super Ljava/util/TimerTask;
.source "Sacnning_Junk.java"


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

    .line 175
    iput-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk$2;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 178
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk$2;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    new-instance v1, Llightning/thunder/cleaner/Sacnning_Junk$2$1;

    invoke-direct {v1, p0}, Llightning/thunder/cleaner/Sacnning_Junk$2$1;-><init>(Llightning/thunder/cleaner/Sacnning_Junk$2;)V

    invoke-virtual {v0, v1}, Llightning/thunder/cleaner/Sacnning_Junk;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
