.class public Llightning/thunder/cleaner/Classes/power_item;
.super Ljava/lang/Object;
.source "power_item.java"


# instance fields
.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Llightning/thunder/cleaner/Classes/power_item;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Llightning/thunder/cleaner/Classes/power_item;->text:Ljava/lang/String;

    return-void
.end method
