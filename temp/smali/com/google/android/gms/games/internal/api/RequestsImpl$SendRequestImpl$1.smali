.class Lcom/google/android/gms/games/internal/api/RequestsImpl$SendRequestImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/request/Requests$SendRequestResult;


# instance fields
.field final synthetic zzOl:Lcom/google/android/gms/common/api/Status;

.field final synthetic zzarY:Lcom/google/android/gms/games/internal/api/RequestsImpl$SendRequestImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/RequestsImpl$SendRequestImpl;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$SendRequestImpl$1;->zzarY:Lcom/google/android/gms/games/internal/api/RequestsImpl$SendRequestImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$SendRequestImpl$1;->zzOl:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$SendRequestImpl$1;->zzOl:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
