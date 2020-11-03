.class Llightning/thunder/cleaner/Noraml_Mode$3;
.super Ljava/lang/Object;
.source "Noraml_Mode.java"

# interfaces
.implements Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Noraml_Mode;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llightning/thunder/cleaner/Noraml_Mode;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Noraml_Mode;)V
    .locals 0

    .line 205
    iput-object p1, p0, Llightning/thunder/cleaner/Noraml_Mode$3;->this$0:Llightning/thunder/cleaner/Noraml_Mode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventEnd(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
    .locals 3

    .line 221
    :try_start_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 222
    new-instance v0, Llightning/thunder/cleaner/Noraml_Mode$3$1;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Noraml_Mode$3$1;-><init>(Llightning/thunder/cleaner/Noraml_Mode$3;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :catch_0
    iget-object p1, p0, Llightning/thunder/cleaner/Noraml_Mode$3;->this$0:Llightning/thunder/cleaner/Noraml_Mode;

    const/4 v0, 0x1

    iput v0, p1, Llightning/thunder/cleaner/Noraml_Mode;->check:I

    .line 246
    iget-object p1, p0, Llightning/thunder/cleaner/Noraml_Mode$3;->this$0:Llightning/thunder/cleaner/Noraml_Mode;

    invoke-virtual {p1, p1}, Llightning/thunder/cleaner/Noraml_Mode;->youDesirePermissionCode(Landroid/app/Activity;)V

    .line 249
    iget-object p1, p0, Llightning/thunder/cleaner/Noraml_Mode$3;->this$0:Llightning/thunder/cleaner/Noraml_Mode;

    iget-object p1, p1, Llightning/thunder/cleaner/Noraml_Mode;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "mode"

    const-string v1, "0"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 250
    iget-object p1, p0, Llightning/thunder/cleaner/Noraml_Mode$3;->this$0:Llightning/thunder/cleaner/Noraml_Mode;

    iget-object p1, p1, Llightning/thunder/cleaner/Noraml_Mode;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onEventStart(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
    .locals 0

    return-void
.end method
