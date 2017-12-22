.class public Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;
.super Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;
.source "NativePlayer.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf-player"


# instance fields
.field private mNrdpPlayerState:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    .line 51
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->CLOSED:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->mNrdpPlayerState:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    .line 59
    return-void
.end method

.method private handleEvent(Lorg/json/JSONObject;)I
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 208
    .line 209
    const-string/jumbo v3, "data"

    invoke-virtual {p0, p1, v3, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 210
    if-nez v3, :cond_1

    .line 211
    const-string/jumbo v1, "nf-player"

    const-string/jumbo v2, "Player::processUpdate: Data not found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    const-string/jumbo v4, "type"

    invoke-virtual {p0, v3, v4, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 216
    sget-object v5, Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 217
    const-string/jumbo v5, "nf-player"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Event Type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_2
    sget-object v5, Lcom/netflix/mediaclient/event/nrdp/player/OpenComplete;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 223
    const-string/jumbo v0, "nf-player"

    const-string/jumbo v1, "Player::processUpdate: Event found openComplete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/player/OpenComplete;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/player/OpenComplete;-><init>(Lorg/json/JSONObject;)V

    move v0, v2

    .line 299
    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;

    if-eqz v2, :cond_0

    .line 300
    invoke-virtual {v1}, Lcom/netflix/mediaclient/event/nrdp/player/PlayerEvent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->handleListener(Ljava/lang/String;Lcom/netflix/mediaclient/event/UIEvent;)I

    goto :goto_0

    .line 227
    :cond_4
    sget-object v5, Lcom/netflix/mediaclient/event/nrdp/player/UpdatePts;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 228
    const-string/jumbo v0, "nf-player"

    const-string/jumbo v1, "Player::processUpdate: Event found UpdatePts. Consuming."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/player/UpdatePts;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/player/UpdatePts;-><init>(Lorg/json/JSONObject;)V

    move v0, v2

    .line 230
    goto :goto_1

    .line 231
    :cond_5
    sget-object v5, Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 232
    const-string/jumbo v0, "nf-player"

    const-string/jumbo v1, "Player::processUpdate: Event found Statechanged"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;-><init>(Lorg/json/JSONObject;)V

    move-object v0, v1

    .line 234
    check-cast v0, Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->updatePlayerState(Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;)V

    move v0, v2

    .line 235
    goto :goto_1

    .line 236
    :cond_6
    sget-object v5, Lcom/netflix/mediaclient/event/nrdp/player/Buffering;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 237
    const-string/jumbo v0, "nf-player"

    const-string/jumbo v1, "Player::processUpdate: Event found Buffering"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/player/Buffering;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/player/Buffering;-><init>(Lorg/json/JSONObject;)V

    move v0, v2

    .line 239
    goto :goto_1

    .line 240
    :cond_7
    sget-object v5, Lcom/netflix/mediaclient/event/nrdp/player/BufferRange;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 241
    const-string/jumbo v0, "nf-player"

    const-string/jumbo v1, "Player::processUpdate: Event found BufferRange"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/player/BufferRange;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/player/BufferRange;-><init>(Lorg/json/JSONObject;)V

    move v0, v2

    .line 243
    goto :goto_1

    .line 244
    :cond_8
    sget-object v5, Lcom/netflix/mediaclient/event/nrdp/player/GenericPlayerEvent;->bufferingComplete:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 245
    const-string/jumbo v0, "nf-player"

    const-string/jumbo v1, "Media::processUpdate: Event found bufferingComplete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/player/GenericPlayerEvent;

    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/player/GenericPlayerEvent;->bufferingComplete:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lcom/netflix/mediaclient/event/nrdp/player/GenericPlayerEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    move v0, v2

    .line 247
    goto/16 :goto_1

    .line 248
    :cond_9
    sget-object v5, Lcom/netflix/mediaclient/event/nrdp/player/AudioTrackChanged;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 249
    const-string/jumbo v0, "nf-player"

    const-string/jumbo v1, "Player::processUpdate: Event found AudioTrackChanged"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/player/AudioTrackChanged;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/player/AudioTrackChanged;-><init>(Lorg/json/JSONObject;)V

    move v0, v2

    .line 251
    goto/16 :goto_1

    .line 252
    :cond_a
    sget-object v5, Lcom/netflix/mediaclient/event/nrdp/player/UpdateVideoBitrate;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 253
    const-string/jumbo v0, "nf-player"

    const-string/jumbo v1, "Player::UpdateVideoBitrate: Event found UpdateVideoBitrate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/player/UpdateVideoBitrate;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/player/UpdateVideoBitrate;-><init>(Lorg/json/JSONObject;)V

    move v0, v2

    .line 255
    goto/16 :goto_1

    .line 256
    :cond_b
    sget-object v5, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 257
    const-string/jumbo v0, "nf-player"

    const-string/jumbo v1, "Player::StreamPresenting: Event found StreamPresenting"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/player/StreamPresenting;-><init>(Lorg/json/JSONObject;)V

    move v0, v2

    .line 259
    goto/16 :goto_1

    .line 260
    :cond_c
    sget-object v5, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 261
    const-string/jumbo v0, "nf-player"

    const-string/jumbo v1, "Player::processUpdate: Event found StreamSelected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/player/StreamSelected;-><init>(Lorg/json/JSONObject;)V

    move v0, v2

    .line 277
    goto/16 :goto_1

    :cond_d
    sget-object v5, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 278
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/player/StreamingStat;-><init>(Lorg/json/JSONObject;)V

    move v0, v2

    .line 279
    goto/16 :goto_1

    .line 280
    :cond_e
    sget-object v5, Lcom/netflix/mediaclient/event/nrdp/player/GenericPlayerEvent;->endOfStream:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 281
    const-string/jumbo v0, "nf-player"

    const-string/jumbo v1, "Player::processUpdate: Event found endOfStream"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/player/GenericPlayerEvent;

    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/player/GenericPlayerEvent;->endOfStream:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lcom/netflix/mediaclient/event/nrdp/player/GenericPlayerEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    move v0, v2

    .line 283
    goto/16 :goto_1

    .line 284
    :cond_f
    sget-object v5, Lcom/netflix/mediaclient/event/nrdp/player/GenericPlayerEvent;->underflow:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 285
    const-string/jumbo v0, "nf-player"

    const-string/jumbo v1, "Player::processUpdate: Event found underflow"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/player/GenericPlayerEvent;

    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/player/GenericPlayerEvent;->underflow:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lcom/netflix/mediaclient/event/nrdp/player/GenericPlayerEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    move v0, v2

    .line 287
    goto/16 :goto_1

    .line 288
    :cond_10
    sget-object v5, Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 289
    const-string/jumbo v0, "nf-player"

    const-string/jumbo v1, "Player::PlaybackReporter: Event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string/jumbo v0, "time"

    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;-><init>(Lorg/json/JSONObject;)V

    move v0, v2

    .line 292
    goto/16 :goto_1

    .line 293
    :cond_11
    sget-object v5, Lcom/netflix/mediaclient/event/nrdp/player/PlayerError;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 294
    const-string/jumbo v0, "nf-player"

    const-string/jumbo v1, "Media::processUpdate: Event found Error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/player/PlayerError;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/event/nrdp/player/PlayerError;-><init>(Lorg/json/JSONObject;)V

    move v0, v2

    .line 296
    goto/16 :goto_1
.end method

.method private handlePropertyUpdate(Lorg/json/JSONObject;)I
    .locals 1

    .prologue
    .line 203
    const/4 v0, -0x1

    return v0
.end method

.method private updatePlayerState(Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;)V
    .locals 2

    .prologue
    .line 305
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;->getState()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->CLOSED:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 306
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->CLOSED:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->mNrdpPlayerState:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;->getState()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->OPENING:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 308
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->OPENING:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->mNrdpPlayerState:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    goto :goto_0

    .line 309
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;->getState()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->PLAYING:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 310
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->PLAYING:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->mNrdpPlayerState:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    goto :goto_0

    .line 311
    :cond_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;->getState()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->PAUSED:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 312
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->PAUSED:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->mNrdpPlayerState:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    goto :goto_0

    .line 313
    :cond_4
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/player/StateChanged;->getState()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->STOPPED:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 314
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->STOPPED:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->mNrdpPlayerState:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    goto :goto_0
.end method


# virtual methods
.method public addManifest(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/player/AddManifest;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/javabridge/invoke/player/AddManifest;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 76
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/player/Close;

    invoke-direct {v1}, Lcom/netflix/mediaclient/javabridge/invoke/player/Close;-><init>()V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 124
    return-void
.end method

.method public externalIpAddressChange(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/player/ExternalIpAddressChange;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/javabridge/invoke/player/ExternalIpAddressChange;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 81
    return-void
.end method

.method public getBufferRange()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/player/GetBufferRange;

    invoke-direct {v1}, Lcom/netflix/mediaclient/javabridge/invoke/player/GetBufferRange;-><init>()V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 86
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-string/jumbo v0, "player"

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    const-string/jumbo v0, "nrdp.player"

    return-object v0
.end method

.method public getPlayerState()Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->mNrdpPlayerState:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    return-object v0
.end method

.method public obtainPlaybackStat()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/player/ObtainPlaybackStat;

    invoke-direct {v1}, Lcom/netflix/mediaclient/javabridge/invoke/player/ObtainPlaybackStat;-><init>()V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 91
    return-void
.end method

.method public obtainStreamingStat()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/player/ObtainStreamingStat;

    invoke-direct {v1}, Lcom/netflix/mediaclient/javabridge/invoke/player/ObtainStreamingStat;-><init>()V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 96
    return-void
.end method

.method public open(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7

    .prologue
    .line 115
    const-string/jumbo v0, "nf-player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Opening player with audioTrack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v6

    new-instance v0, Lcom/netflix/mediaclient/javabridge/invoke/player/Open;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/javabridge/invoke/player/Open;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v6, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 117
    const-string/jumbo v0, "nf-player"

    const-string/jumbo v1, "Opening player done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/player/Pause;

    invoke-direct {v1}, Lcom/netflix/mediaclient/javabridge/invoke/player/Pause;-><init>()V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 129
    return-void
.end method

.method public play(J)V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/player/Play;

    long-to-int v2, p1

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/javabridge/invoke/player/Play;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 139
    return-void
.end method

.method public processUpdate(Lorg/json/JSONObject;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 179
    :try_start_0
    const-string/jumbo v1, "type"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    const-string/jumbo v2, "PropertyUpdate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    if-eqz p1, :cond_0

    .line 188
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->handlePropertyUpdate(Lorg/json/JSONObject;)I

    move-result v0

    .line 198
    :goto_0
    return v0

    .line 190
    :cond_1
    const-string/jumbo v1, "nf-player"

    const-string/jumbo v2, "processUpdate: handle event"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->handleEvent(Lorg/json/JSONObject;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v1

    .line 195
    const-string/jumbo v2, "nf-player"

    const-string/jumbo v3, "Failed with JSON"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public provideLicense(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/player/ProvideLicense;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/javabridge/invoke/player/ProvideLicense;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 158
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public setAudioTrack(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    const-string/jumbo v1, "nrdp.player"

    const-string/jumbo v2, "currentAudioTrack"

    invoke-interface {v0, v1, v2, p1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public setStreamingBuffer(ZII)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/player/SetStreamingBuffer;

    invoke-direct {v1, p1, p2, p3}, Lcom/netflix/mediaclient/javabridge/invoke/player/SetStreamingBuffer;-><init>(ZII)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 106
    return-void
.end method

.method public setStreamingConfig(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/SetConfigData;

    const-string/jumbo v2, "streaming"

    invoke-direct {v1, p1, v2}, Lcom/netflix/mediaclient/javabridge/invoke/SetConfigData;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 71
    :cond_0
    return-void
.end method

.method public setVideoBitrateRanges(II)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/player/SetVideoBitrateRanges;

    invoke-direct {v1, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/player/SetVideoBitrateRanges;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 101
    return-void
.end method

.method public skip(I)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/player/Skip;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/javabridge/invoke/player/Skip;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 149
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/player/Stop;

    invoke-direct {v1}, Lcom/netflix/mediaclient/javabridge/invoke/player/Stop;-><init>()V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 144
    return-void
.end method

.method public swim(IZIZ)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/player/Swim;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/netflix/mediaclient/javabridge/invoke/player/Swim;-><init>(IZIZ)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 154
    return-void
.end method

.method public unpause()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/player/Unpause;

    invoke-direct {v1}, Lcom/netflix/mediaclient/javabridge/invoke/player/Unpause;-><init>()V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 134
    return-void
.end method
