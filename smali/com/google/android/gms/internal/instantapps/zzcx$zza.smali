.class public Lcom/google/android/gms/internal/instantapps/zzcx$zza;
.super Lcom/google/android/gms/internal/instantapps/zzbh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/instantapps/zzcx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/instantapps/zzcx<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/instantapps/zzcx$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/instantapps/zzbh<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final zzaoz:Lcom/google/android/gms/internal/instantapps/zzcx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected zzapa:Lcom/google/android/gms/internal/instantapps/zzcx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private zzapb:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/instantapps/zzcx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/instantapps/zzbh;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzaoz:Lcom/google/android/gms/internal/instantapps/zzcx;

    .line 3
    sget v0, Lcom/google/android/gms/internal/instantapps/zzcx$zzd;->zzapj:I

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/instantapps/zzcx;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/instantapps/zzcx;

    iput-object p1, p0, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzapa:Lcom/google/android/gms/internal/instantapps/zzcx;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzapb:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/instantapps/zzcx;Lcom/google/android/gms/internal/instantapps/zzcx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/instantapps/zzeq;->zzdi()Lcom/google/android/gms/internal/instantapps/zzeq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/instantapps/zzeq;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/instantapps/zzeu;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/instantapps/zzeu;->zzc(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/instantapps/zzcb;Lcom/google/android/gms/internal/instantapps/zzck;)Lcom/google/android/gms/internal/instantapps/zzcx$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/instantapps/zzcb;",
            "Lcom/google/android/gms/internal/instantapps/zzck;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzbs()V

    .line 46
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/instantapps/zzeq;->zzdi()Lcom/google/android/gms/internal/instantapps/zzeq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzapa:Lcom/google/android/gms/internal/instantapps/zzcx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/instantapps/zzeq;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/instantapps/zzeu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzapa:Lcom/google/android/gms/internal/instantapps/zzcx;

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/internal/instantapps/zzcc;->zza(Lcom/google/android/gms/internal/instantapps/zzcb;)Lcom/google/android/gms/internal/instantapps/zzcc;

    move-result-object p1

    .line 48
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/instantapps/zzeu;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/instantapps/zzev;Lcom/google/android/gms/internal/instantapps/zzck;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 53
    :cond_0
    throw p1
.end method

.method private final zzb([BIILcom/google/android/gms/internal/instantapps/zzck;)Lcom/google/android/gms/internal/instantapps/zzcx$zza;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/instantapps/zzck;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/instantapps/zzdf;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzbs()V

    .line 37
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/instantapps/zzeq;->zzdi()Lcom/google/android/gms/internal/instantapps/zzeq;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzapa:Lcom/google/android/gms/internal/instantapps/zzcx;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/instantapps/zzeq;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/instantapps/zzeu;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzapa:Lcom/google/android/gms/internal/instantapps/zzcx;

    const/4 v4, 0x0

    add-int/lit8 v5, p3, 0x0

    new-instance v6, Lcom/google/android/gms/internal/instantapps/zzbk;

    invoke-direct {v6, p4}, Lcom/google/android/gms/internal/instantapps/zzbk;-><init>(Lcom/google/android/gms/internal/instantapps/zzck;)V

    move-object v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/instantapps/zzeu;->zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/instantapps/zzbk;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/instantapps/zzdf; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 43
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 41
    :catch_1
    invoke-static {}, Lcom/google/android/gms/internal/instantapps/zzdf;->zzcf()Lcom/google/android/gms/internal/instantapps/zzdf;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    .line 39
    throw p1
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzaoz:Lcom/google/android/gms/internal/instantapps/zzcx;

    .line 69
    check-cast v0, Lcom/google/android/gms/internal/instantapps/zzcx;

    .line 70
    sget v1, Lcom/google/android/gms/internal/instantapps/zzcx$zzd;->zzapk:I

    const/4 v2, 0x0

    .line 71
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/instantapps/zzcx;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    check-cast v0, Lcom/google/android/gms/internal/instantapps/zzcx$zza;

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzbv()Lcom/google/android/gms/internal/instantapps/zzef;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/instantapps/zzcx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zza(Lcom/google/android/gms/internal/instantapps/zzcx;)Lcom/google/android/gms/internal/instantapps/zzcx$zza;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzapa:Lcom/google/android/gms/internal/instantapps/zzcx;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/instantapps/zzcx;->zza(Lcom/google/android/gms/internal/instantapps/zzcx;Z)Z

    move-result v0

    return v0
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/instantapps/zzbe;)Lcom/google/android/gms/internal/instantapps/zzbh;
    .locals 0

    .line 55
    check-cast p1, Lcom/google/android/gms/internal/instantapps/zzcx;

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zza(Lcom/google/android/gms/internal/instantapps/zzcx;)Lcom/google/android/gms/internal/instantapps/zzcx$zza;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/instantapps/zzcb;Lcom/google/android/gms/internal/instantapps/zzck;)Lcom/google/android/gms/internal/instantapps/zzbh;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzb(Lcom/google/android/gms/internal/instantapps/zzcb;Lcom/google/android/gms/internal/instantapps/zzck;)Lcom/google/android/gms/internal/instantapps/zzcx$zza;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza([BIILcom/google/android/gms/internal/instantapps/zzck;)Lcom/google/android/gms/internal/instantapps/zzbh;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/instantapps/zzdf;
        }
    .end annotation

    const/4 p2, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzb([BIILcom/google/android/gms/internal/instantapps/zzck;)Lcom/google/android/gms/internal/instantapps/zzcx$zza;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/instantapps/zzcx;)Lcom/google/android/gms/internal/instantapps/zzcx$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzbs()V

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzapa:Lcom/google/android/gms/internal/instantapps/zzcx;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zza(Lcom/google/android/gms/internal/instantapps/zzcx;Lcom/google/android/gms/internal/instantapps/zzcx;)V

    return-object p0
