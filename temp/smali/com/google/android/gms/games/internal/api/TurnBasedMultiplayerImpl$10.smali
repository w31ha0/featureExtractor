.class Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$10;
.super Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$LoadMatchImpl;


# instance fields
.field final synthetic zzasp:Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;

.field final synthetic zzasq:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$10;->zzasp:Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$10;->zzasq:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$LoadMatchImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$Client;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$10;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$10;->zzasq:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzg(Lcom/google/android/gms/common/api/zza$zzb;Ljava/lang/String;)V

    return-void
.end method
