.class public Lcom/hookedonplay/decoviewlib/util/GenericFunctions;
.super Ljava/lang/Object;
.source "GenericFunctions.java"


# static fields
.field private static mInitialized:Z = false

.field private static mScaledDensity:F = 3.0f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 28
    sput-boolean v0, Lcom/hookedonplay/decoviewlib/util/GenericFunctions;->mInitialized:Z

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput p0, Lcom/hookedonplay/decoviewlib/util/GenericFunctions;->mScaledDensity:F

    return-void
.end method

.method public static pixelsToSp(F)F
    .locals 1

    .line 33
    invoke-static {}, Lcom/hookedonplay/decoviewlib/util/GenericFunctions;->verifyInitialized()V

    .line 34
    sget v0, Lcom/hookedonplay/decoviewlib/util/GenericFunctions;->mScaledDensity:F

    div-float/2addr p0, v0

    return p0
.end method

.method public static spToPixels(F)F
    .locals 1

    .line 38
    invoke-static {}, Lcom/hookedonplay/decoviewlib/util/GenericFunctions;->verifyInitialized()V

    .line 39
    sget v0, Lcom/hookedonplay/decoviewlib/util/GenericFunctions;->mScaledDensity:F

    mul-float p0, p0, v0

    return p0
.end method

.method public static verifyInitialized()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 44
    sget-boolean v0, Lcom/hookedonplay/decoviewlib/util/GenericFunctions;->mInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing call to GenericFunctions::initialize()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
