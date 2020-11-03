.class public Llightning/thunder/cleaner/Classes/Apps;
.super Ljava/lang/Object;
.source "Apps.java"


# instance fields
.field image:Landroid/graphics/drawable/Drawable;

.field size:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 23
    iget-object v0, p0, Llightning/thunder/cleaner/Classes/Apps;->image:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Llightning/thunder/cleaner/Classes/Apps;->size:Ljava/lang/String;

    return-object v0
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 27
    iput-object p1, p0, Llightning/thunder/cleaner/Classes/Apps;->image:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Llightning/thunder/cleaner/Classes/Apps;->size:Ljava/lang/String;

    return-void
.end method
