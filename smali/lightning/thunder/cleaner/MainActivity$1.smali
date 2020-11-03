.class Llightning/thunder/cleaner/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llightning/thunder/cleaner/MainActivity;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/MainActivity;)V
    .locals 0

    .line 49
    iput-object p1, p0, Llightning/thunder/cleaner/MainActivity$1;->this$0:Llightning/thunder/cleaner/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x2

    .line 52
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
