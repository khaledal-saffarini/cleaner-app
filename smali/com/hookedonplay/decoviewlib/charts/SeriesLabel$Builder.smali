.class public Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;
.super Ljava/lang/Object;
.source "SeriesLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mColorBack:I

.field private mColorText:I

.field private mFontSize:F

.field private final mLabel:Ljava/lang/String;

.field private mTypeface:Landroid/graphics/Typeface;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41800000    # 16.0f

    .line 170
    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;->mFontSize:F

    const-string v0, "#FFFFFFFF"

    .line 171
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;->mColorText:I

    const-string v0, "#AA000000"

    .line 172
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;->mColorBack:I

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;->mVisible:Z

    .line 176
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;->mLabel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;)Ljava/lang/String;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;)Z
    .locals 0

    .line 167
    iget-boolean p0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;->mVisible:Z

    return p0
.end method

.method static synthetic access$200(Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;)I
    .locals 0

    .line 167
    iget p0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;->mColorText:I

    return p0
.end method

.method static synthetic access$300(Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;)I
    .locals 0

    .line 167
    iget p0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;->mColorBack:I

    return p0
.end method

.method static synthetic access$400(Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;)Landroid/graphics/Typeface;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;->mTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic access$500(Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;)F
    .locals 0

    .line 167
    iget p0, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;->mFontSize:F

    return p0
.end method


# virtual methods
.method public build()Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;
    .locals 2

    .line 206
    new-instance v0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel;-><init>(Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$1;)V

    return-object v0
.end method

.method public setColorBack(I)Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;
    .locals 0

    .line 201
    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;->mColorBack:I

    return-object p0
.end method

.method public setColorText(I)Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;
    .locals 0

    .line 196
    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;->mColorText:I

    return-object p0
.end method

.method public setFontSize(F)Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;
    .locals 0

    .line 186
    iput p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;->mFontSize:F

    return-object p0
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;->mTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public setVisible(Z)Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/hookedonplay/decoviewlib/charts/SeriesLabel$Builder;->mVisible:Z

    return-object p0
.end method
