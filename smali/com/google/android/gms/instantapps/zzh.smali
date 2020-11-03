.class final synthetic Lcom/google/android/gms/instantapps/zzh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/util/BiConsumer;


# instance fields
.field private final zzp:Lcom/google/android/gms/instantapps/InstantAppsClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/instantapps/InstantAppsClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/instantapps/zzh;->zzp:Lcom/google/android/gms/instantapps/InstantAppsClient;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/instantapps/zzh;->zzp:Lcom/google/android/gms/instantapps/InstantAppsClient;

    check-cast p1, Lcom/google/android/gms/internal/instantapps/zzaf;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    new-instance v1, Lcom/google/android/gms/instantapps/zzj;

    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/instantapps/zzj;-><init>(Lcom/google/android/gms/instantapps/InstantAppsClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/instantapps/zzaf;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/instantapps/zzu;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/instantapps/zzu;->zzb(Lcom/google/android/gms/internal/instantapps/zzs;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method
