.class public final Lcom/google/android/gms/internal/instantapps/zzao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/instantapps/PackageManagerCompat;


# static fields
.field private static zzbw:Lcom/google/android/gms/internal/instantapps/zzao;


# instance fields
.field private final zzbl:Landroid/content/Context;

.field private final zzbx:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbl:Landroid/content/Context;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbx:Z

    return-void
.end method

.method public static declared-synchronized zza(Landroid/content/Context;Z)Lcom/google/android/gms/internal/instantapps/zzao;
    .locals 2

    const-class p1, Lcom/google/android/gms/internal/instantapps/zzao;

    monitor-enter p1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/instantapps/zzo;->zza(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbw:Lcom/google/android/gms/internal/instantapps/zzao;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbw:Lcom/google/android/gms/internal/instantapps/zzao;

    iget-object v0, v0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbl:Landroid/content/Context;

    if-ne v0, p0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbw:Lcom/google/android/gms/internal/instantapps/zzao;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbx:Z

    if-eq v0, v1, :cond_1

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/instantapps/zzao;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/instantapps/zzao;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbw:Lcom/google/android/gms/internal/instantapps/zzao;

    .line 4
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbw:Lcom/google/android/gms/internal/instantapps/zzao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method


# virtual methods
.method public final getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 35
    iget-boolean v0, p0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbx:Z

    if-eqz v0, :cond_0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbl:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    nop

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbl:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/instantapps/zzah;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/instantapps/zzah;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    :try_start_1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/instantapps/zzah;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_1

    return-object p1

    :catch_1
    move-exception p1

    const-string p2, "InstantAppsPMW"

    const-string v0, "Error getting application info"

    .line 45
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    :cond_1
    new-instance p1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw p1
.end method

.method public final getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 2

    .line 47
    iget-boolean v0, p0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbx:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbl:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbl:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbl:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/instantapps/zzah;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/instantapps/zzah;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    :try_start_0
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/instantapps/zzah;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "InstantAppsPMW"

    const-string v1, "Error getting application label"

    .line 54
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 57
    iget-boolean v0, p0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbx:Z

    if-eqz v0, :cond_0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbl:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbl:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/instantapps/zzah;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/instantapps/zzah;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 62
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/instantapps/zzah;->zza(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "com.android.vending"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    const-string v1, "InstantAppsPMW"

    const-string v2, "Error getting UID for app package"

    .line 67
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    if-nez v0, :cond_2

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    :cond_2
    throw v0
.end method

.method public final getInstantAppCookie()[B
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbl:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/instantapps/zzah;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/instantapps/zzah;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/instantapps/zzah;->zzc(I)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "InstantAppsPMW"

    const-string v2, "Error setting cookie"

    .line 92
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getInstantAppCookieMaxSize()I
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbl:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/instantapps/zzah;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/instantapps/zzah;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/instantapps/zzah;->getInstantAppCookieMaxSize()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "InstantAppsPMW"

    const-string v2, "Error fetching max cookie size"

    .line 80
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 23
    iget-boolean v0, p0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbx:Z

    if-eqz v0, :cond_0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbl:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    nop

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbl:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/instantapps/zzah;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/instantapps/zzah;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    :try_start_1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/instantapps/zzah;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_1

    return-object p1

    :catch_1
    move-exception p1

    const-string p2, "InstantAppsPMW"

    const-string v0, "Error getting package info"

    .line 33
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    :cond_1
    new-instance p1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw p1
.end method

.method public final getPackagesForUid(I)[Ljava/lang/String;
    .locals 3

    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbx:Z

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbl:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbl:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/instantapps/zzah;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/instantapps/zzah;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 15
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/instantapps/zzah;->zzb(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "InstantAppsPMW"

    const-string v2, "Error getting app package for UID"

    .line 20
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v1
.end method

.method public final isInstantApp()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbl:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/instantapps/zzao;->isInstantApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isInstantApp(Ljava/lang/String;)Z
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbl:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/instantapps/zzah;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/instantapps/zzah;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/instantapps/zzah;->isInstantApp(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "InstantAppsPMW"

    const-string v1, "Error checking if app is instant app"

    .line 74
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final setInstantAppCookie([B)Z
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzao;->zzbl:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/instantapps/zzah;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/instantapps/zzah;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/instantapps/zzah;->zza(I[B)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "InstantAppsPMW"

    const-string v1, "Error setting cookie"

    .line 86
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
