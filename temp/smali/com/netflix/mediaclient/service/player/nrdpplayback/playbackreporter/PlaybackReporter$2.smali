.class synthetic Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$2;
.super Ljava/lang/Object;
.source "PlaybackReporter.java"


# static fields
.field static final synthetic $SwitchMap$com$netflix$mediaclient$android$app$Status$ErrorGroup:[I

.field static final synthetic $SwitchMap$com$netflix$mediaclient$service$player$nrdpplayback$StreamingPlaybackErrorCode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1997
    invoke-static {}, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->values()[Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$2;->$SwitchMap$com$netflix$mediaclient$android$app$Status$ErrorGroup:[I

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$2;->$SwitchMap$com$netflix$mediaclient$android$app$Status$ErrorGroup:[I

    sget-object v1, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->BladerunnerError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$2;->$SwitchMap$com$netflix$mediaclient$android$app$Status$ErrorGroup:[I

    sget-object v1, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->NetworkError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$2;->$SwitchMap$com$netflix$mediaclient$android$app$Status$ErrorGroup:[I

    sget-object v1, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->HttpError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$2;->$SwitchMap$com$netflix$mediaclient$android$app$Status$ErrorGroup:[I

    sget-object v1, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->DrmError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$2;->$SwitchMap$com$netflix$mediaclient$android$app$Status$ErrorGroup:[I

    sget-object v1, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->MslError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    .line 1935
    :goto_4
    invoke-static {}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->values()[Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$2;->$SwitchMap$com$netflix$mediaclient$service$player$nrdpplayback$StreamingPlaybackErrorCode:[I

    :try_start_5
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$2;->$SwitchMap$com$netflix$mediaclient$service$player$nrdpplayback$StreamingPlaybackErrorCode:[I

    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->MANIFEST_PROCESS_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$2;->$SwitchMap$com$netflix$mediaclient$service$player$nrdpplayback$StreamingPlaybackErrorCode:[I

    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->MANIFEST_CACHE_EXTRACT_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$2;->$SwitchMap$com$netflix$mediaclient$service$player$nrdpplayback$StreamingPlaybackErrorCode:[I

    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->MANIFEST_FETCH_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$2;->$SwitchMap$com$netflix$mediaclient$service$player$nrdpplayback$StreamingPlaybackErrorCode:[I

    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->LICENSE_FETCH_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$2;->$SwitchMap$com$netflix$mediaclient$service$player$nrdpplayback$StreamingPlaybackErrorCode:[I

    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->LICENSE_SESSION_UNAVAILABLE_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    return-void

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_5

    .line 1997
    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_1

    :catch_9
    move-exception v0

    goto :goto_0
.end method
