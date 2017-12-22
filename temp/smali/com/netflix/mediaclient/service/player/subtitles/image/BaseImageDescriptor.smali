.class public abstract Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;
.super Ljava/lang/Object;
.source "BaseImageDescriptor.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;


# static fields
.field public static final SIZE:I = 0x1c

.field protected static final TAG:Ljava/lang/String; = "nf_subtitles"


# instance fields
.field protected mDisplayed:Z

.field protected mDuration:I

.field protected mEndTime:I

.field protected mHeight:S

.field protected mImageStartPosition:J

.field protected mLocalImagePath:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mNumberOfDisplays:I

.field protected mOriginX:S

.field protected mOriginY:S

.field protected mSize:I

.field protected mStartTime:I

.field protected mTotalIndex:I

.field protected mWidth:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayed()V
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mDisplayed:Z

    if-eqz v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 204
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mDisplayed:Z

    .line 205
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mNumberOfDisplays:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mNumberOfDisplays:I

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mDuration:I

    return v0
.end method

.method public getEndTime()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mEndTime:I

    return v0
.end method

.method public getHeight()S
    .locals 1

    .prologue
    .line 118
    iget-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mHeight:S

    return v0
.end method

.method public getImageStartPosition()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mImageStartPosition:J

    return-wide v0
.end method

.method public declared-synchronized getLocalImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mLocalImagePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfDisplays()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mNumberOfDisplays:I

    return v0
.end method

.method public getOriginX()S
    .locals 1

    .prologue
    .line 103
    iget-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mOriginX:S

    return v0
.end method

.method public getOriginY()S
    .locals 1

    .prologue
    .line 108
    iget-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mOriginY:S

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mSize:I

    return v0
.end method

.method public getStartTime()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mStartTime:I

    return v0
.end method

.method public getTotalIndex()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mTotalIndex:I

    return v0
.end method

.method public getWidth()S
    .locals 1

    .prologue
    .line 113
    iget-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mWidth:S

    return v0
.end method

.method public inRange(J)Z
    .locals 3

    .prologue
    .line 159
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mStartTime:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mEndTime:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloaded()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mLocalImagePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisibleInGivenTimeRange(JJ)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 169
    cmp-long v1, p1, p3

    if-lez v1, :cond_1

    .line 170
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "From can not be later than to!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mStartTime:I

    int-to-long v2, v1

    cmp-long v1, p3, v2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mEndTime:I

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public seeked(J)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 213
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mEndTime:I

    int-to-long v2, v0

    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    .line 214
    :goto_0
    if-eqz v0, :cond_0

    .line 215
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mDisplayed:Z

    .line 217
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 213
    goto :goto_0
.end method

.method public declared-synchronized setLocalImagePath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mLocalImagePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTotalIndex(I)V
    .locals 2

    .prologue
    .line 153
    iput p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mTotalIndex:I

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mName:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public wasDisplayed()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mDisplayed:Z

    return v0
.end method
