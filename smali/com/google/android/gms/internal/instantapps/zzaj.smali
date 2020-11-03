.class public final Lcom/google/android/gms/internal/instantapps/zzaj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/instantapps/Launcher;


# static fields
.field private static zzbo:Lcom/google/android/gms/internal/instantapps/zzaj;


# instance fields
.field private final zzbl:Landroid/content/Context;

.field private final zzbp:Lcom/google/android/gms/internal/instantapps/zzy;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/instantapps/zzaj;->zzbl:Landroid/content/Context;

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/instantapps/zzy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/instantapps/zzy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/instantapps/zzaj;->zzbp:Lcom/google/android/gms/internal/instantapps/zzy;

    return-void
.end method

.method public static declared-synchronized zzf(Landroid/content/Context;)Lcom/google/android/gms/internal/instantapps/zzaj;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/instantapps/zzaj;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/instantapps/zzaj;->zzbo:Lcom/google/android/gms/internal/instantapps/zzaj;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/instantapps/zzaj;->zzbo:Lcom/google/android/gms/internal/instantapps/zzaj;

    iget-object v1, v1, Lcom/google/android/gms/internal/instantapps/zzaj;->zzbl:Landroid/content/Context;

    if-eq v1, p0, :cond_1

    .line 4
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/instantapps/zzaj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/instantapps/zzaj;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/internal/instantapps/zzaj;->zzbo:Lcom/google/android/gms/internal/instantapps/zzaj;

    .line 5
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/instantapps/zzaj;->zzbo:Lcom/google/android/gms/internal/instantapps/zzaj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final getInstantAppIntentData(Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/instantapps/InstantAppIntentData;
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzaj;->zzbl:Landroid/content/Context;

    .line 14
    new-instance v1, Lcom/google/android/gms/internal/instantapps/zzar;

    invoke-direct {v1}, Lcom/google/android/gms/internal/instantapps/zzar;-><init>()V

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/instantapps/zzai;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/gms/internal/instantapps/zzar;Landroid/os/Bundle;)Lcom/google/android/gms/instantapps/InstantAppIntentData;

    move-result-object p1

    return-object p1
.end method

.method public final getInstantAppLaunchData(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/instantapps/LaunchData;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzaj;->zzbl:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/instantapps/InstantApps;->getInstantAppsClient(Landroid/content/Context;)Lcom/google/android/gms/instantapps/InstantAppsClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/instantapps/InstantAppsClient;->getInstantAppLaunchData(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final initializeIntentClient()Z
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzaj;->zzbl:Landroid/content/Context;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/instantapps/zzai;->zzd(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
