.class final synthetic Lcom/google/android/gms/instantapps/zzg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;


# static fields
.field static final zzn:Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/instantapps/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/instantapps/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/instantapps/zzg;->zzn:Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;

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

    check-cast p1, Lcom/google/android/gms/instantapps/zze;

    invoke-interface {p1}, Lcom/google/android/gms/instantapps/zze;->zzb()Lcom/google/android/gms/instantapps/LaunchData;

    move-result-object p1

    return-object p1
.end method
