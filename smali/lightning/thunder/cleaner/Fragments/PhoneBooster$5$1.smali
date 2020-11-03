.class Llightning/thunder/cleaner/Fragments/PhoneBooster$5$1;
.super Ljava/lang/Object;
.source "PhoneBooster.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Fragments/PhoneBooster$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llightning/thunder/cleaner/Fragments/PhoneBooster$5;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Fragments/PhoneBooster$5;)V
    .locals 0

    .line 405
    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$5$1;->this$1:Llightning/thunder/cleaner/Fragments/PhoneBooster$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 410
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$5$1;->this$1:Llightning/thunder/cleaner/Fragments/PhoneBooster$5;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster$5;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget v1, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->counter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->counter:I

    .line 411
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$5$1;->this$1:Llightning/thunder/cleaner/Fragments/PhoneBooster$5;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster$5;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->centree:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$5$1;->this$1:Llightning/thunder/cleaner/Fragments/PhoneBooster$5;

    iget-object v2, v2, Llightning/thunder/cleaner/Fragments/PhoneBooster$5;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget v2, v2, Llightning/thunder/cleaner/Fragments/PhoneBooster;->counter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
