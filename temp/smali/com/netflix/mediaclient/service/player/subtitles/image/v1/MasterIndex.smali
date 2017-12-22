.class public Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;
.super Ljava/lang/Object;
.source "MasterIndex.java"


# static fields
.field public static final HEADER_SIZE:I = 0x72

.field private static final MIDX:[B

.field public static final MIN_SIZE:I = 0x78

.field public static final VERSION:I


# instance fields
.field private mCreationTime:J

.field private mEntryCount:S

.field private mIdentifier:I

.field private mIndexID:Ljava/util/UUID;

.field private mLanguageCode:Ljava/lang/String;

.field private mMovieID:J

.field private mPackageID:J

.field private mRootContainerExtentX:S

.field private mRootContainerExtentY:S

.field private mSegmentIndexesSize:I

.field private mSegments:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;

.field private mSize:I

.field private mStartOffset:J

.field private mTextType:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->MIDX:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x6dt
        0x69t
        0x64t
        0x78t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    if-nez p1, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Master index is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    const/4 v0, 0x4

    new-array v2, v0, [B

    .line 130
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    aput-byte v0, v2, v1

    .line 131
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    aput-byte v0, v2, v5

    .line 132
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    aput-byte v0, v2, v6

    .line 133
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    aput-byte v0, v2, v7

    move v0, v1

    .line 135
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 136
    aget-byte v3, v2, v0

    sget-object v4, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->MIDX:[B

    aget-byte v4, v4, v0

    if-eq v3, v4, :cond_1

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Identifier  is NOT \'midx\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_2
    aget-byte v0, v2, v1

    shl-int/lit8 v0, v0, 0x18

    aget-byte v3, v2, v5

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    aget-byte v3, v2, v6

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    aget-byte v2, v2, v7

    or-int/2addr v0, v2

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mIdentifier:I

    .line 142
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mVersion:I

    .line 143
    const/16 v0, 0x24

    new-array v0, v0, [B

    .line 144
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 146
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mIndexID:Ljava/util/UUID;

    .line 148
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mCreationTime:J

    .line 149
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mPackageID:J

    .line 150
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mMovieID:J

    .line 151
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mRootContainerExtentX:S

    .line 152
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mRootContainerExtentY:S

    .line 154
    new-array v0, v8, [B

    .line 155
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 156
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mLanguageCode:Ljava/lang/String;

    .line 158
    new-array v0, v8, [B

    .line 159
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 160
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mTextType:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mStartOffset:J

    .line 163
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mEntryCount:S

    .line 164
    iget-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mEntryCount:S

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mSegments:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;

    .line 166
    iget-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mEntryCount:S

    mul-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x72

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mSize:I

    .line 167
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mStartOffset:J

    .line 168
    :goto_1
    iget-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mEntryCount:S

    if-ge v1, v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mSegments:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;

    new-instance v4, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;

    invoke-direct {v4, p1, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;-><init>(Ljava/io/DataInputStream;J)V

    aput-object v4, v0, v1

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mSegments:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;->getDuration()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 171
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mSegmentIndexesSize:I

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mSegments:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;->access$000(Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;)S

    move-result v4

    add-int/2addr v0, v4

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mSegmentIndexesSize:I

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 173
    :cond_3
    return-void
.end method


# virtual methods
.method public getCreationTime()J
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mCreationTime:J

    return-wide v0
.end method

.method public getEntryCount()S
    .locals 1

    .prologue
    .line 220
    iget-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mEntryCount:S

    return v0
.end method

.method public getIdentifier()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mIdentifier:I

    return v0
.end method

.method public getIndexID()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mIndexID:Ljava/util/UUID;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMovieID()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mMovieID:J

    return-wide v0
.end method

.method public getPackageID()J
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mPackageID:J

    return-wide v0
.end method

.method public getRootContainerExtentX()S
    .locals 1

    .prologue
    .line 200
    iget-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mRootContainerExtentX:S

    return v0
.end method

.method public getRootContainerExtentY()S
    .locals 1

    .prologue
    .line 204
    iget-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mRootContainerExtentY:S

    return v0
.end method

.method public getSegmentIndexesSize()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mSegmentIndexesSize:I

    return v0
.end method

.method public getSegments()[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mSegments:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mSize:I

    return v0
.end method

.method public getStartOffset()J
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mStartOffset:J

    return-wide v0
.end method

.method public getTextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mTextType:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mVersion:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MasterIndex [mIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIndexID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mIndexID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCreationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mCreationTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPackageID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mPackageID:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mMovieID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mMovieID:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRootContainerExtentX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mRootContainerExtentX:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRootContainerExtentY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mRootContainerExtentY:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLanguageCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTextType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mTextType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStartOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mStartOffset:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEntryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mEntryCount:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSegmentIndexesSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mSegmentIndexesSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSegments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex;->mSegments:[Lcom/netflix/mediaclient/service/player/subtitles/image/v1/MasterIndex$SegmentDescriptor;

    .line 247
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    return-object v0
.end method
