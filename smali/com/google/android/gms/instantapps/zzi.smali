.class final synthetic Lcom/google/android/gms/instantapps/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;


# static fields
.field static final zzn:Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/instantapps/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/instantapps/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/instantapps/zzi;->zzn:Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final convert(Lcom/google/android/gms/common/api/Result;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/instantapps/zzf;

    invoke-interface {p1}, Lcom/google/android/gms/instantapps/zzf;->zzc()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method
