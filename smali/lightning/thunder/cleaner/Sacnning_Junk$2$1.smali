.class Llightning/thunder/cleaner/Sacnning_Junk$2$1;
.super Ljava/lang/Object;
.source "Sacnning_Junk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Sacnning_Junk$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llightning/thunder/cleaner/Sacnning_Junk$2;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Sacnning_Junk$2;)V
    .locals 0

    .line 179
    iput-object p1, p0, Llightning/thunder/cleaner/Sacnning_Junk$2$1;->this$1:Llightning/thunder/cleaner/Sacnning_Junk$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 183
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk$2$1;->this$1:Llightning/thunder/cleaner/Sacnning_Junk$2;

    iget-object v0, v0, Llightning/thunder/cleaner/Sacnning_Junk$2;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget v0, v0, Llightning/thunder/cleaner/Sacnning_Junk;->prog:I

    iget-object v1, p0, Llightning/thunder/cleaner/Sacnning_Junk$2$1;->this$1:Llightning/thunder/cleaner/Sacnning_Junk$2;

    iget-object v1, v1, Llightning/thunder/cleaner/Sacnning_Junk$2;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget-object v1, v1, Llightning/thunder/cleaner/Sacnning_Junk;->packages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk$2$1;->this$1:Llightning/thunder/cleaner/Sacnning_Junk$2;

    iget-object v0, v0, Llightning/thunder/cleaner/Sacnning_Junk$2;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget-object v0, v0, Llightning/thunder/cleaner/Sacnning_Junk;->files:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Llightning/thunder/cleaner/Sacnning_Junk$2$1;->this$1:Llightning/thunder/cleaner/Sacnning_Junk$2;

    iget-object v2, v2, Llightning/thunder/cleaner/Sacnning_Junk$2;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget-object v2, v2, Llightning/thunder/cleaner/Sacnning_Junk;->packages:Ljava/util/List;

    iget-object v3, p0, Llightning/thunder/cleaner/Sacnning_Junk$2$1;->this$1:Llightning/thunder/cleaner/Sacnning_Junk$2;

    iget-object v3, v3, Llightning/thunder/cleaner/Sacnning_Junk$2;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget v3, v3, Llightning/thunder/cleaner/Sacnning_Junk;->prog:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk$2$1;->this$1:Llightning/thunder/cleaner/Sacnning_Junk$2;

    iget-object v0, v0, Llightning/thunder/cleaner/Sacnning_Junk$2;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget v1, v0, Llightning/thunder/cleaner/Sacnning_Junk;->prog:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Llightning/thunder/cleaner/Sacnning_Junk;->prog:I

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk$2$1;->this$1:Llightning/thunder/cleaner/Sacnning_Junk$2;

    iget-object v0, v0, Llightning/thunder/cleaner/Sacnning_Junk$2;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget-object v0, v0, Llightning/thunder/cleaner/Sacnning_Junk;->T2:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 189
    iget-object v0, p0, Llightning/thunder/cleaner/Sacnning_Junk$2$1;->this$1:Llightning/thunder/cleaner/Sacnning_Junk$2;

    iget-object v0, v0, Llightning/thunder/cleaner/Sacnning_Junk$2;->this$0:Llightning/thunder/cleaner/Sacnning_Junk;

    iget-object v0, v0, Llightning/thunder/cleaner/Sacnning_Junk;->T2:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :goto_0
    return-void
.end method
