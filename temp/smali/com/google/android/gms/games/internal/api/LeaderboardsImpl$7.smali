.class Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$SubmitScoreImpl;


# instance fields
.field final synthetic zzaqZ:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

.field final synthetic zzara:Ljava/lang/String;

.field final synthetic zzarg:J

.field final synthetic zzarh:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->zzaqZ:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->zzara:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->zzarg:J

    iput-object p6, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->zzarh:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$SubmitScoreImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$Client;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->zzara:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->zzarg:J

    iget-object v5, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->zzarh:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/common/api/zza$zzb;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
