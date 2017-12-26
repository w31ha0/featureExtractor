.class Lcom/google/android/gms/internal/zznn$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/internal/zznq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaDT:Lcom/google/android/gms/internal/zznn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zznn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznn$1;->zzaDT:Lcom/google/android/gms/internal/zznn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/zznq;

    check-cast p2, Lcom/google/android/gms/internal/zznq;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zznn$1;->zza(Lcom/google/android/gms/internal/zznq;Lcom/google/android/gms/internal/zznq;)I

    move-result v0

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zznq;Lcom/google/android/gms/internal/zznq;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
