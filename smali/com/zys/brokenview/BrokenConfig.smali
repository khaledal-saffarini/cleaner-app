.class Lcom/zys/brokenview/BrokenConfig;
.super Ljava/lang/Object;
.source "BrokenConfig.java"


# instance fields
.field breakDuration:I

.field childView:Landroid/view/View;

.field circleRiftsRadius:I

.field complexity:I

.field fallDuration:I

.field paint:Landroid/graphics/Paint;

.field region:Landroid/graphics/Region;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 8
    iput v0, p0, Lcom/zys/brokenview/BrokenConfig;->complexity:I

    const/16 v0, 0x2bc

    .line 9
    iput v0, p0, Lcom/zys/brokenview/BrokenConfig;->breakDuration:I

    const/16 v0, 0x7d0

    .line 10
    iput v0, p0, Lcom/zys/brokenview/BrokenConfig;->fallDuration:I

    const/16 v0, 0x42

    .line 11
    iput v0, p0, Lcom/zys/brokenview/BrokenConfig;->circleRiftsRadius:I

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/zys/brokenview/BrokenConfig;->region:Landroid/graphics/Region;

    .line 13
    iput-object v0, p0, Lcom/zys/brokenview/BrokenConfig;->childView:Landroid/view/View;

    .line 14
    iput-object v0, p0, Lcom/zys/brokenview/BrokenConfig;->paint:Landroid/graphics/Paint;

    return-void
.end method
