.class Llightning/thunder/cleaner/Fragments/BatterySaver$2;
.super Ljava/lang/Object;
.source "BatterySaver.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Fragments/BatterySaver;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Fragments/BatterySaver;)V
    .locals 0

    .line 274
    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/BatterySaver$2;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 277
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/BatterySaver$2;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    invoke-virtual {v0}, Llightning/thunder/cleaner/Fragments/BatterySaver;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Llightning/thunder/cleaner/PowerSaving_popup;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/BatterySaver$2;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourp:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "hour"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 279
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/BatterySaver$2;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutep:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "minutes"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 280
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/BatterySaver$2;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/BatterySaver;->minutes:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "minutesnormal"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 281
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/BatterySaver$2;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/BatterySaver;->hourn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "hournormal"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 282
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/BatterySaver$2;->this$0:Llightning/thunder/cleaner/Fragments/BatterySaver;

    invoke-virtual {v0, p1}, Llightning/thunder/cleaner/Fragments/BatterySaver;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
