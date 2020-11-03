.class public final Lcom/google/android/gms/internal/instantapps/zzat;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/instantapps/zzat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final versionCode:I

.field private final zzae:Ljava/lang/String;

.field private final zzai:[B

.field private final zzcl:Ljava/lang/String;

.field private final zzcm:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/instantapps/zzaw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/instantapps/zzaw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/instantapps/zzat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/instantapps/zzat;->packageName:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/instantapps/zzat;->versionCode:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/instantapps/zzat;->zzcl:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/instantapps/zzat;->zzae:Ljava/lang/String;

    .line 6
    iput-wide p5, p0, Lcom/google/android/gms/internal/instantapps/zzat;->zzcm:J

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/internal/instantapps/zzat;->zzai:[B

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzat;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 14
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/instantapps/zzat;->versionCode:I

    const/4 v2, 0x2

    .line 17
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzat;->zzcl:Ljava/lang/String;

    const/4 v2, 0x3

    .line 21
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzat;->zzae:Ljava/lang/String;

    const/4 v2, 0x4

    .line 25
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 27
    iget-wide v2, p0, Lcom/google/android/gms/internal/instantapps/zzat;->zzcm:J

    const/4 v0, 0x5

    .line 28
    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzat;->zzai:[B

    const/4 v2, 0x6

    .line 32
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    .line 33
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