.end method

.method protected final zzbs()V
    .locals 3

    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzapb:Z

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzapa:Lcom/google/android/gms/internal/instantapps/zzcx;

    sget v1, Lcom/google/android/gms/internal/instantapps/zzcx$zzd;->zzapj:I

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/instantapps/zzcx;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Lcom/google/android/gms/internal/instantapps/zzcx;

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzapa:Lcom/google/android/gms/internal/instantapps/zzcx;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zza(Lcom/google/android/gms/internal/instantapps/zzcx;Lcom/google/android/gms/internal/instantapps/zzcx;)V

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzapa:Lcom/google/android/gms/internal/instantapps/zzcx;

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzapb:Z

    :cond_0
    return-void
.end method

.method public zzbt()Lcom/google/android/gms/internal/instantapps/zzcx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzapb:Z

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzapa:Lcom/google/android/gms/internal/instantapps/zzcx;

    return-object v0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzapa:Lcom/google/android/gms/internal/instantapps/zzcx;

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/instantapps/zzeq;->zzdi()Lcom/google/android/gms/internal/instantapps/zzeq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/instantapps/zzeq;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/instantapps/zzeu;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/instantapps/zzeu;->zzc(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzapb:Z

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzapa:Lcom/google/android/gms/internal/instantapps/zzcx;

    return-object v0
.end method

.method public final zzbu()Lcom/google/android/gms/internal/instantapps/zzcx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzbv()Lcom/google/android/gms/internal/instantapps/zzef;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/instantapps/zzcx;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/instantapps/zzcx;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 28
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/instantapps/zzfn;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/instantapps/zzfn;-><init>(Lcom/google/android/gms/internal/instantapps/zzef;)V

    .line 29
    throw v1
.end method

.method public synthetic zzbv()Lcom/google/android/gms/internal/instantapps/zzef;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzbt()Lcom/google/android/gms/internal/instantapps/zzcx;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzbw()Lcom/google/android/gms/internal/instantapps/zzef;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzbu()Lcom/google/android/gms/internal/instantapps/zzcx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzbx()Lcom/google/android/gms/internal/instantapps/zzef;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzcx$zza;->zzaoz:Lcom/google/android/gms/internal/instantapps/zzcx;

    return-object v0
.end method

.method public final synthetic zzo()Lcom/google/android/gms/internal/instantapps/zzbh;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/internal/instantapps/zzbh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/instantapps/zzcx$zza;

    return-object v0
.end method
