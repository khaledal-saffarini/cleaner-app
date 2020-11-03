.class Llightning/thunder/cleaner/BatterySaver_Black$2;
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

    .line 200
    iput-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$2;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 204
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$2;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    iget p1, p1, Llightning/thunder/cleaner/BatterySaver_Black;->check:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    .line 205
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$2;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    iget-object p1, p1, Llightning/thunder/cleaner/BatterySaver_Black;->disable:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$2;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    iget-object p1, p1, Llightning/thunder/cleaner/BatterySaver_Black;->disable:Landroid/widget/TextView;

    new-instance v0, Llightning/thunder/cleaner/BatterySaver_Black$2$1;

    invoke-direct {v0, p0}, Llightning/thunder/cleaner/BatterySaver_Black$2$1;-><init>(Llightning/thunder/cleaner/BatterySaver_Black$2;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$2;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    iget v0, p1, Llightning/thunder/cleaner/BatterySaver_Black;->check:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Llightning/thunder/cleaner/BatterySaver_Black;->check:I

    goto :goto_0

    .line 221
    :cond_0
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$2;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    iget-object p1, p1, Llightning/thunder/cleaner/BatterySaver_Black;->disable:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    iget-object p1, p0, Llightning/thunder/cleaner/BatterySaver_Black$2;->this$0:Llightning/thunder/cleaner/BatterySaver_Black;

    iget v0, p1, Llightning/thunder/cleaner/BatterySaver_Black;->check:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Llightning/thunder/cleaner/BatterySaver_Black;->check:I

    :goto_0
    return-void
.end method
