.class Llightning/thunder/cleaner/BatterySaver_Black$6;
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

    .line 325
    iput-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$6;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 330
    new-instance p1, Landroid/content/Intent;

    const-string v0, "http://www.google.com"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 331
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "com.android.chrome"

    .line 332
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    iget-object v0, p0, Llightning/thunder/cleaner/BatterySaver_Black$6;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    invoke-virtual {v0}, Llightning/thunder/cleaner/BatterySaver_Black;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 335
    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Llightning/thunder/cleaner/BatterySaver_Black$6;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    invoke-virtual {v0, p1}, Llightning/thunder/cleaner/BatterySaver_Black;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 340
    :cond_0
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$6;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    const/4 v0, 0x0

    const-string v1, "Your System doesn\'t allow to use messaging app."

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
