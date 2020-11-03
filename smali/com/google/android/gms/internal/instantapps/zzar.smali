.class public final Lcom/google/android/gms/internal/instantapps/zzar;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/instantapps/zzar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzce:Z

.field private zzcf:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzcg:Z

.field private zzch:Z

.field private zzci:Z

.field private zzcj:Z

.field private zzck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/instantapps/zzau;

    invoke-direct {v0}, Lcom/google/android/gms/internal/instantapps/zzau;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/instantapps/zzar;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method constructor <init>(ZLjava/lang/String;ZZZZZ)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/instantapps/zzar;->zzce:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/instantapps/zzar;->zzcf:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/internal/instantapps/zzar;->zzcg:Z

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/internal/instantapps/zzar;->zzch:Z

    .line 6
    iput-boolean p5, p0, Lcom/google/android/gms/internal/instantapps/zzar;->zzci:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/instantapps/zzar;->zzcj:Z

    .line 8
    iput-boolean p7, p0, Lcom/google/android/gms/internal/instantapps/zzar;->zzck:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/instantapps/zzar;->zzce:Z

    const/4 v1, 0x1

    .line 15
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzar;->zzcf:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 19
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 21
    iget-boolean v0, p0, Lcom/google/android/gms/internal/instantapps/zzar;->zzcg:Z

    const/4 v1, 0x3

    .line 22
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 24
    iget-boolean v0, p0, Lcom/google/android/gms/internal/instantapps/zzar;->zzch:Z

    const/4 v1, 0x4

    .line 25
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 27
    iget-boolean v0, p0, Lcom/google/android/gms/internal/instantapps/zzar;->zzci:Z

    const/4 v1, 0x5

    .line 28
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 30
    iget-boolean v0, p0, Lcom/google/android/gms/internal/instantapps/zzar;->zzcj:Z

    const/4 v1, 0x6

    .line 31
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 33
    iget-boolean v0, p0, Lcom/google/android/gms/internal/instantapps/zzar;->zzck:Z

    const/4 v1, 0x7

    .line 34
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 35
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
