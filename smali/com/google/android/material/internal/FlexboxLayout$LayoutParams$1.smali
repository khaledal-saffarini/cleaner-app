.class final Lcom/google/android/material/internal/FlexboxLayout$LayoutParams$1;
.super Ljava/lang/Object;
.source "FlexboxLayout.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;
    .locals 1

    .line 1209
    new-instance v0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1206
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;
    .locals 0

    .line 1214
    new-array p1, p1, [Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1206
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams$1;->newArray(I)[Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method
