.class public Lcom/netflix/mediaclient/media/BookmarkStore;
.super Ljava/lang/Object;
.source "BookmarkStore.java"


# static fields
.field private static final MAX_BOOKMARKS_PER_PROFILE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "nf_BookmarkStore"


# instance fields
.field private mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

.field private mBookmarkStoreFile:Ljava/io/File;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;-><init>(Lcom/netflix/mediaclient/media/BookmarkStore;Lcom/netflix/mediaclient/media/BookmarkStore$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    .line 51
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/BookmarkStore;->init(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/media/BookmarkStore;)Ljava/io/File;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkStoreFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/media/BookmarkStore;)Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    return-object v0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/media/BookmarkStore;Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;)Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    return-object p1
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/media/BookmarkStore;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/media/BookmarkStore;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/BookmarkStore;->saveBookmarkToFile()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/bookmarkStore.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkStoreFile:Ljava/io/File;

    .line 60
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/media/BookmarkStore$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/media/BookmarkStore$1;-><init>(Lcom/netflix/mediaclient/media/BookmarkStore;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method

.method private isProfileStillValid(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 181
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 182
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/StringUtils;->notEmptyAndEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const/4 v0, 0x1

    .line 186
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistBookmarkData()V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/media/BookmarkStore$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/media/BookmarkStore$2;-><init>(Lcom/netflix/mediaclient/media/BookmarkStore;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method private declared-synchronized saveBookmarkToFile()V
    .locals 6

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkStoreFile:Ljava/io/File;

    .line 143
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 142
    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/FileUtils;->writeBytesToFile(Ljava/lang/String;[B)Z

    move-result v1

    .line 144
    const-string/jumbo v2, "nf_BookmarkStore"

    const-string/jumbo v3, "setBookmark saving to file result=%b data=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setBookmarkNoPersist(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;)V
    .locals 5

    .prologue
    .line 149
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mVideoId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 150
    :cond_0
    const-string/jumbo v0, "nf_BookmarkStore"

    const-string/jumbo v1, "Bookmark or its video ID is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    return-void

    .line 153
    :cond_1
    const-string/jumbo v0, "nf_BookmarkStore"

    const-string/jumbo v1, "setBookmark videoId=%s, bookmarkTimeInSeconds=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mVideoId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p2, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mBookmarkInSecond:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 159
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/media/BookmarkStore;->trimSizeIfNeeded(Ljava/util/Map;)V

    .line 160
    iget-object v1, p2, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mVideoId:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private trimSizeIfNeeded(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    const/4 v4, 0x0

    .line 166
    const-wide/32 v2, 0x7fffffff

    .line 167
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 168
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 169
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;

    iget-wide v6, v0, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mBookmarkUpdateTimeInUTCMs:J

    cmp-long v0, v6, v2

    if-gez v0, :cond_2

    .line 171
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;

    iget-wide v2, v0, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mBookmarkUpdateTimeInUTCMs:J

    move-wide v8, v2

    move-object v2, v1

    move-wide v0, v8

    :goto_1
    move-object v4, v2

    move-wide v2, v0

    .line 173
    goto :goto_0

    .line 175
    :cond_0
    if-eqz v4, :cond_1

    .line 176
    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_1
    return-void

    :cond_2
    move-wide v0, v2

    move-object v2, v4

    goto :goto_1
.end method


# virtual methods
.method public createOrUpdateBookmark(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 236
    if-nez p1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    .line 238
    if-eqz v1, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 241
    instance-of v2, v1, Lcom/netflix/model/branches/FalkorVideo;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 242
    check-cast v0, Lcom/netflix/model/branches/FalkorVideo;

    .line 246
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getBookmark()Lcom/netflix/model/leafs/Video$Bookmark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Bookmark;->getBookmarkPosition()I

    move-result v0

    .line 247
    :goto_1
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableBookmarkUpdateTime()J

    move-result-wide v6

    .line 250
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/netflix/mediaclient/media/BookmarkStore;->getBookmark(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;

    move-result-object v2

    .line 251
    if-nez v2, :cond_4

    .line 252
    const-string/jumbo v2, "nf_BookmarkStore"

    const-string/jumbo v5, "createOrUpdateBookmark bookmarkStore has no bookmark"

    invoke-static {v2, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 260
    :goto_2
    if-eqz v2, :cond_0

    .line 261
    const-string/jumbo v2, "nf_BookmarkStore"

    const-string/jumbo v5, "createOrUpdateBookmark calling BookmarkStore.setBookmark time=%d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    invoke-static {v2, v5, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 262
    new-instance v2, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;

    .line 263
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v6, v7, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;-><init>(IJLjava/lang/String;)V

    .line 262
    invoke-virtual {p0, p2, v2}, Lcom/netflix/mediaclient/media/BookmarkStore;->setBookmark(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;)V

    goto :goto_0

    .line 246
    :cond_3
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableBookmarkPosition()I

    move-result v0

    goto :goto_1

    .line 254
    :cond_4
    iget-wide v8, v2, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mBookmarkUpdateTimeInUTCMs:J

    cmp-long v2, v8, v6

    if-gez v2, :cond_5

    .line 255
    const-string/jumbo v2, "nf_BookmarkStore"

    const-string/jumbo v5, "createOrUpdateBookmark bookmarkStore is older"

    invoke-static {v2, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 256
    goto :goto_2

    .line 258
    :cond_5
    const-string/jumbo v2, "nf_BookmarkStore"

    const-string/jumbo v5, "createOrUpdateBookmark bookmarkStore is newer"

    invoke-static {v2, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    goto :goto_2
.end method

.method public declared-synchronized getBookmark(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 127
    :goto_0
    monitor-exit p0

    return-object v0

    .line 114
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 115
    if-nez v0, :cond_1

    move-object v0, v1

    .line 116
    goto :goto_0

    .line 118
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCWVideosFetched(Ljava/util/List;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 222
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 192
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v4

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    .line 196
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/netflix/mediaclient/media/BookmarkStore;->getBookmark(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;

    move-result-object v3

    .line 198
    if-nez v3, :cond_2

    .line 200
    const-string/jumbo v3, "nf_BookmarkStore"

    const-string/jumbo v6, "got a new bookmark"

    invoke-static {v3, v6}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 211
    :goto_2
    if-eqz v3, :cond_4

    .line 212
    new-instance v2, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getPlayableBookmarkPosition()I

    move-result v3

    .line 213
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getPlayableBookmarkUpdateTime()J

    move-result-wide v6

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v6, v7, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;-><init>(IJLjava/lang/String;)V

    .line 214
    invoke-direct {p0, p2, v2}, Lcom/netflix/mediaclient/media/BookmarkStore;->setBookmarkNoPersist(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;)V

    move v0, v1

    :goto_3
    move v2, v0

    .line 217
    goto :goto_1

    .line 202
    :cond_2
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v8, v3, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mBookmarkUpdateTimeInUTCMs:J

    .line 203
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getPlayableBookmarkUpdateTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 202
    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    .line 204
    const-string/jumbo v3, "nf_BookmarkStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bookMarkStoreTimeIsNewBySeconds="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_5

    move v3, v1

    .line 207
    goto :goto_2

    .line 219
    :cond_3
    if-eqz v2, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/BookmarkStore;->persistBookmarkData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v3, v4

    goto :goto_2
.end method

.method public declared-synchronized setBookmark(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;)V
    .locals 2

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 110
    :goto_0
    monitor-exit p0

    return-void

    .line 104
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 105
    :cond_1
    :try_start_1
    const-string/jumbo v0, "nf_BookmarkStore"

    const-string/jumbo v1, "setBookmark not valid data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 108
    :cond_2
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/media/BookmarkStore;->setBookmarkNoPersist(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;)V

    .line 109
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/BookmarkStore;->persistBookmarkData()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public updateBookmarkIfExists(Ljava/lang/String;Lcom/netflix/model/leafs/Video$Bookmark;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 268
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-virtual {p2}, Lcom/netflix/model/leafs/Video$Bookmark;->getBookmarkPosition()I

    move-result v0

    .line 272
    invoke-virtual {p2}, Lcom/netflix/model/leafs/Video$Bookmark;->getLastModified()J

    move-result-wide v2

    .line 273
    invoke-virtual {p0, p3, p1}, Lcom/netflix/mediaclient/media/BookmarkStore;->getBookmark(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;

    move-result-object v1

    .line 274
    if-eqz v1, :cond_0

    .line 275
    const-string/jumbo v4, "nf_BookmarkStore"

    const-string/jumbo v5, "updateBookmarkIfExists playableId=%s falkorBookmarkPosition=%d falkorBookmarkUpdateTime=%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 276
    iget-wide v4, v1, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mBookmarkUpdateTimeInUTCMs:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_2

    .line 277
    const-string/jumbo v1, "nf_BookmarkStore"

    const-string/jumbo v4, "updateBookmarkIfExists updating"

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;

    invoke-direct {v1, v0, v2, v3, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;-><init>(IJLjava/lang/String;)V

    invoke-virtual {p0, p3, v1}, Lcom/netflix/mediaclient/media/BookmarkStore;->setBookmark(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;)V

    goto :goto_0

    .line 280
    :cond_2
    const-string/jumbo v0, "nf_BookmarkStore"

    const-string/jumbo v4, "updateBookmarkIfExists storeTime=%d falkorBookmarkUpdateTime=%d"

    new-array v5, v10, [Ljava/lang/Object;

    iget-wide v6, v1, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mBookmarkUpdateTimeInUTCMs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v9

    invoke-static {v0, v4, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public declared-synchronized updateValidProfiles(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    monitor-enter p0

    if-eqz p1, :cond_3

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 87
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/netflix/mediaclient/media/BookmarkStore;->isProfileStillValid(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 91
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    iget-object v3, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    iget-object v3, v3, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 94
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 95
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/BookmarkStore;->persistBookmarkData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :cond_3
    monitor-exit p0

    return-void
.end method
