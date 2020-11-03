.class public Llightning/thunder/cleaner/MainActivity$MyException;
.super Ljava/lang/Exception;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llightning/thunder/cleaner/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyException"
.end annotation


# instance fields
.field final synthetic this$0:Llightning/thunder/cleaner/MainActivity;


# direct methods
.method public constructor <init>(Llightning/thunder/cleaner/MainActivity;)V
    .locals 0

    .line 287
    iput-object p1, p0, Llightning/thunder/cleaner/MainActivity$MyException;->this$0:Llightning/thunder/cleaner/MainActivity;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
