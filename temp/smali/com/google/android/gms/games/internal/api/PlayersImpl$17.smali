.class Lcom/google/android/gms/games/internal/api/PlayersImpl$17;
.super Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;


# instance fields
.field final synthetic zzaqy:Z

.field final synthetic zzarv:I


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$Client;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$17;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$17;->zzarv:I

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$17;->zzaqy:Z

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzd(Lcom/google/android/gms/common/api/zza$zzb;IZZ)V

    return-void
.end method
