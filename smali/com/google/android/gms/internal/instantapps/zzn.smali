.class public final Lcom/google/android/gms/internal/instantapps/zzn;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/instantapps/zzn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzam:I

.field private final zzan:J

.field private final zzao:I

.field private final zzap:Landroid/accounts/Account;

.field private final zzaq:[Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/instantapps/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/instantapps/zzq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/instantapps/zzn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJILandroid/accounts/Account;[Landroid/accounts/Account;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/instantapps/zzn;->zzam:I

    .line 3
    iput-wide p2, p0, Lcom/google/android/gms/internal/instantapps/zzn;->zzan:J

    .line 4
    iput p4, p0, Lcom/google/android/gms/internal/instantapps/zzn;->zzao:I

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/instantapps/zzn;->zzap:Landroid/accounts/Account;

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/instantapps/zzn;->zzaq:[Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 11
    iget v1, p0, Lcom/google/android/gms/internal/instantapps/zzn;->zzam:I

    const/4 v2, 0x2

    .line 12
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 14
    iget-wide v1, p0, Lcom/google/android/gms/internal/instantapps/zzn;->zzan:J

    const/4 v3, 0x3

    .line 15
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 17
    iget v1, p0, Lcom/google/android/gms/internal/instantapps/zzn;->zzao:I

    const/4 v2, 0x4

    .line 18
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/instantapps/zzn;->zzap:Landroid/accounts/Account;

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 22
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/instantapps/zzn;->zzaq:[Landroid/accounts/Account;

    const/4 v3, 0x6

    .line 26
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 27
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
