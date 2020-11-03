.class public final Lcom/google/android/gms/instantapps/InstantApps;
.super Ljava/lang/Object;


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Lcom/google/android/gms/internal/instantapps/zzaf;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzl:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "Lcom/google/android/gms/internal/instantapps/zzaf;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzm:Lcom/google/android/gms/instantapps/zzc;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/instantapps/InstantApps;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 48
    new-instance v0, Lcom/google/android/gms/instantapps/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/instantapps/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/instantapps/InstantApps;->zzl:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 49
    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/instantapps/InstantApps;->zzl:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    sget-object v2, Lcom/google/android/gms/instantapps/InstantApps;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;

    const-string v3, "InstantApps.API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v0, Lcom/google/android/gms/instantapps/InstantApps;->API:Lcom/google/android/gms/common/api/Api;

    .line 50
    new-instance v0, Lcom/google/android/gms/internal/instantapps/zzy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/instantapps/zzy;-><init>()V

    sput-object v0, Lcom/google/android/gms/instantapps/InstantApps;->zzm:Lcom/google/android/gms/instantapps/zzc;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityCompat(Landroid/app/Activity;)Lcom/google/android/gms/instantapps/ActivityCompat;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/instantapps/zzg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/instantapps/zzg;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static getInstantAppsClient(Landroid/app/Activity;)Lcom/google/android/gms/instantapps/InstantAppsClient;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/instantapps/InstantAppsClient;

    invoke-direct {v0, p0}, Lcom/google/android/gms/instantapps/InstantAppsClient;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static getInstantAppsClient(Landroid/content/Context;)Lcom/google/android/gms/instantapps/InstantAppsClient;
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/gms/instantapps/InstantAppsClient;

    invoke-direct {v0, p0}, Lcom/google/android/gms/instantapps/InstantAppsClient;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getLauncher(Landroid/content/Context;)Lcom/google/android/gms/instantapps/Launcher;
    .locals 0

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/instantapps/zzaj;->zzf(Landroid/content/Context;)Lcom/google/android/gms/internal/instantapps/zzaj;

    move-result-object p0

    return-object p0
.end method

.method public static getPackageManagerCompat(Landroid/content/Context;)Lcom/google/android/gms/instantapps/PackageManagerCompat;
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/instantapps/zzao;->zza(Landroid/content/Context;Z)Lcom/google/android/gms/internal/instantapps/zzao;

    move-result-object p0

    return-object p0
.end method

.method public static showInstallPrompt(Landroid/app/Activity;Landroid/content/Intent;ILjava/lang/String;)Z
    .locals 8

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/instantapps/InstantApps;->getPackageManagerCompat(Landroid/content/Context;)Lcom/google/android/gms/instantapps/PackageManagerCompat;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/instantapps/PackageManagerCompat;->isInstantApp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    .line 10
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 11
    :cond_1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "market"

    .line 12
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "details"

    .line 13
    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v0, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 15
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v6, "referrer"

    if-nez v4, :cond_2

    .line 16
    invoke-virtual {v0, v6, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 17
    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.google.android.finsky.action.IA_INSTALL"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v4, "com.android.vending"

    .line 19
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v7, "postInstallIntent"

    .line 20
    invoke-virtual {v0, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    const/4 v7, 0x1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    .line 27
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return v7

    .line 31
    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.category.DEFAULT"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "callerId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "overlay"

    .line 35
    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 36
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 37
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 40
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 41
    invoke-virtual {v0, v6, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 42
    :cond_5
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return v7
.end method
