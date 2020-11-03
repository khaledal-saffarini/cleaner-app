.class Llightning/thunder/cleaner/Cpu_Scanner$8$1$2;
.super Ljava/lang/Object;
.source "Cpu_Scanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Cpu_Scanner$8$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Llightning/thunder/cleaner/Cpu_Scanner$8$1;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Cpu_Scanner$8$1;)V
    .locals 0

    .line 296
    iput-object p1, p0, Llightning/thunder/cleaner/Cpu_Scanner$8$1$2;->this$2:Llightning/thunder/cleaner/Cpu_Scanner$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 301
    iget-object v0, p0, Llightning/thunder/cleaner/Cpu_Scanner$8$1$2;->this$2:Llightning/thunder/cleaner/Cpu_Scanner$8$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Cpu_Scanner$8$1;->this$1:Llightning/thunder/cleaner/Cpu_Scanner$8;

    iget-object v0, v0, Llightning/thunder/cleaner/Cpu_Scanner$8;->this$0:Llightning/thunder/cleaner/Cpu_Scanner;

    invoke-virtual {v0}, Llightning/thunder/cleaner/Cpu_Scanner;->finish()V

    return-void
.end method
