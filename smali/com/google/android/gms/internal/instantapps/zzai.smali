.class public final Lcom/google/android/gms/internal/instantapps/zzai;
.super Ljava/lang/Object;


# static fields
.field private static zzbm:Ljava/lang/Boolean;

.field private static zzbn:Landroid/content/ContentProviderClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static declared-synchronized reset()V
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/instantapps/zzai;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/instantapps/zzai;->zzbn:Landroid/content/ContentProviderClient;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcom/google/android/gms/internal/instantapps/zzai;->zzbn:Landroid/content/ContentProviderClient;

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 99
    sput-object v2, Lcom/google/android/gms/internal/instantapps/zzai;->zzbn:Landroid/content/ContentProviderClient;

    .line 100
    :cond_0
    sput-object v2, Lcom/google/android/gms/internal/instantapps/zzai;->zzbm:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/instantapps/zzai;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/instantapps/zzai;->zzbn:Landroid/content/ContentProviderClient;

    if-nez v1, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/instantapps/zzj;->zzak:Landroid/net/Uri;

    .line 76
    invoke-virtual {p0, v1, p1, p2, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit v0

    return-object p0

    .line 78
    :cond_0
    :try_start_1
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/instantapps/zzai;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/instantapps/zzai;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/instantapps/zzai;->zzbn:Landroid/content/ContentProviderClient;

    invoke-virtual {v1, p0, p1, p2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/gms/internal/instantapps/zzar;Landroid/os/Bundle;)Lcom/google/android/gms/instantapps/InstantAppIntentData;
    .locals 6

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 79
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/instantapps/zzai;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;ZLcom/google/android/gms/internal/instantapps/zzar;Landroid/os/Bundle;)Lcom/google/android/gms/instantapps/InstantAppIntentData;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;ZLcom/google/android/gms/internal/instantapps/zzar;Landroid/os/Bundle;)Lcom/google/android/gms/instantapps/InstantAppIntentData;
    .locals 9

    const-string v0, "While calling %s %s:\n"

    const-string v1, "InstantAppsApi"

    const-string v2, "method_getInstantAppIntentData"

    const/4 v3, 0x0

    :goto_0
    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    .line 3
    sget-object v4, Lcom/google/android/gms/internal/instantapps/zzbc$zza$zzb;->zznu:Lcom/google/android/gms/internal/instantapps/zzbc$zza$zzb;

    invoke-static {v4}, Lcom/google/android/gms/internal/instantapps/zzp;->zza(Lcom/google/android/gms/internal/instantapps/zzbc$zza$zzb;)Lcom/google/android/gms/internal/instantapps/zzba$zzb;

    move-result-object v4

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/instantapps/zzai;->zzd(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5
    sget-object p0, Lcom/google/android/gms/instantapps/InstantAppIntentData;->zzj:Lcom/google/android/gms/instantapps/InstantAppIntentData;

    return-object p0

    .line 6
    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v6, 0x1

    const-string v7, "key_preferParcelableIntentData"

    .line 7
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p2, :cond_1

    const-string v7, "key_fallbackIntent"

    .line 9
    invoke-virtual {v5, v7, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 11
    invoke-static {p4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->serializeToBytes(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    move-result-object v7

    const-string v8, "key_routingOptions"

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_2
    if-eqz p5, :cond_3

    .line 13
    invoke-virtual {v5, p5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_3
    const/4 v7, 0x2

    .line 14
    :try_start_0
    invoke-static {p0, v2, p1, v5}, Lcom/google/android/gms/internal/instantapps/zzai;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p0, :cond_4

    .line 30
    sget-object p0, Lcom/google/android/gms/instantapps/InstantAppIntentData;->zzj:Lcom/google/android/gms/instantapps/InstantAppIntentData;

    return-object p0

    .line 31
    :cond_4
    const-class p1, Lcom/google/android/gms/instantapps/InstantAppIntentData;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/4 p1, 0x0

    :try_start_1
    const-string p2, "key_instantAppIntentDataParcelable"

    .line 33
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/instantapps/InstantAppIntentData;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object p2, p1

    :goto_1
    if-nez p2, :cond_6

    const-string p2, "key_instantAppIntentData"

    .line 37
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_5

    .line 39
    sget-object p0, Lcom/google/android/gms/instantapps/InstantAppIntentData;->zzj:Lcom/google/android/gms/instantapps/InstantAppIntentData;

    return-object p0

    .line 40
    :cond_5
    sget-object p2, Lcom/google/android/gms/instantapps/InstantAppIntentData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 41
    invoke-static {p0, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->deserializeFromBytes([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lcom/google/android/gms/instantapps/InstantAppIntentData;

    :cond_6
    if-eqz p2, :cond_9

    .line 43
    invoke-virtual {p2}, Lcom/google/android/gms/instantapps/InstantAppIntentData;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 44
    invoke-virtual {p2}, Lcom/google/android/gms/instantapps/InstantAppIntentData;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string p3, "key_eventListProtoBytes"

    invoke-virtual {p0, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 46
    invoke-virtual {p2}, Lcom/google/android/gms/instantapps/InstantAppIntentData;->getIntent()Landroid/content/Intent;

    move-result-object p0

    sget-object p4, Lcom/google/android/gms/internal/instantapps/zzbc$zza$zzb;->zznv:Lcom/google/android/gms/internal/instantapps/zzbc$zza$zzb;

    .line 47
    invoke-static {p4}, Lcom/google/android/gms/internal/instantapps/zzp;->zza(Lcom/google/android/gms/internal/instantapps/zzbc$zza$zzb;)Lcom/google/android/gms/internal/instantapps/zzba$zzb;

    move-result-object p4

    .line 49
    invoke-virtual {p0, p3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p5

    if-eqz p5, :cond_7

    .line 52
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/instantapps/zzba$zza;->zzf()Lcom/google/android/gms/internal/instantapps/zzba$zza$zza;

    move-result-object v0

    .line 53
    invoke-static {}, Lcom/google/android/gms/internal/instantapps/zzck;->zzbf()Lcom/google/android/gms/internal/instantapps/zzck;

    move-result-object v1

    .line 54
    array-length v2, p5

    invoke-virtual {v0, p5, v3, v2, v1}, Lcom/google/android/gms/internal/instantapps/zzbh;->zza([BIILcom/google/android/gms/internal/instantapps/zzck;)Lcom/google/android/gms/internal/instantapps/zzbh;

    move-result-object p5

    .line 55
    check-cast p5, Lcom/google/android/gms/internal/instantapps/zzba$zza$zza;
    :try_end_2
    .catch Lcom/google/android/gms/internal/instantapps/zzdf; {:try_start_2 .. :try_end_2} :catch_1

    move-object p1, p5

    goto :goto_2

    :catch_1
    move-exception p5

    const-string v0, "EventLogHelper"

    const-string v1, "Could not read event list proto"

    .line 58
    invoke-static {v0, v1, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_2
    if-nez p1, :cond_8

    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/instantapps/zzba$zza;->zzf()Lcom/google/android/gms/internal/instantapps/zzba$zza$zza;

    move-result-object p1

    .line 61
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/instantapps/zzba$zza$zza;->zza(Lcom/google/android/gms/internal/instantapps/zzba$zzb;)Lcom/google/android/gms/internal/instantapps/zzba$zza$zza;

    move-result-object p5

    invoke-virtual {p5, p4}, Lcom/google/android/gms/internal/instantapps/zzba$zza$zza;->zza(Lcom/google/android/gms/internal/instantapps/zzba$zzb;)Lcom/google/android/gms/internal/instantapps/zzba$zza$zza;

    goto :goto_3

    .line 62
    :cond_8
    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/internal/instantapps/zzba$zza$zza;->zza(ILcom/google/android/gms/internal/instantapps/zzba$zzb;)Lcom/google/android/gms/internal/instantapps/zzba$zza$zza;

    .line 63
    invoke-virtual {p1}, Lcom/google/android/gms/internal/instantapps/zzba$zza$zza;->zzd()I

    move-result p5

    invoke-virtual {p1, p5, p4}, Lcom/google/android/gms/internal/instantapps/zzba$zza$zza;->zza(ILcom/google/android/gms/internal/instantapps/zzba$zzb;)Lcom/google/android/gms/internal/instantapps/zzba$zza$zza;

    .line 64
    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzbw()Lcom/google/android/gms/internal/instantapps/zzef;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/instantapps/zzcx;

    check-cast p1, Lcom/google/android/gms/internal/instantapps/zzba$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/instantapps/zzbe;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_9
    return-object p2

    :catch_2
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception p0

    goto :goto_4

    :catch_4
    move-exception v4

    goto :goto_5

    :goto_4
    new-array p1, v7, [Ljava/lang/Object;

    .line 25
    sget-object p2, Lcom/google/android/gms/internal/instantapps/zzj;->zzak:Landroid/net/Uri;

    aput-object p2, p1, v3

    aput-object v2, p1, v6

    .line 26
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    sget-object p0, Lcom/google/android/gms/instantapps/InstantAppIntentData;->zzj:Lcom/google/android/gms/instantapps/InstantAppIntentData;

    return-object p0

    :goto_5
    new-array v5, v7, [Ljava/lang/Object;

    .line 17
    sget-object v7, Lcom/google/android/gms/internal/instantapps/zzj;->zzak:Landroid/net/Uri;

    aput-object v7, v5, v3

    aput-object v2, v5, v6

    .line 18
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/instantapps/zzai;->reset()V

    if-eqz p3, :cond_a

    const/4 p3, 0x0

    goto/16 :goto_0

    .line 23
    :cond_a
    sget-object p0, Lcom/google/android/gms/instantapps/InstantAppIntentData;->zzj:Lcom/google/android/gms/instantapps/InstantAppIntentData;

    return-object p0

    .line 2
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method

.method private static declared-synchronized zzc(Landroid/content/Context;)Z
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/instantapps/zzai;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/instantapps/zzai;->zzbn:Landroid/content/ContentProviderClient;

    if-nez v1, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/instantapps/zzj;->zzak:Landroid/net/Uri;

    .line 70
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/instantapps/zzai;->zzbn:Landroid/content/ContentProviderClient;

    .line 71
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/instantapps/zzai;->zzbn:Landroid/content/ContentProviderClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    :goto_0
    monitor-exit v0

    return p0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static declared-synchronized zzd(Landroid/content/Context;)Z
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/instantapps/zzai;

    monitor-enter v0

    if-eqz p0, :cond_1

    .line 82
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/instantapps/zzai;->zzbm:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 83
    sget-object p0, Lcom/google/android/gms/internal/instantapps/zzai;->zzbm:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    .line 84
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/internal/instantapps/zzai;->zze(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 85
    sput-object p0, Lcom/google/android/gms/internal/instantapps/zzai;->zzbm:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 81
    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter is null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized zze(Landroid/content/Context;)Z
    .locals 5

    const-class v0, Lcom/google/android/gms/internal/instantapps/zzai;

    monitor-enter v0

    .line 86
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/instantapps/zzav;->zzg(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 87
    monitor-exit v0

    return v2

    .line 89
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/internal/instantapps/zzj;->zzak:Landroid/net/Uri;

    .line 90
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 92
    monitor-exit v0

    return v2

    .line 93
    :cond_1
    :try_start_2
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.google.android.gms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string p0, "InstantAppsApi"

    const-string v3, "Incorrect package name for instant apps content provider: "

    .line 94
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    monitor-exit v0

    return v2

    .line 96
    :cond_3
    :try_start_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_5

    invoke-static {p0}, Lcom/google/android/gms/internal/instantapps/zzai;->zzc(Landroid/content/Context;)Z

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    monitor-exit v0

    return v2

    :cond_5
    :goto_1
    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
