.class Lcom/google/android/gms/games/internal/api/QuestsImpl$5;
.super Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;


# instance fields
.field final synthetic zzaqA:Ljava/lang/String;

.field final synthetic zzaqV:I

.field final synthetic zzaqy:Z

.field final synthetic zzarI:[I

.field final synthetic zzarK:Ljava/lang/String;


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$Client;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$5;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 7

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$5;->zzaqA:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$5;->zzarK:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$5;->zzarI:[I

    iget v5, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$5;->zzaqV:I

    iget-boolean v6, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$5;->zzaqy:Z

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/common/api/zza$zzb;Ljava/lang/String;Ljava/lang/String;[IIZ)V

    return-void
.end method
