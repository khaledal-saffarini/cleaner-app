.class Llightning/thunder/cleaner/PowerSaving_popup$3;
.super Ljava/lang/Object;
.source "PowerSaving_popup.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 119
    iput-object p1, p0, Llightning/thunder/cleaner/PowerSaving_popup$3;->this$0:Llightning/thunder/cleaner/PowerSaving_popup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 122
    iget-object v0, p0, Llightning/thunder/cleaner/PowerSaving_popup$3;->this$0:Llightning/thunder/cleaner/PowerSaving_popup;

    const-string v1, "Decrease Device Performance"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Llightning/thunder/cleaner/PowerSaving_popup;->add(Ljava/lang/String;I)V

    return-void
.end method
