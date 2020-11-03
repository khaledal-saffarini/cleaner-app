.class public Lcom/google/android/gms/instantapps/LaunchData;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/instantapps/LaunchData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final intent:Landroid/content/Intent;

.field private final packageName:Ljava/lang/String;

.field private final zzq:Ljava/lang/String;

.field private final zzr:Lcom/google/android/gms/common/data/BitmapTeleporter;

.field private final zzs:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/google/android/gms/instantapps/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/instantapps/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/instantapps/LaunchData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/data/BitmapTeleporter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/instantapps/LaunchData;->intent:Landroid/content/Intent;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/instantapps/LaunchData;->packageName:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/instantapps/LaunchData;->zzq:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/instantapps/LaunchData;->zzr:Lcom/google/android/gms/common/data/BitmapTeleporter;

    if-eqz p4, :cond_0

    .line 6
    invoke-virtual {p4}, Lcom/google/android/gms/common/data/BitmapTeleporter;->get()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/instantapps/LaunchData;->zzs:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getApplicationIcon()Landroid/graphics/Bitmap;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/instantapps/LaunchData;->zzs:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getApplicationLabel()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/instantapps/LaunchData;->zzq:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/instantapps/LaunchData;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/instantapps/LaunchData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/instantapps/LaunchData;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 16
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/instantapps/LaunchData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    .line 19
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/instantapps/LaunchData;->getApplicationLabel()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    .line 22
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/instantapps/LaunchData;->zzr:Lcom/google/android/gms/common/data/BitmapTeleporter;

    const/4 v3, 0x5

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 24
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
