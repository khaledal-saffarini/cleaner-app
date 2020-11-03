.class public final Lcom/google/android/gms/internal/instantapps/zzw;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/instantapps/zzw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final splitName:Ljava/lang/String;

.field private final versionCode:I

.field private final zzar:I

.field private final zzas:Ljava/lang/String;

.field private final zzat:Z

.field private final zzau:Landroid/content/Intent;

.field private final zzav:Landroid/content/Intent;

.field private final zzaw:Lcom/google/android/gms/internal/instantapps/zzf;

.field private final zzax:Lcom/google/android/gms/internal/instantapps/zzap;

.field private final zzay:Z

.field private final zzaz:[B

.field private final zzba:I

.field private final zzbb:[B

.field private final zzbc:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lcom/google/android/gms/internal/instantapps/zzv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/instantapps/zzv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/instantapps/zzw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ZLandroid/content/Intent;Landroid/content/Intent;Lcom/google/android/gms/internal/instantapps/zzf;Lcom/google/android/gms/internal/instantapps/zzap;Z[BLjava/lang/String;IILjava/lang/String;[BLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/instantapps/zzw;->zzar:I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/instantapps/zzw;->zzas:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/internal/instantapps/zzw;->zzat:Z

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/instantapps/zzw;->zzau:Landroid/content/Intent;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/instantapps/zzw;->zzav:Landroid/content/Intent;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/instantapps/zzw;->zzaw:Lcom/google/android/gms/internal/instantapps/zzf;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/instantapps/zzw;->zzax:Lcom/google/android/gms/internal/instantapps/zzap;

    .line 9
    iput-boolean p8, p0, Lcom/google/android/gms/internal/instantapps/zzw;->zzay:Z

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/internal/instantapps/zzw;->zzaz:[B

    .line 11
    iput-object p10, p0, Lcom/google/android/gms/internal/instantapps/zzw;->packageName:Ljava/lang/String;

    .line 12
    iput p11, p0, Lcom/google/android/gms/internal/instantapps/zzw;->versionCode:I

    .line 13
    iput-object p13, p0, Lcom/google/android/gms/internal/instantapps/zzw;->splitName:Ljava/lang/String;

    .line 14
    iput p12, p0, Lcom/google/android/gms/internal/instantapps/zzw;->zzba:I

    .line 15
    iput-object p14, p0, Lcom/google/android/gms/internal/instantapps/zzw;->zzbb:[B

    .line 16
    iput-object p15, p0, Lcom/google/android/gms/internal/instantapps/zzw;->zzbc:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 21
    iget v1, p0, Lcom/google/android/gms/internal/instantapps/zzw;->zzar:I

    const/4 v2, 0x2

    .line 22
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/instantapps/zzw;->zzas:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 26
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 28
    iget-boolean v1, p0, Lcom/google/android/gms/internal/instantapps/zzw;->zzat:Z

    const/4 v3, 0x4

    .line 29
    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/instantapps/zzw;->zzau:Landroid/content/Intent;

    const/4 v3, 0x5

    .line 33
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 35
    iget-object v1, p0, Lcom/google/android/gms/internal/instantapps/zzw;->zzav:Landroid/content/Intent;

    const/4 v3, 0x6

    .line 37
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/internal/instantapps/zzw;->zzaw:Lcom/google/android/gms/internal/instantapps/zzf;

    const/16 v3, 0x8

    .line 41
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 43
    iget-object v1, p0, Lcom/google/android/gms/internal/instantapps/zzw;->zzax:Lcom/google/android/gms/internal/instantapps/zzap;

    const/16 v3, 0x9

    .line 45
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 47
    iget-boolean p2, p0, Lcom/google/android/gms/internal/instantapps/zzw;->zzay:Z

    const/16 v1, 0xa

    .line 48
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 50
    iget-object p2, p0, Lcom/google/android/gms/internal/instantapps/zzw;->zzaz:[B

    const/16 v1, 0xb

    .line 52
    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    .line 54
    iget-object p2, p0, Lcom/google/android/gms/internal/instantapps/zzw;->packageName:Ljava/lang/String;

    const/16 v1, 0xc

    .line 56
    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 58
    iget p2, p0, Lcom/google/android/gms/internal/instantapps/zzw;->versionCode:I

    const/16 v1, 0xd

    .line 59
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 61
    iget-object p2, p0, Lcom/google/android/gms/internal/instantapps/zzw;->splitName:Ljava/lang/String;

    const/16 v1, 0xe

    .line 63
    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 65
    iget-object p2, p0, Lcom/google/android/gms/internal/instantapps/zzw;->zzbc:Landroid/os/Bundle;

    const/16 v1, 0xf

    .line 67
    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 69
    iget p2, p0, Lcom/google/android/gms/internal/instantapps/zzw;->zzba:I

    const/16 v1, 0x10

    .line 70
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 72
    iget-object p2, p0, Lcom/google/android/gms/internal/instantapps/zzw;->zzbb:[B

    const/16 v1, 0x11

    .line 74
    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    .line 75
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
