.class final Lcom/google/android/gms/internal/instantapps/zzfq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private zzate:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic zzatf:I

.field private final synthetic zzatg:Lcom/google/android/gms/internal/instantapps/zzfr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/instantapps/zzfr;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/instantapps/zzfq;->zzatg:Lcom/google/android/gms/internal/instantapps/zzfr;

    iput p2, p0, Lcom/google/android/gms/internal/instantapps/zzfq;->zzatf:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/instantapps/zzfq;->zzatg:Lcom/google/android/gms/internal/instantapps/zzfr;

    invoke-static {p1}, Lcom/google/android/gms/internal/instantapps/zzfr;->zza(Lcom/google/android/gms/internal/instantapps/zzfr;)Lcom/google/android/gms/internal/instantapps/zzdm;

    move-result-object p1

    iget p2, p0, Lcom/google/android/gms/internal/instantapps/zzfq;->zzatf:I

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/instantapps/zzdm;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/instantapps/zzfq;->zzate:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public final synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final hasNext()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzfq;->zzate:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzfq;->zzate:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzfq;->zzate:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final nextIndex()I
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzfq;->zzate:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzfq;->zzate:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/instantapps/zzfq;->zzate:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final remove()V
    .locals 1

    .line 7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
