.class Llightning/thunder/cleaner/Fragments/PhoneBooster$3;
.super Ljava/lang/Object;
.source "PhoneBooster.java"

# interfaces
.implements Lcom/hookedonplay/decoviewlib/events/DecoEvent$ExecuteEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Fragments/PhoneBooster;->optimize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Fragments/PhoneBooster;)V
    .locals 0

    .line 254
    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$3;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventEnd(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
    .locals 3

    .line 265
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 266
    new-instance v0, Llightning/thunder/cleaner/Fragments/PhoneBooster$3$1;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/Fragments/PhoneBooster$3$1;-><init>(Llightning/thunder/cleaner/Fragments/PhoneBooster$3;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 277
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$3;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->bottom:Landroid/widget/TextView;

    const-string v0, "Found"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$3;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->top:Landroid/widget/TextView;

    const-string v0, "Storage"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 280
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$3;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/PhoneBooster;->ramperct:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x14

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onEventStart(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
    .locals 1

    .line 257
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$3;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->bottom:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$3;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->top:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$3;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->centree:Landroid/widget/TextView;

    const-string v0, "Optimizing..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
