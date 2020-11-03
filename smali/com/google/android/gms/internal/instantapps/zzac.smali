.class final Lcom/google/android/gms/internal/instantapps/zzac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/instantapps/zzf;


# instance fields
.field private final synthetic zzbg:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/instantapps/zzz;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/instantapps/zzac;->zzbg:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzac;->zzbg:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final zzc()Landroid/os/ParcelFileDescriptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
