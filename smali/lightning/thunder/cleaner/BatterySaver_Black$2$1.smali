.class Llightning/thunder/cleaner/BatterySaver_Black$2$1;
.super Ljava/lang/Object;
.source "BatterySaver_Black.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/BatterySaver_Black$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llightning/thunder/cleaner/BatterySaver_Black$2;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/BatterySaver_Black$2;)V
    .locals 0

    .line 206
    iput-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$2$1;->this$1:Llightning/thunder/cleaner/BatterySaver_Black$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 210
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Llightning/thunder/cleaner/BatterySaver_Black$2$1;->this$1:Llightning/thunder/cleaner/BatterySaver_Black$2;

    iget-object v0, v0, Llightning/thunder/cleaner/BatterySaver_Black$2;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    const-class v1, Llightning/thunder/cleaner/Noraml_Mode;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    iget-object v0, p0, Llightning/thunder/cleaner/BatterySaver_Black$2$1;->this$1:Llightning/thunder/cleaner/BatterySaver_Black$2;

    iget-object v0, v0, Llightning/thunder/cleaner/BatterySaver_Black$2;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    invoke-virtual {v0, p1}, Llightning/thunder/cleaner/BatterySaver_Black;->startActivity(Landroid/content/Intent;)V

    .line 213
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$2$1;->this$1:Llightning/thunder/cleaner/BatterySaver_Black$2;

    iget-object p1, p1, Llightning/thunder/cleaner/BatterySaver_Black$2;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    invoke-virtual {p1}, Llightning/thunder/cleaner/BatterySaver_Black;->finish()V

    return-void
.end method
