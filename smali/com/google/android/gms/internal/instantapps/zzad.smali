.class abstract Lcom/google/android/gms/internal/instantapps/zzad;
.super Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
        "TR;",
        "Lcom/google/android/gms/internal/instantapps/zzaf;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/instantapps/InstantApps;->API:Lcom/google/android/gms/common/api/Api;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/instantapps/zzaf;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/instantapps/zzaf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/instantapps/zzaf;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/instantapps/zzu;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/instantapps/zzad;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/instantapps/zzu;)V

    return-void
.end method

.method protected abstract zza(Landroid/content/Context;Lcom/google/android/gms/internal/instantapps/zzu;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
