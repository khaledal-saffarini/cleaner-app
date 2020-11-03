.class Llightning/thunder/cleaner/Cpu_Scanner$4;
.super Ljava/lang/Object;
.source "Cpu_Scanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Cpu_Scanner;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llightning/thunder/cleaner/Cpu_Scanner;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Cpu_Scanner;)V
    .locals 0

    .line 204
    iput-object p1, p0, Llightning/thunder/cleaner/Cpu_Scanner$4;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 207
    iget-object v0, p0, Llightning/thunder/cleaner/Cpu_Scanner$4;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llightning/thunder/cleaner/Cpu_Scanner;->remove(I)V

    .line 208
    iget-object v0, p0, Llightning/thunder/cleaner/Cpu_Scanner$4;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    const-string v1, "Close All Battery Consuming Apps"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Llightning/thunder/cleaner/Cpu_Scanner;->add(Ljava/lang/String;I)V

    return-void
.end method
