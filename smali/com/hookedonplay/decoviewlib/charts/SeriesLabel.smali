.class public Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;
.super Ljava/lang/Object;
.source "SeriesLabel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;
    }
.end annotation


# static fields
.field private static mDefaultTypeFace:Landroid/graphics/Typeface;


# instance fields
.field private final mBufferX:F

.field private final mBufferY:F

.field private final mColorBack:I

.field private final mColorText:I

.field private final mFontSize:F

.field private mLabel:Ljava/lang/String;

.field private mPaintBack:Landroid/graphics/Paint;

.field private mPaintText:Landroid/graphics/Paint;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextCenter:F

.field private mTextDraw:Landroid/graphics/RectF;

.field private final mTypeface:Landroid/graphics/Typeface;

.field private final mVisible:Z


# direct methods
.method private constructor <init>(Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41700000    # 15.0f

    .line 47
    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mBufferX:F

    .line 48
    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mBufferY:F

    .line 62
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;->access$000(Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mLabel:Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;->access$100(Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mVisible:Z

    .line 64
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;->access$200(Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;)I

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mColorText:I

    .line 65
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;->access$300(Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;)I

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mColorBack:I

    .line 66
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;->access$400(Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mTypeface:Landroid/graphics/Typeface;

    .line 67
    invoke-static {p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;->access$500(Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;)F

    move-result p1

    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mFontSize:F

    .line 68
    invoke-direct {p0}, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->recalcLayout()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$1;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;-><init>(Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;)V

    return-void
.end method

.method public static createLabel(Ljava/lang/String;)Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;
    .locals 1

    .line 72
    new-instance v0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;

    invoke-direct {v0, p0}, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;->build()Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;

    move-result-object p0

    return-object p0
.end method

.method private getDisplayString(FF)Ljava/lang/String;
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mLabel:Ljava/lang/String;

    const-string v1, "%%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 110
    iget-object p2, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mLabel:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float p1, p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mLabel:Ljava/lang/String;

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 112
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mLabel:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mLabel:Ljava/lang/String;

    return-object p1
.end method

.method private recalcLayout()V
    .locals 5

    .line 80
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mPaintBack:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mPaintBack:Landroid/graphics/Paint;

    .line 82
    iget v1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mColorBack:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mPaintText:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mPaintText:Landroid/graphics/Paint;

    .line 87
    iget v1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mColorText:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mPaintText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mFontSize:F

    invoke-static {v1}, Lcom/hookedonplay/decoviewlib/util/GenericFunctions;->spToPixels(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 89
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mPaintText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 91
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mPaintText:Landroid/graphics/Paint;

    sget-object v1, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mDefaultTypeFace:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 93
    :cond_1
    sget-object v0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mDefaultTypeFace:Landroid/graphics/Typeface;

    if-eqz v0, :cond_2

    .line 94
    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 98
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mTextBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_3

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mTextBounds:Landroid/graphics/Rect;

    .line 100
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mPaintText:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mLabel:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 101
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mTextDraw:Landroid/graphics/RectF;

    .line 102
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mTextCenter:F

    :cond_3
    return-void
.end method

.method public static setDefaultFont(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    sput-object p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mDefaultTypeFace:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;
    .locals 5

    .line 126
    iget-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mVisible:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 130
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float p3, p3, v1

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr p3, v1

    const v1, 0x3c8efa35

    mul-float p3, p3, v1

    float-to-double v1, p3

    .line 133
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float p3, v3

    mul-float p3, p3, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    add-float/2addr p3, v3

    .line 134
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    add-float/2addr v1, p2

    .line 136
    iget-object p2, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    const/high16 v0, 0x41700000    # 15.0f

    add-float/2addr p2, v0

    .line 137
    iget-object v2, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v0

    sub-float v0, p3, p2

    const/4 v3, 0x0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_1

    move p3, p2

    .line 141
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v4, p3, p2

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p3, p2

    :cond_2
    sub-float v0, v1, v2

    cmpl-float v0, v3, v0

    if-lez v0, :cond_3

    move v1, v2

    .line 147
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float v3, v1, v2

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v1, v0, v2

    .line 151
    :cond_4
    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mTextDraw:Landroid/graphics/RectF;

    sub-float v3, p3, p2

    sub-float v4, v1, v2

    add-float/2addr p2, p3

    add-float/2addr v2, v1

    invoke-virtual {v0, v3, v4, p2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 157
    iget-object p2, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mTextDraw:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mPaintBack:Landroid/graphics/Paint;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p1, p2, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 161
    iget p2, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mTextCenter:F

    sub-float/2addr v1, p2

    .line 162
    invoke-direct {p0, p4, p5}, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->getDisplayString(FF)Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v1, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 164
    iget-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mTextDraw:Landroid/graphics/RectF;

    return-object p1
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mLabel:Ljava/lang/String;

    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->mTextBounds:Landroid/graphics/Rect;

    .line 121
    invoke-direct {p0}, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;->recalcLayout()V

    return-void
.end method
