.class Llightning/thunder/cleaner/BatterySaver_Black$1;
.super Landroid/content/BroadcastReceiver;
.source "BatterySaver_Black.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llightning/thunder/cleaner/BatterySaver_Black;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llightning/thunder/cleaner/BatterySaver_Black;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/BatterySaver_Black;)V
    .locals 0

    .line 50
    iput-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$1;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "level"

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 59
    iget-object p2, p0, Llightning/thunder/cleaner/BatterySaver_Black$1;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    iget-object p2, p2, Llightning/thunder/cleaner/BatterySaver_Black;->batteryremaning:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Battery Remaning "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x5

    if-gt p1, p2, :cond_0

    .line 67
    iget-object v0, p0, Llightning/thunder/cleaner/BatterySaver_Black$1;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    iget-object v0, v0, Llightning/thunder/cleaner/BatterySaver_Black;->timeremaning:Landroid/widget/TextView;

    const-string v1, "3h 55m remaning"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/16 v0, 0xa

    if-le p1, p2, :cond_1

    if-gt p1, v0, :cond_1

    .line 77
    iget-object p2, p0, Llightning/thunder/cleaner/BatterySaver_Black$1;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    iget-object p2, p2, Llightning/thunder/cleaner/BatterySaver_Black;->timeremaning:Landroid/widget/TextView;

    const-string v1, "6h 0m remaning"

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/16 p2, 0xf

    if-le p1, v0, :cond_2

    if-gt p1, p2, :cond_2

    .line 88
    iget-object v0, p0, Llightning/thunder/cleaner/BatterySaver_Black$1;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    iget-object v0, v0, Llightning/thunder/cleaner/BatterySaver_Black;->timeremaning:Landroid/widget/TextView;

    const-string v1, "8h 25m remaning"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/16 v0, 0x19

    if-le p1, p2, :cond_3

    if-gt p1, v0, :cond_3

    .line 99
    iget-object p2, p0, Llightning/thunder/cleaner/BatterySaver_Black$1;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    iget-object p2, p2, Llightning/thunder/cleaner/BatterySaver_Black;->timeremaning:Landroid/widget/TextView;

    const-string v1, "12h 55m remaning"

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const/16 p2, 0x23

    if-le p1, v0, :cond_4

    if-gt p1, p2, :cond_4

    .line 109
    iget-object v0, p0, Llightning/thunder/cleaner/BatterySaver_Black$1;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    iget-object v0, v0, Llightning/thunder/cleaner/BatterySaver_Black;->timeremaning:Landroid/widget/TextView;

    const-string v1, "19h 2m remaning"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    const/16 v0, 0x32

    if-le p1, p2, :cond_5

    if-gt p1, v0, :cond_5

    .line 120
    iget-object p2, p0, Llightning/thunder/cleaner/BatterySaver_Black$1;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    iget-object p2, p2, Llightning/thunder/cleaner/BatterySaver_Black;->timeremaning:Landroid/widget/TextView;

    const-string v1, "22h 0m remaning"

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    const/16 p2, 0x41

    if-le p1, v0, :cond_6

    if-gt p1, p2, :cond_6

    .line 131
    iget-object v0, p0, Llightning/thunder/cleaner/BatterySaver_Black$1;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    iget-object v0, v0, Llightning/thunder/cleaner/BatterySaver_Black;->timeremaning:Landroid/widget/TextView;

    const-string v1, "28h 15m remaning"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    const/16 v0, 0x4b

    if-le p1, p2, :cond_7

    if-gt p1, v0, :cond_7

    .line 142
    iget-object p2, p0, Llightning/thunder/cleaner/BatterySaver_Black$1;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    iget-object p2, p2, Llightning/thunder/cleaner/BatterySaver_Black;->timeremaning:Landroid/widget/TextView;

    const-string v1, "30h 55m remaning"

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    const/16 p2, 0x55

    if-le p1, v0, :cond_8

    if-gt p1, p2, :cond_8

    .line 153
    iget-object v0, p0, Llightning/thunder/cleaner/BatterySaver_Black$1;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    iget-object v0, v0, Llightning/thunder/cleaner/BatterySaver_Black;->timeremaning:Landroid/widget/TextView;

    const-string v1, "38h 5m remaning"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    if-le p1, p2, :cond_9

    const/16 p2, 0x64

    if-gt p1, p2, :cond_9

    .line 164
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$1;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    iget-object p1, p1, Llightning/thunder/cleaner/BatterySaver_Black;->timeremaning:Landroid/widget/TextView;

    const-string p2, "60h 0m remaning"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method
