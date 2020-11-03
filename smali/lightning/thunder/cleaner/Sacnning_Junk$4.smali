.class Llightning/thunder/cleaner/Sacnning_Junk$4;
.super Ljava/lang/Object;
.source "Sacnning_Junk.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 236
    iput-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk$4;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 239
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk$4;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    const-string v1, "Decrease Device Performance"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Llightning/thunder/cleaner/Sacnning_Junk;->add(Ljava/lang/String;I)V

    return-void
.end method
