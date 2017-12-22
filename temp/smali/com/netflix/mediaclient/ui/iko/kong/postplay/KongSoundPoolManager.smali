.class public Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;
.super Ljava/lang/Object;
.source "KongSoundPoolManager.java"


# static fields
.field public static final LOOP:I = 0x0

.field public static final PRIORITY:I = 0x1

.field public static final RATE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "KongSoundPoolManager"


# instance fields
.field postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

.field soundIdToLoadedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private soundPool:Landroid/media/SoundPool;

.field soundUrlToIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->soundIdToLoadedMap:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->soundUrlToIdMap:Ljava/util/Map;

    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    .line 30
    return-void
.end method


# virtual methods
.method public autoPause()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoPause()V

    .line 133
    :cond_0
    return-void
.end method

.method public autoResume()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoResume()V

    .line 139
    :cond_0
    return-void
.end method

.method createSoundPool()V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AudioUtils;->createSoundPool(I)Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->soundPool:Landroid/media/SoundPool;

    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->soundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->soundPool:Landroid/media/SoundPool;

    new-instance v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager$1;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 49
    return-void
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->soundIdToLoadedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->soundUrlToIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadSoundPoolVo(Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;)I
    .locals 10

    .prologue
    const/4 v7, -0x1

    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->soundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    .line 83
    const-string/jumbo v0, "KongSoundPoolManager"

    const-string/jumbo v1, "Sound is null. Request to load url failed "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    :goto_0
    return v7

    .line 87
    :cond_1
    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->getLocalUrl()Ljava/lang/String;

    move-result-object v9

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->soundUrlToIdMap:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->soundUrlToIdMap:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_0

    .line 103
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    const/4 v0, 0x0

    .line 107
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v8}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->getByteOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->getByteSize()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 118
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->soundUrlToIdMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v7, v0

    .line 126
    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    const-string/jumbo v1, "KongSoundPoolManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IOException while closing input stream for file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 112
    :catch_1
    move-exception v1

    .line 113
    :goto_2
    :try_start_3
    const-string/jumbo v1, "KongSoundPoolManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FileNotFoundException while loading resource from cache file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 118
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move v0, v7

    .line 122
    goto :goto_1

    .line 119
    :catch_2
    move-exception v0

    .line 120
    const-string/jumbo v0, "KongSoundPoolManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IOException while closing input stream for file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 123
    goto :goto_1

    .line 114
    :catch_3
    move-exception v1

    move-object v8, v0

    .line 115
    :goto_3
    :try_start_5
    const-string/jumbo v0, "KongSoundPoolManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IOException while loading resource from cache file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 118
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    move v0, v7

    .line 122
    goto/16 :goto_1

    .line 119
    :catch_4
    move-exception v0

    .line 120
    const-string/jumbo v0, "KongSoundPoolManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IOException while closing input stream for file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 123
    goto/16 :goto_1

    .line 117
    :catchall_0
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    .line 118
    :goto_4
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 122
    :goto_5
    throw v0

    .line 119
    :catch_5
    move-exception v1

    .line 120
    const-string/jumbo v1, "KongSoundPoolManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IOException while closing input stream for file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 117
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_4

    .line 114
    :catch_6
    move-exception v0

    goto :goto_3

    .line 112
    :catch_7
    move-exception v0

    move-object v0, v8

    goto/16 :goto_2

    :cond_3
    move v0, v7

    goto/16 :goto_1
.end method

.method playSoundPoolId(IF)V
    .locals 7

    .prologue
    .line 52
    if-gez p1, :cond_1

    .line 53
    const-string/jumbo v0, "KongSoundPoolManager"

    const-string/jumbo v1, "Received an invalid sound id. Ignoring request to play sound."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->soundIdToLoadedMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 58
    const-string/jumbo v0, "KongSoundPoolManager"

    const-string/jumbo v1, "Received a sound id that is not loaded in to memory yet. Ignoring request to play sound."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->soundIdToLoadedMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 63
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 64
    const-string/jumbo v0, "KongSoundPoolManager"

    const-string/jumbo v1, "Received a sound id that failed to load to memory. Ignoring request to play sound."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->isPostPlayPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->stop(I)V

    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->soundPool:Landroid/media/SoundPool;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p1

    move v2, p2

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    .line 71
    if-nez v0, :cond_0

    .line 72
    const-string/jumbo v0, "KongSoundPoolManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request to play stream = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->soundPool:Landroid/media/SoundPool;

    .line 146
    :cond_0
    return-void
.end method
