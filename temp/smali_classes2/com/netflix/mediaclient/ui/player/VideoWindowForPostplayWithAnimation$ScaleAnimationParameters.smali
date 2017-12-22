.class public Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;
.super Ljava/lang/Object;
.source "VideoWindowForPostplayWithAnimation.java"


# instance fields
.field private mDurationInMS:I

.field private mEndLeftMargin:I

.field private mEndScale:F

.field private mEndTopMargin:I

.field private mStartLeftMargin:I

.field private mStartScale:F

.field private mStartTopMargin:I


# direct methods
.method public constructor <init>(IIIFIIF)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->mDurationInMS:I

    .line 99
    iput p2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->mStartLeftMargin:I

    .line 100
    iput p3, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->mStartTopMargin:I

    .line 101
    iput p4, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->mStartScale:F

    .line 102
    iput p5, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->mEndLeftMargin:I

    .line 103
    iput p6, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->mEndTopMargin:I

    .line 104
    iput p7, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->mEndScale:F

    .line 105
    return-void
.end method


# virtual methods
.method public getDurationInMS()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->mDurationInMS:I

    return v0
.end method

.method public getEndLeftMargin()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->mEndLeftMargin:I

    return v0
.end method

.method public getEndScale()F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->mEndScale:F

    return v0
.end method

.method public getEndTopMargin()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->mEndTopMargin:I

    return v0
.end method

.method public getStartLeftMargin()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->mStartLeftMargin:I

    return v0
.end method

.method public getStartScale()F
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->mStartScale:F

    return v0
.end method

.method public getStartTopMargin()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->mStartTopMargin:I

    return v0
.end method
