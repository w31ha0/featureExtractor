.class Lcom/google/android/gms/games/internal/api/AchievementsImpl$10;
.super Lcom/google/android/gms/games/internal/api/AchievementsImpl$LoadImpl;


# instance fields
.field final synthetic zzTE:Ljava/lang/String;

.field final synthetic zzaqA:Ljava/lang/String;

.field final synthetic zzaqy:Z


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/common/api/Api$Client;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$10;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$10;->zzTE:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$10;->zzaqA:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$10;->zzaqy:Z

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Lcom/google/android/gms/common/api/zza$zzb;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
