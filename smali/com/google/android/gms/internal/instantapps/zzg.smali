.class public final Lcom/google/android/gms/internal/instantapps/zzg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/instantapps/ActivityCompat;


# instance fields
.field private final zzac:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/instantapps/zzg;->zzac:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final getCallingActivity()Landroid/content/ComponentName;
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzg;->zzac:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.instantapps.supervisor"

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/instantapps/zzg;->zzac:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/internal/instantapps/zzah;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/instantapps/zzah;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 16
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/instantapps/zzah;->zzc(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "IAActivityCompat"

    const-string v3, "Error getting calling activity"

    .line 21
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method

.method public final getCallingPackage()Ljava/lang/String;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/instantapps/zzg;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
