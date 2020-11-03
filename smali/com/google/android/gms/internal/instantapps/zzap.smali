.class public final Lcom/google/android/gms/internal/instantapps/zzap;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/instantapps/zzap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final port:I

.field private final zzad:Ljava/lang/String;

.field private final zzby:Ljava/lang/String;

.field private final zzbz:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzca:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzcb:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzcc:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzcd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/google/android/gms/internal/instantapps/zzas;

    invoke-direct {v0}, Lcom/google/android/gms/internal/instantapps/zzas;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/instantapps/zzap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/instantapps/zzap;->zzby:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/instantapps/zzap;->port:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/instantapps/zzap;->zzbz:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/instantapps/zzap;->zzca:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/instantapps/zzap;->zzcb:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/instantapps/zzap;->zzcc:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/instantapps/zzap;->zzad:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/instantapps/zzap;->zzcd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzap;->zzby:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 16
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/instantapps/zzap;->port:I

    const/4 v2, 0x3

    .line 19
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzap;->zzbz:Ljava/lang/String;

    const/4 v2, 0x4

    .line 23
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzap;->zzca:Ljava/lang/String;

    const/4 v2, 0x5

    .line 27
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzap;->zzcb:Ljava/lang/String;

    const/4 v2, 0x6

    .line 31
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzap;->zzad:Ljava/lang/String;

    const/4 v2, 0x7

    .line 35
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzap;->zzcd:Ljava/lang/String;

    const/16 v2, 0x8

    .line 39
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzap;->zzcb:Ljava/lang/String;

    const/16 v2, 0x9

    .line 43
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 44
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
