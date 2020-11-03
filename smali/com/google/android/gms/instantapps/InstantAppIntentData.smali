.class public Lcom/google/android/gms/instantapps/InstantAppIntentData;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/instantapps/InstantAppIntentData$MatchResult;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/instantapps/InstantAppIntentData;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_LAUNCH_OK:I = 0x0

.field public static final RESULT_NO_LAUNCH:I = 0x1

.field public static final RESULT_NO_LAUNCH_HOLDBACK:I = 0x2

.field public static final RESULT_USER_PREFERS_BROWSER:I = 0x3

.field public static final zzj:Lcom/google/android/gms/instantapps/InstantAppIntentData;


# instance fields
.field private final intent:Landroid/content/Intent;

.field private final packageName:Ljava/lang/String;

.field private final zzk:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/google/android/gms/instantapps/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/instantapps/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/instantapps/InstantAppIntentData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 23
    new-instance v0, Lcom/google/android/gms/instantapps/InstantAppIntentData;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/google/android/gms/instantapps/InstantAppIntentData;-><init>(Landroid/content/Intent;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/instantapps/InstantAppIntentData;->zzj:Lcom/google/android/gms/instantapps/InstantAppIntentData;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/instantapps/InstantAppIntentData;->intent:Landroid/content/Intent;

    .line 3
    iput p2, p0, Lcom/google/android/gms/instantapps/InstantAppIntentData;->zzk:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/instantapps/InstantAppIntentData;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/instantapps/InstantAppIntentData;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMatchResult()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/android/gms/instantapps/InstantAppIntentData;->zzk:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/instantapps/InstantAppIntentData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/instantapps/InstantAppIntentData;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 13
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/instantapps/InstantAppIntentData;->getMatchResult()I

    move-result p2

    const/4 v1, 0x2

    .line 16
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/instantapps/InstantAppIntentData;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    .line 19
    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 20
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
