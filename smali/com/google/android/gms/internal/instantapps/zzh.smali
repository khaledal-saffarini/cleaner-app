.class public final Lcom/google/android/gms/internal/instantapps/zzh;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/instantapps/zzh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzad:Ljava/lang/String;

.field private final zzae:Ljava/lang/String;

.field private final zzaf:[Ljava/lang/String;

.field private final zzag:[I

.field private final zzah:I

.field private final zzai:[B

.field private final zzaj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/google/android/gms/internal/instantapps/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/instantapps/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/instantapps/zzh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[II[BZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/instantapps/zzh;->zzad:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/instantapps/zzh;->zzae:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/instantapps/zzh;->zzaf:[Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/instantapps/zzh;->zzag:[I

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/instantapps/zzh;->zzah:I

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/instantapps/zzh;->zzai:[B

    .line 8
    iput-boolean p7, p0, Lcom/google/android/gms/internal/instantapps/zzh;->zzaj:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzh;->zzad:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 15
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzh;->zzae:Ljava/lang/String;

    const/4 v2, 0x4

    .line 19
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzh;->zzaf:[Ljava/lang/String;

    const/4 v2, 0x5

    .line 23
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    .line 25
    iget v0, p0, Lcom/google/android/gms/internal/instantapps/zzh;->zzah:I

    const/4 v2, 0x6

    .line 26
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzh;->zzai:[B

    const/4 v2, 0x7

    .line 30
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzh;->zzag:[I

    const/16 v2, 0x8

    .line 34
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntArray(Landroid/os/Parcel;I[IZ)V

    .line 36
    iget-boolean v0, p0, Lcom/google/android/gms/internal/instantapps/zzh;->zzaj:Z

    const/16 v1, 0x9

    .line 37
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 38
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
