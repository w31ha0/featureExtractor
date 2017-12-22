.class public Lcom/netflix/mediaclient/ui/common/PlayContextImp;
.super Ljava/lang/Object;
.source "PlayContextImp.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/common/PlayContext;


# static fields
.field private static final BUNDLE_BROWSE_PLAY:Ljava/lang/String; = "play_context_bundle_browse_play"

.field private static final BUNDLE_LIST_POS:Ljava/lang/String; = "play_context_bundle_list_pos"

.field private static final BUNDLE_PLAY_LOCATION:Ljava/lang/String; = "play_context_bundle_play_location"

.field private static final BUNDLE_REQUEST_ID:Ljava/lang/String; = "play_context_bundle_request_id"

.field private static final BUNDLE_TRACK_ID:Ljava/lang/String; = "play_context_bundle_track_id"

.field private static final BUNDLE_VIDEO_POS:Ljava/lang/String; = "play_context_bundle_video_pos"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/netflix/mediaclient/ui/common/PlayContextImp;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "nf_play_context_imp"


# instance fields
.field private browsePlay:Z

.field private final listPos:I

.field private playLocation:Ljava/lang/String;

.field private final requestId:Ljava/lang/String;

.field private final trackId:I

.field private final videoPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/common/PlayContextImp$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 30
    const-string/jumbo v0, ""

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->playLocation:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;I)V
    .locals 3

    .prologue
    .line 46
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;->getRequestId()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;->isHero()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;->getHeroTrackId()I

    move-result v0

    .line 48
    :goto_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;->getListPos()I

    move-result v2

    .line 46
    invoke-direct {p0, v1, v0, v2, p2}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    .line 50
    return-void

    .line 47
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;->getTrackId()I

    move-result v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->DIRECT_PLAY:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->playLocation:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->requestId:Ljava/lang/String;

    .line 35
    iput p2, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->trackId:I

    .line 36
    iput p3, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->listPos:I

    .line 37
    iput p4, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->videoPos:I

    .line 38
    return-void
.end method

.method public static createPlayContextFromBundle(Landroid/os/Bundle;)Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 169
    if-nez p0, :cond_0

    .line 173
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 187
    :goto_0
    return-object v0

    .line 175
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    const-string/jumbo v1, "play_context_bundle_request_id"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "play_context_bundle_track_id"

    .line 176
    invoke-virtual {p0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "play_context_bundle_list_pos"

    .line 177
    invoke-virtual {p0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "play_context_bundle_video_pos"

    .line 178
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    .line 180
    const-string/jumbo v1, "play_context_bundle_browse_play"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->setBrowsePlay(Z)V

    .line 182
    const-string/jumbo v1, "play_context_bundle_play_location"

    sget-object v2, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->DIRECT_PLAY:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-static {v1}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->setPlayLocation(Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V

    goto :goto_0
.end method

.method public static playContextToBundle(Lcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 155
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 156
    const-string/jumbo v1, "play_context_bundle_request_id"

    invoke-interface {p0}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string/jumbo v1, "play_context_bundle_track_id"

    invoke-interface {p0}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    const-string/jumbo v1, "play_context_bundle_list_pos"

    invoke-interface {p0}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getListPos()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    const-string/jumbo v1, "play_context_bundle_video_pos"

    invoke-interface {p0}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getVideoPos()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    const-string/jumbo v1, "play_context_bundle_browse_play"

    invoke-interface {p0}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getBrowsePlay()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 161
    const-string/jumbo v1, "play_context_bundle_play_location"

    invoke-interface {p0}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getPlayLocation()Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-object v0
.end method


# virtual methods
.method public cloneWithNewTrackId(I)Lcom/netflix/mediaclient/ui/common/PlayContextImp;
    .locals 4

    .prologue
    .line 148
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->getListPos()I

    move-result v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->getVideoPos()I

    move-result v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public getBrowsePlay()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->browsePlay:Z

    return v0
.end method

.method public getHeroTrackId()I
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Should not be needed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getImpressionToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Should not be needed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getListPos()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->listPos:I

    return v0
.end method

.method public getPlayLocation()Lcom/netflix/mediaclient/ui/common/PlayLocationType;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->playLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v0

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->trackId:I

    return v0
.end method

.method public getVideoPos()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->videoPos:I

    return v0
.end method

.method public isHero()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public playContextToBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 120
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->playContextToBundle(Lcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setBrowsePlay(Z)V
    .locals 0

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->browsePlay:Z

    .line 106
    return-void
.end method

.method public setPlayLocation(Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->playLocation:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PlayContextImp [requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->trackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", listPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->listPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", videoPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->videoPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", playLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->playLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->requestId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget v0, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->trackId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget v0, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->listPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v0, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->videoPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->playLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return-void
.end method
