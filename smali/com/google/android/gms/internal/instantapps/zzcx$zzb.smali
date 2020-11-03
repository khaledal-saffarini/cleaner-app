.class public abstract Lcom/google/android/gms/internal/instantapps/zzcx$zzb;
.super Lcom/google/android/gms/internal/instantapps/zzcx;

# interfaces
.implements Lcom/google/android/gms/internal/instantapps/zzeh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/instantapps/zzcx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/instantapps/zzcx$zzb<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/instantapps/zzcx<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/instantapps/zzeh;"
    }
.end annotation


# instance fields
.field protected zzapf:Lcom/google/android/gms/internal/instantapps/zzcq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/instantapps/zzcq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/instantapps/zzcx;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/instantapps/zzcq;->zzbl()Lcom/google/android/gms/internal/instantapps/zzcq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzcx$zzb;->zzapf:Lcom/google/android/gms/internal/instantapps/zzcq;

    return-void
.end method


# virtual methods
.method final zzcd()Lcom/google/android/gms/internal/instantapps/zzcq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/instantapps/zzcq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzcx$zzb;->zzapf:Lcom/google/android/gms/internal/instantapps/zzcq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/instantapps/zzcq;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzcx$zzb;->zzapf:Lcom/google/android/gms/internal/instantapps/zzcq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/instantapps/zzcq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/instantapps/zzcq;

    iput-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzcx$zzb;->zzapf:Lcom/google/android/gms/internal/instantapps/zzcq;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzcx$zzb;->zzapf:Lcom/google/android/gms/internal/instantapps/zzcq;

    return-object v0
.end method
