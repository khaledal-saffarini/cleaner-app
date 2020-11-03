.class Llightning/thunder/cleaner/Ultra_PopUp$1;
.super Ljava/lang/Object;
.source "Ultra_PopUp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Ultra_PopUp;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llightning/thunder/cleaner/Ultra_PopUp;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Ultra_PopUp;)V
    .locals 0

    .line 68
    iput-object p1, p0, Llightning/thunder/cleaner/Ultra_PopUp$1;->this$0:Llightning/thunder/cleaner/Ultra_PopUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 72
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Llightning/thunder/cleaner/Ultra_PopUp$1;->this$0:Llightning/thunder/cleaner/Ultra_PopUp;

    const-class v1, Llightning/thunder/cleaner/Applying_Ultra;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    iget-object v0, p0, Llightning/thunder/cleaner/Ultra_PopUp$1;->this$0:Llightning/thunder/cleaner/Ultra_PopUp;

    invoke-virtual {v0, p1}, Llightning/thunder/cleaner/Ultra_PopUp;->startActivity(Landroid/content/Intent;)V

    .line 79
    iget-object p1, p0, Llightning/thunder/cleaner/Ultra_PopUp$1;->this$0:Llightning/thunder/cleaner/Ultra_PopUp;

    invoke-virtual {p1}, Llightning/thunder/cleaner/Ultra_PopUp;->finish()V

    return-void
.end method
