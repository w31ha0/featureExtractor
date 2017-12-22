.class public Lcom/netflix/mediaclient/ui/details/DummyMovieDetails;
.super Ljava/lang/Object;
.source "DummyMovieDetails.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;


# instance fields
.field private userRating:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/DummyMovieDetails;->userRating:F

    return-void
.end method


# virtual methods
.method public getActors()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdvisories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getBifUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBoxartId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBoxshotUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "http://dummyimage.com/150x214/bb0000/884444.png&text=Sample"

    return-object v0
.end method

.method public getCatalogIdUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertification()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharacterRoles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    const-string/jumbo v0, "\u00a9 2015 Test"

    return-object v0
.end method

.method public getCreditMarks()Lcom/netflix/model/leafs/blades/CreditMarks;
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultTrailer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDirectors()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "Director 1, Director 2"

    return-object v0
.end method

.method public getErrorType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEvidenceGlyph()Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEvidenceText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 84
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGenres()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHighResolutionLandscapeBoxArtUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHighResolutionPortraitBoxArtUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHorzDispSmallUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHorzDispUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMatchPercentage()I
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public getMaturityLevel()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public getNumDirectors()I
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DummyMovieDetails;->getDirectors()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->getCsvCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;
    .locals 1

    .prologue
    .line 272
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DummyPlayable;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/details/DummyPlayable;-><init>()V

    return-object v0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimilars()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSimilarsListPos()I
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public getSimilarsRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimilarsTrackId()I
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public getStoryDispUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStoryUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupplementalMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSynopsis()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string/jumbo v0, "Max (Max Records) is a young boy who feels misunderstood and wants to have fun all the time. He makes an igloo out of snow, but his sister\'s friends gang up on him and smash it. After making a scene in front of his mother\'s boyfriend, Max bites his mother and runs away. He keeps running until he stumbles upon a small boat; he climbs aboard and sets sail. After a few days at sea, he reaches the dangerous, rocky shore of a strange island at night. He leaves the boat on shore and walks toward voices he hears in the woods. Max eavesdrops on a few creatures arguing. One of them, Carol (voice: James Gandolfini), is destroying the huts and screaming. The other wild things are yelling at him, telling him to stop. Max runs out of the trees and joins Carol in destroying the huts. The wild things are angry about this and want to eat him. But Max tells them that he was the king where he came from, and he has \"special powers,\" so the wild things can\'t eat him. Carol crowns him king of the wild things and the island. Max\'s first order of business is to \"let the wild rumpus start!\" The wild things and Max dance and run around the forest destroying things. The wild things introduce themselves: Ira (voice: Forest Whitaker), Carol, Douglas (voice: Chris Cooper), the bull, Judith (voice: Catherine O\'Hara), and Alexander (voice: Paul Dano). K.W. (voice: Lauren Ambrose) is missing; she\'s gone to hang out with other friends, apparently after a disagreement. Carol shows Max his \"Kingdom\" and shows him his secret hideaway, where has built a miniature of the island. Carol says \"There should be a place where only the things you want to happen, happen.\" Max thinks that with effort from all the wild things, they can build a place like that. Over the next few days, Max and the wild things build a large fortress of rocks and sticks. Tension grows between Max and the wild things when Judith starts to think Max isn\'t a good king. They have a dirtball fight and many of the wild things get hurt. K.W. and Carol argue and K.W. takes Max to see her friends Terry and Bob, who turn out to be owls. They go back to the fortress and the wild things (minus Carol) greet them with open arms. Carol throws a fit and is angry that they are letting two outsiders into the group. K.W. runs away with Terry and Bob. Max and the wild things are sad, sitting in the rain. Judith demands to see Max\'s \"special powers\" and wants K.W. to come back. The wild things discover Max isn\'t a king and that he has no powers. Carol is angry with Max, telling him he didn\'t keep everyone safe, and that he is an awful king. Max runs away with Carol pursuing him. K.W. hides Max in her stomach until Carol leaves. Max then decides it\'s time to go home. Things seem to be better when he and the wild things all go to the beach, where Max\'s boat is. Carol is in his secret hideaway crying when he realizes he is being stupid and sees a heart with his initial that Max made for him. (Carol made a similar one for Max on the fort earlier.) Carol runs toward the beach. Max gets into his boat and says goodbye to all the wild things. Carol finally arrives and is unable to speak, so he howls. The other wild things join in and Max howls back. After a brief boat trip he runs back home and his mother greets him with open arms, and feeds him."

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB"

    return-object v0
.end method

.method public getTitleCroppedImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitleImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrailers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrailersListPos()I
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public getTrailersRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrailersTrackId()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public getTvCardUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public getUserThumbRating()I
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x775

    return v0
.end method

.method public hasTrailers()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public hasWatched()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailableToStream()Z
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public isInQueue()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public isNSRE()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public isNewForPvr()Z
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public isOriginal()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public isPreRelease()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public isSupplementalVideo()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo5dot1()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoDolbyVision()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoHd()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method public isVideoHdr10()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoUhd()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public setUserThumbRating(I)V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public shouldRefreshVolatileData()Z
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method
