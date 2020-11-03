.class public final Lcom/skyfishjy/library/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skyfishjy/library/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final RippleBackground:[I

.field public static final RippleBackground_rb_color:I = 0x0

.field public static final RippleBackground_rb_duration:I = 0x1

.field public static final RippleBackground_rb_radius:I = 0x2

.field public static final RippleBackground_rb_rippleAmount:I = 0x3

.field public static final RippleBackground_rb_scale:I = 0x4

.field public static final RippleBackground_rb_strokeWidth:I = 0x5

.field public static final RippleBackground_rb_type:I = 0x6


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/skyfishjy/library/R$styleable;->RippleBackground:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f030163
        0x7f030164
        0x7f030165
        0x7f030166
        0x7f030167
        0x7f030168
        0x7f030169
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
