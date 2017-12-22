.class public Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;
.super Ljava/lang/Object;
.source "PlayerWorkflowState.java"


# static fields
.field private static ignorePlayerUserInteractionEnabled:Z


# instance fields
.field audioSeekToInProgress:Z

.field draggingAudioInProgress:Z

.field draggingInProgress:Z

.field private lastActionTime:J

.field lowBandwidth:Z

.field playStartInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field playStarted:Z

.field private playbackStopped:Z

.field playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

.field seekToInProgress:Z

.field stalled:Z

.field private timelineCurrentSeekPosition:I

.field timelineExitOnSnap:Z

.field public timelineInSnapZone:Z

.field private timelinePreviousSeekPosition:I

.field private timelineSeekDelta:I

.field private userInteraction:Z

.field videoLoaded:Z

.field volumeChangeInProgress:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->ignorePlayerUserInteractionEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playStartInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;->ACTIVITY_NOTREADY:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    .line 65
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->videoLoaded:Z

    .line 76
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playbackStopped:Z

    .line 83
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playStarted:Z

    .line 109
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->volumeChangeInProgress:J

    .line 114
    iput v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineCurrentSeekPosition:I

    .line 116
    iput v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineSeekDelta:I

    .line 118
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineExitOnSnap:Z

    .line 123
    iput v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelinePreviousSeekPosition:I

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineInSnapZone:Z

    return-void
.end method

.method public static ignorePlayerUserInteraction()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public static toggleIgnorePlayerUserIntercation()V
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->ignorePlayerUserInteractionEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->ignorePlayerUserInteractionEnabled:Z

    .line 49
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getLastActionTime()J
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->lastActionTime:J

    return-wide v0
.end method

.method public getPlayStartInProgress()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playStartInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public getPlayerState()Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playerState:Lcom/netflix/mediaclient/ui/player/PlayerFragment$PlayerFragmentState;

    return-object v0
.end method

.method public getTimelineExitOnSnap()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineExitOnSnap:Z

    return v0
.end method

.method public getTimelineSeekDelta()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineSeekDelta:I

    return v0
.end method

.method public getVolumeChangeInProgress()J
    .locals 2

    .prologue
    .line 276
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->volumeChangeInProgress:J

    return-wide v0
.end method

.method public isAudioSeekToInProgress()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->audioSeekToInProgress:Z

    return v0
.end method

.method public isDraggingAudioInProgress()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingAudioInProgress:Z

    return v0
.end method

.method public isDraggingInProgress()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingInProgress:Z

    return v0
.end method

.method public isLowBandwidth()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->lowBandwidth:Z

    return v0
.end method

.method public isPlayStarted()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playStarted:Z

    return v0
.end method

.method public isPlaybackStopped()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playbackStopped:Z

    return v0
.end method

.method public isSeekForward()Z
    .locals 2

    .prologue
    .line 186
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineCurrentSeekPosition:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelinePreviousSeekPosition:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSeekToInProgress()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->seekToInProgress:Z

    return v0
.end method

.method public isStalled()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->stalled:Z

    return v0
.end method

.method public isTimelineInSnapZone()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineInSnapZone:Z

    return v0
.end method

.method public isVideoLoaded()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->videoLoaded:Z

    return v0
.end method

.method public noUserInteraction()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->userInteraction:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->lastActionTime:J

    .line 167
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->videoLoaded:Z

    .line 168
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingInProgress:Z

    .line 169
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingAudioInProgress:Z

    .line 170
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->seekToInProgress:Z

    .line 171
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->audioSeekToInProgress:Z

    .line 172
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playbackStopped:Z

    .line 173
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->playStarted:Z

    .line 174
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->stalled:Z

    .line 175
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->volumeChangeInProgress:J

    .line 176
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->lowBandwidth:Z

    .line 177
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->resetTimeline()V

    .line 178
    return-void
.end method

.method public resetTimeline()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    iput v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineCurrentSeekPosition:I

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineInSnapZone:Z

    .line 146
    iput v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelinePreviousSeekPosition:I

    .line 147
    iput v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineSeekDelta:I

    .line 148
    return-void
.end method

.method public setDraggingInProgress(Z)V
    .locals 0

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingInProgress:Z

    .line 129
    return-void
.end method

.method public setLastActionTime(J)V
    .locals 1

    .prologue
    .line 312
    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->lastActionTime:J

    .line 313
    return-void
.end method

.method public setTimelineExitOnSnap(Z)V
    .locals 0

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineExitOnSnap:Z

    .line 141
    return-void
.end method

.method public updatePosition(I)V
    .locals 2

    .prologue
    .line 155
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelinePreviousSeekPosition:I

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineCurrentSeekPosition:I

    .line 156
    iput p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelinePreviousSeekPosition:I

    .line 157
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineCurrentSeekPosition:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelinePreviousSeekPosition:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->timelineSeekDelta:I

    .line 158
    return-void
.end method

.method public userInteraction()V
    .locals 1

    .prologue
    .line 329
    invoke-static {}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->ignorePlayerUserInteraction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->userInteraction:Z

    goto :goto_0
.end method
