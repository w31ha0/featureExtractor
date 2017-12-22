.class public Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;
.super Ljava/lang/Object;
.source "MediaDecoderBase.java"


# static fields
.field private static final SMOOTH_WINDOW_SIZE:I = 0xa

.field private static final UPDATE_PAHSE1_INTERVAL_MS:J = 0x14L

.field private static final UPDATE_PAHSE1_SAMPLE_COUNT:J = 0xbb80L

.field private static final UPDATE_PAHSE2_INTERVAL_MS:J = 0xc8L

.field private static final UPDATE_PAHSE2_SAMPLE_COUNT:J = 0x3a980L

.field private static final UPDATE_PAHSE3_INTERVAL_MS:J = 0x7d0L


# instance fields
.field private deltas:[J

.field private indexDelta:I

.field private mLastPts:J

.field private mLastUpdateTime:J

.field private mMostRecentSamplePts:J

.field private mRunning:Z

.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 166
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->deltas:[J

    .line 167
    iput-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    .line 168
    iput-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mRunning:Z

    .line 170
    iput-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mMostRecentSamplePts:J

    .line 171
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->resetSmootheWindow()V

    .line 172
    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;J)V
    .locals 2

    .prologue
    .line 173
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->deltas:[J

    .line 174
    iput-wide p2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    .line 175
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mRunning:Z

    .line 177
    iput-wide p2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mMostRecentSamplePts:J

    .line 178
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->resetSmootheWindow()V

    .line 179
    return-void
.end method

.method private resetSmootheWindow()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 240
    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->indexDelta:I

    .line 241
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->deltas:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_0
    return-void
.end method

.method private updateSmootheWindow(J)J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 246
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v2

    .line 248
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    cmp-long v4, p1, v0

    if-lez v4, :cond_1

    .line 249
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->deltas:[J

    iget v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->indexDelta:I

    sub-long v2, p1, v2

    aput-wide v2, v4, v5

    .line 250
    iget v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->indexDelta:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->indexDelta:I

    .line 251
    const/4 v2, 0x0

    move v6, v2

    move-wide v2, v0

    move v0, v6

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->deltas:[J

    aget-wide v4, v1, v0

    add-long/2addr v2, v4

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_0
    const-wide/16 v0, 0xa

    div-long v0, v2, v0

    .line 256
    :cond_1
    add-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized flush()V
    .locals 2

    .prologue
    .line 182
    monitor-enter p0

    const-wide/16 v0, -0x1

    :try_start_0
    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    .line 183
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    .line 184
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mMostRecentSamplePts:J

    .line 185
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->resetSmootheWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 188
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 189
    const-wide/16 v0, -0x1

    .line 196
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 190
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mRunning:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    sub-long/2addr v0, v2

    .line 193
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    add-long/2addr v0, v2

    goto :goto_0

    .line 196
    :cond_1
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMostRecentSamplePts()J
    .locals 2

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mMostRecentSamplePts:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()J
    .locals 6

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    sub-long/2addr v0, v2

    .line 206
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 207
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    .line 209
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mRunning:Z

    .line 210
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    .line 212
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->resetSmootheWindow()V

    .line 213
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldUpdate(J)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 221
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v2, v4

    .line 222
    const-wide/32 v4, 0xbb80

    cmp-long v4, p1, v4

    if-gtz v4, :cond_2

    .line 223
    const-wide/16 v4, 0x14

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 227
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    move v0, v1

    .line 223
    goto :goto_0

    .line 224
    :cond_2
    const-wide/32 v4, 0x3a980

    cmp-long v4, p1, v4

    if-gtz v4, :cond_3

    .line 225
    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 227
    :cond_3
    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unpause()J
    .locals 2

    .prologue
    .line 216
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mRunning:Z

    .line 217
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update(J)V
    .locals 3

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->updateSmootheWindow(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastPts:J

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mLastUpdateTime:J

    .line 201
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->unpause()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateMostRecentSamplePts(J)V
    .locals 1

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->mMostRecentSamplePts:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
