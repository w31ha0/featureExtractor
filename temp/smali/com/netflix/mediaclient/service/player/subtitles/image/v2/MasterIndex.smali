.class public Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;
.super Lcom/netflix/mediaclient/service/player/subtitles/image/v2/FullBox;
.source "MasterIndex.java"


# static fields
.field public static final FIXED_SIZE:I = 0xc

.field public static final USER_TYPE_MIDX:Ljava/lang/String; = "com.netflix.midx"


# instance fields
.field private segmentCount:I

.field private segmentIndexesSize:I

.field private segmentOffset:J

.field private segments:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;Ljava/io/DataInputStream;)V
    .locals 6

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/FullBox;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;Ljava/io/DataInputStream;)V

    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->getBoxHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->isExtendedType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MasterIndex is supposed to be extended type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->getBoxHeader()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.midx"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->isUserType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MasterIndex does not have expected user type value!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->segmentOffset:J

    .line 54
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->segmentCount:I

    .line 55
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->segmentCount:I

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->segments:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;

    .line 57
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->segmentOffset:J

    .line 58
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->segmentCount:I

    if-ge v0, v1, :cond_2

    .line 59
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->segments:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;

    new-instance v4, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;

    invoke-direct {v4, p2, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;-><init>(Ljava/io/DataInputStream;J)V

    aput-object v4, v1, v0

    .line 60
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->segments:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;->getDuration()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 61
    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->segmentIndexesSize:I

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->segments:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;->getSize()S

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->segmentIndexesSize:I

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_2
    return-void
.end method

.method public static isThisBox(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;)Z
    .locals 2

    .prologue
    .line 89
    if-nez p0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Header is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    const-string/jumbo v0, "com.netflix.midx"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/BoxHeader;->getUserType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getSegmentCount()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->segmentCount:I

    return v0
.end method

.method public getSegmentIndexesSize()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->segmentIndexesSize:I

    return v0
.end method

.method public getSegmentOffset()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->segmentOffset:J

    return-wide v0
.end method

.method public getSegments()[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->segments:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MasterIndex{segmentOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->segmentOffset:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", segmentCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->segmentCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", segments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->segments:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex$SegmentDescriptor;

    .line 202
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", segmentIndexesSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/MasterIndex;->segmentIndexesSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 204
    invoke-super {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/FullBox;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    return-object v0
.end method
