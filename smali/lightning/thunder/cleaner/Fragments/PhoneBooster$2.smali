.class Llightning/thunder/cleaner/Fragments/PhoneBooster$2;
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

    .line 239
    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$2;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventEnd(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
    .locals 0

    return-void
.end method

.method public onEventStart(Lcom/hookedonplay/decoviewlib/events/DecoEvent;)V
    .locals 1

    .line 242
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$2;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->bottom:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$2;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->top:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object p1, p0, Llightning/thunder/cleaner/Fragments/PhoneBooster$2;->this$0:Llightning/thunder/cleaner/Fragments/PhoneBooster;

    iget-object p1, p1, Llightning/thunder/cleaner/Fragments/PhoneBooster;->centree:Landroid/widget/TextView;

    const-string v0, "Optimizing..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
