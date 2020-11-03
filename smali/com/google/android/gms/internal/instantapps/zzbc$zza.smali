.class public final Lcom/google/android/gms/internal/instantapps/zzbc$zza;
.super Lcom/google/android/gms/internal/instantapps/zzcx;

# interfaces
.implements Lcom/google/android/gms/internal/instantapps/zzeh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/instantapps/zzbc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/instantapps/zzbc$zza$zza;,
        Lcom/google/android/gms/internal/instantapps/zzbc$zza$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/instantapps/zzcx<",
        "Lcom/google/android/gms/internal/instantapps/zzbc$zza;",
        "Lcom/google/android/gms/internal/instantapps/zzbc$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/instantapps/zzeh;"
    }
.end annotation


# static fields
.field private static volatile zzcw:Lcom/google/android/gms/internal/instantapps/zzeo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/instantapps/zzeo<",
            "Lcom/google/android/gms/internal/instantapps/zzbc$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdb:Lcom/google/android/gms/internal/instantapps/zzbc$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/instantapps/zzbc$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/instantapps/zzbc$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/instantapps/zzbc$zza;->zzdb:Lcom/google/android/gms/internal/instantapps/zzbc$zza;

    .line 23
    const-class v1, Lcom/google/android/gms/internal/instantapps/zzbc$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/instantapps/zzcx;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/instantapps/zzcx;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/instantapps/zzcx;-><init>()V

    return-void
.end method

.method static synthetic zzj()Lcom/google/android/gms/internal/instantapps/zzbc$zza;
    .locals 1

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/instantapps/zzbc$zza;->zzdb:Lcom/google/android/gms/internal/instantapps/zzbc$zza;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/instantapps/zzbb;->zzct:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 20
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 18
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/instantapps/zzbc$zza;->zzcw:Lcom/google/android/gms/internal/instantapps/zzeo;

    if-nez p1, :cond_1

    .line 11
    const-class p2, Lcom/google/android/gms/internal/instantapps/zzbc$zza;

    monitor-enter p2

    .line 12
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/instantapps/zzbc$zza;->zzcw:Lcom/google/android/gms/internal/instantapps/zzeo;

    if-nez p1, :cond_0

    .line 14
    new-instance p1, Lcom/google/android/gms/internal/instantapps/zzcx$zzc;

    sget-object p3, Lcom/google/android/gms/internal/instantapps/zzbc$zza;->zzdb:Lcom/google/android/gms/internal/instantapps/zzbc$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/instantapps/zzcx$zzc;-><init>(Lcom/google/android/gms/internal/instantapps/zzcx;)V

    .line 15
    sput-object p1, Lcom/google/android/gms/internal/instantapps/zzbc$zza;->zzcw:Lcom/google/android/gms/internal/instantapps/zzeo;

    .line 16
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 8
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/instantapps/zzbc$zza;->zzdb:Lcom/google/android/gms/internal/instantapps/zzbc$zza;

    return-object p1

    .line 7
    :pswitch_4
    sget-object p1, Lcom/google/android/gms/internal/instantapps/zzbc$zza;->zzdb:Lcom/google/android/gms/internal/instantapps/zzbc$zza;

    const-string p3, "\u0001\u0000"

    invoke-static {p1, p3, p2}, Lcom/google/android/gms/internal/instantapps/zzbc$zza;->zza(Lcom/google/android/gms/internal/instantapps/zzef;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/instantapps/zzbc$zza$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/instantapps/zzbc$zza$zza;-><init>(Lcom/google/android/gms/internal/instantapps/zzbb;)V

    return-object p1

    .line 4
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/instantapps/zzbc$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/instantapps/zzbc$zza;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
