.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGameSearchSuggestionsResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/GamesMetadata$LoadGameSearchSuggestionsResult;


# instance fields
.field private final zzaps:Lcom/google/android/gms/games/internal/game/GameSearchSuggestionBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/internal/game/GameSearchSuggestionBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/game/GameSearchSuggestionBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGameSearchSuggestionsResultImpl;->zzaps:Lcom/google/android/gms/games/internal/game/GameSearchSuggestionBuffer;

    return-void
.end method
