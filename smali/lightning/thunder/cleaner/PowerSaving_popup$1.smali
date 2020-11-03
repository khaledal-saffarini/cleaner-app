.class Llightning/thunder/cleaner/PowerSaving_popup$1;
.super Ljava/lang/Object;
.source "PowerSaving_popup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/PowerSaving_popup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llightning/thunder/cleaner/PowerSaving_popup;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/PowerSaving_popup;)V
    .locals 0

    .line 76
    iput-object p1, p0, Llightning/thunder/cleaner/PowerSaving_popup$1;->this$0:Llightning/thunder/cleaner/PowerSaving_popup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 82
    iget-object p1, p0, Llightning/thunder/cleaner/PowerSaving_popup$1;->this$0:Llightning/thunder/cleaner/PowerSaving_popup;

    iget-object p1, p1, Llightning/thunder/cleaner/PowerSaving_popup;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "mode"

    const-string v1, "1"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    iget-object p1, p0, Llightning/thunder/cleaner/PowerSaving_popup$1;->this$0:Llightning/thunder/cleaner/PowerSaving_popup;

    iget-object p1, p1, Llightning/thunder/cleaner/PowerSaving_popup;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Llightning/thunder/cleaner/PowerSaving_popup$1;->this$0:Llightning/thunder/cleaner/PowerSaving_popup;

    invoke-virtual {v0}, Llightning/thunder/cleaner/PowerSaving_popup;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Llightning/thunder/cleaner/PowerSaving_Complition;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    iget-object v0, p0, Llightning/thunder/cleaner/PowerSaving_popup$1;->this$0:Llightning/thunder/cleaner/PowerSaving_popup;

    invoke-virtual {v0, p1}, Llightning/thunder/cleaner/PowerSaving_popup;->startActivity(Landroid/content/Intent;)V

    .line 88
    iget-object p1, p0, Llightning/thunder/cleaner/PowerSaving_popup$1;->this$0:Llightning/thunder/cleaner/PowerSaving_popup;

    invoke-virtual {p1}, Llightning/thunder/cleaner/PowerSaving_popup;->finish()V

    return-void
.end method
