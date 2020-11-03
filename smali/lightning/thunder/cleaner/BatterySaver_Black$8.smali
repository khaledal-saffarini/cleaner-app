.class Llightning/thunder/cleaner/BatterySaver_Black$8;
.super Ljava/lang/Object;
.source "BatterySaver_Black.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/BatterySaver_Black;->onCreate(Landroid/os/Bundle;)V
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

    .line 363
    iput-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$8;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 371
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.DEFAULT"

    .line 372
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "vnd.android-dir/mms-sms"

    .line 373
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    iget-object v0, p0, Llightning/thunder/cleaner/BatterySaver_Black$8;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    invoke-virtual {v0}, Llightning/thunder/cleaner/BatterySaver_Black;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 377
    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Llightning/thunder/cleaner/BatterySaver_Black$8;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    invoke-virtual {v0, p1, v1}, Llightning/thunder/cleaner/BatterySaver_Black;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 382
    :cond_0
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$8;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    const-string v0, "Your System doesn\'t allow to use messaging app."

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
