.class Llightning/thunder/cleaner/Sacnning_Junk$10$1$1;
.super Ljava/lang/Object;
.source "Sacnning_Junk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Sacnning_Junk$10$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Llightning/thunder/cleaner/Sacnning_Junk$10$1;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Sacnning_Junk$10$1;)V
    .locals 0

    .line 364
    iput-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk$10$1$1;->this$2:Llightning/thunder/cleaner/Sacnning_Junk$10$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 369
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk$10$1$1;->this$2:Llightning/thunder/cleaner/Sacnning_Junk$10$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Sacnning_Junk$10$1;->this$1:Llightning/thunder/cleaner/Sacnning_Junk$10;

    iget-object v0, v0, Llightning/thunder/cleaner/Sacnning_Junk$10;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    invoke-virtual {v0}, Llightning/thunder/cleaner/Sacnning_Junk;->finish()V

    return-void
.end method
