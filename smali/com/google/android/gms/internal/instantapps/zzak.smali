.class public final Lcom/google/android/gms/internal/instantapps/zzak;
.super Ljava/lang/Object;


# static fields
.field public static final zzbq:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.google.android.gms.instantapps.provider.api/"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/instantapps/zzak;->zzbq:Landroid/net/Uri;

    return-void
.end method
