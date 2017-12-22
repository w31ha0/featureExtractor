.class public Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;
.super Lcom/netflix/mediaclient/service/player/subtitles/image/v2/Box;
.source "ISCTrack.java"


# static fields
.field public static final USER_TYPE_ITRK:Ljava/lang/String; = "com.netflix.itrk"


# instance fields
.field private iscHeader:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;

.field private masterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

.field private versionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/VersionInfo;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;Ljava/io/DataInputStream;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/Box;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;)V

    .line 32
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->getBoxHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.itrk"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->isUserType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ISCTrack does not have expected user type value!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->loadBoxes(Ljava/io/DataInputStream;)V

    .line 41
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "All boxes loaded..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->verifyBoxes()V

    .line 43
    return-void
.end method

.method public static isThisBox(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;)Z
    .locals 2

    .prologue
    .line 221
    if-nez p0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Header is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    const-string/jumbo v0, "com.netflix.itrk"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->getUserType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadBoxes(Ljava/io/DataInputStream;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->getBoxHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    move-result-object v0

    iget-wide v4, v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->contentSizeInBytes:J

    move v0, v1

    .line 56
    :goto_0
    if-eqz v0, :cond_1

    .line 57
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->readBox(Ljava/io/DataInputStream;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 63
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    .line 69
    :cond_1
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v3, "Clean exit for loadBoxes..."

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_1
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    const-string/jumbo v3, "nf_subtitles_imv2"

    const-string/jumbo v4, "Either error or we do not have anything else to read!"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method private readBox(Ljava/io/DataInputStream;)J
    .locals 4

    .prologue
    .line 85
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;-><init>(Ljava/io/DataInputStream;)V

    .line 87
    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;->isThisBox(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->iscHeader:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;

    if-eqz v1, :cond_0

    .line 90
    const-string/jumbo v1, "nf_subtitles_imv2"

    const-string/jumbo v2, "We found ISC header and it already exist!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;

    invoke-direct {v1, v0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;Ljava/io/DataInputStream;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->iscHeader:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->iscHeader:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;->getBoxHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->getSizeInBytes()J

    move-result-wide v0

    .line 166
    :goto_0
    return-wide v0

    .line 109
    :cond_1
    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/VersionInfo;->isThisBox(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->versionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/VersionInfo;

    if-eqz v1, :cond_2

    .line 112
    const-string/jumbo v1, "nf_subtitles_imv2"

    const-string/jumbo v2, "We found version info and it already exist!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_2
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/VersionInfo;

    invoke-direct {v1, v0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/VersionInfo;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;Ljava/io/DataInputStream;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->versionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/VersionInfo;

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->versionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/VersionInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/VersionInfo;->getBoxHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->getSizeInBytes()J

    move-result-wide v0

    goto :goto_0

    .line 130
    :cond_3
    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->isThisBox(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 132
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->masterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

    if-eqz v1, :cond_4

    .line 133
    const-string/jumbo v1, "nf_subtitles_imv2"

    const-string/jumbo v2, "We found master index and it already exist!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_4
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

    invoke-direct {v1, v0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;Ljava/io/DataInputStream;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->masterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->masterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->getBoxHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->getSizeInBytes()J

    move-result-wide v0

    goto :goto_0

    .line 153
    :cond_5
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->getContentSizeInBytes()J

    move-result-wide v2

    .line 154
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->getSizeInBytes()J

    move-result-wide v0

    .line 160
    invoke-virtual {p1, v2, v3}, Ljava/io/DataInputStream;->skip(J)J

    goto :goto_0
.end method

.method private readBoxHeader(Ljava/io/DataInputStream;I)Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p1}, Ljava/io/DataInputStream;->available()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 186
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;-><init>(Ljava/io/DataInputStream;)V

    .line 188
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private verifyBoxes()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->iscHeader:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ISCHeader is missing!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->versionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/VersionInfo;

    if-nez v0, :cond_1

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "VersionInfo is missing!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->masterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

    if-nez v0, :cond_2

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MasterIndex is missing!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_2
    return-void
.end method


# virtual methods
.method public getHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->iscHeader:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;

    return-object v0
.end method

.method public getMasterIndex()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->masterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

    return-object v0
.end method

.method public getVersionInfo()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/VersionInfo;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->versionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/VersionInfo;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ISCTrack{iscHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->iscHeader:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCHeader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", versionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->versionInfo:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/VersionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", masterIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ISCTrack;->masterIndex:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    invoke-super {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/Box;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    return-object v0
.end method
