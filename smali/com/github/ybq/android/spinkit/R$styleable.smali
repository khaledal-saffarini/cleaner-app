.class public final Lcom/github/ybq/android/spinkit/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ybq/android/spinkit/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final SpinKitView:[I

.field public static final SpinKitView_SpinKit_Color:I = 0x0

.field public static final SpinKitView_SpinKit_Style:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/ybq/android/spinkit/R$styleable;->SpinKitView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f030001
        0x7f030002
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
