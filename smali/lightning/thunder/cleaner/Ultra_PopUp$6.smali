.class Llightning/thunder/cleaner/Ultra_PopUp$6;
.super Ljava/lang/Object;
.source "Ultra_PopUp.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 143
    iput-object p1, p0, Llightning/thunder/cleaner/Ultra_PopUp$6;->this$0:Llightning/thunder/cleaner/Ultra_PopUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 146
    iget-object v0, p0, Llightning/thunder/cleaner/Ultra_PopUp$6;->this$0:Llightning/thunder/cleaner/Ultra_PopUp;

    const-string v1, "Block Acess to Memory and Battery Draning Apps"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Llightning/thunder/cleaner/Ultra_PopUp;->add(Ljava/lang/String;I)V

    return-void
.end method
