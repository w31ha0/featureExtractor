.class public Lcom/netflix/mediaclient/media/SubtitleUrl;
.super Ljava/lang/Object;
.source "SubtitleUrl.java"


# static fields
.field private static final ATTR_CDN_ID:Ljava/lang/String; = "cdnId"

.field private static final ATTR_DECRYPTION_KEY:Ljava/lang/String; = "decryptionKey"

.field private static final ATTR_DOWNLOADABLE_ID:Ljava/lang/String; = "downloadableId"

.field private static final ATTR_MASTER_INDEX_OFFSET:Ljava/lang/String; = "masterIndexOffset"

.field private static final ATTR_MASTER_INDEX_SIZE:Ljava/lang/String; = "masterIndexSize"

.field private static final ATTR_PROFILE:Ljava/lang/String; = "profile"

.field private static final ATTR_URL:Ljava/lang/String; = "url"

.field private static final ATTR_XID:Ljava/lang/String; = "xid"

.field private static final TAG:Ljava/lang/String; = "nf_subtitles"


# instance fields
.field private mCdnId:J

.field private mDecryptionKey:Ljava/lang/String;

.field private mDownloadableId:Ljava/lang/String;

.field private mMasterIndexOffset:I

.field private mMasterIndexSize:I

.field private mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

.field private mSize:J

.field private mUrl:Ljava/lang/String;

.field private mXid:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;JJLjava/lang/String;J)V
    .locals 3

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mSize:J

    .line 82
    iput-object p1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mUrl:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    .line 84
    iput-wide p3, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mXid:J

    .line 85
    iput-wide p5, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mCdnId:J

    .line 86
    iput-object p7, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDownloadableId:Ljava/lang/String;

    .line 87
    iput-wide p8, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mSize:J

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mSize:J

    .line 58
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/media/SubtitleUrl;->populate(Lorg/json/JSONObject;)V

    .line 59
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 99
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 111
    :cond_0
    :goto_0
    return v1

    .line 100
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 102
    check-cast p1, Lcom/netflix/mediaclient/media/SubtitleUrl;

    .line 104
    iget v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexSize:I

    iget v3, p1, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexSize:I

    if-ne v2, v3, :cond_0

    .line 105
    iget v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexOffset:I

    iget v3, p1, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexOffset:I

    if-ne v2, v3, :cond_0

    .line 106
    iget-object v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mUrl:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/mediaclient/media/SubtitleUrl;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDownloadableId:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDownloadableId:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDownloadableId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    :cond_3
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mCdnId:J

    iget-wide v4, p1, Lcom/netflix/mediaclient/media/SubtitleUrl;->mCdnId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 110
    iget-wide v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mXid:J

    iget-wide v4, p1, Lcom/netflix/mediaclient/media/SubtitleUrl;->mXid:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    iget-object v3, p1, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-ne v2, v3, :cond_6

    :goto_1
    move v1, v0

    goto :goto_0

    .line 106
    :cond_4
    iget-object v2, p1, Lcom/netflix/mediaclient/media/SubtitleUrl;->mUrl:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 107
    :cond_5
    iget-object v2, p1, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDownloadableId:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_6
    move v0, v1

    .line 111
    goto :goto_1
.end method

.method public getCdnId()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mCdnId:J

    return-wide v0
.end method

.method public getDecryptionKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDecryptionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDownloadableId:Ljava/lang/String;

    return-object v0
.end method

.method public getMasterIndexOffset()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexOffset:I

    return v0
.end method

.method public getMasterIndexSize()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexSize:I

    return v0
.end method

.method public getProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mSize:J

    return-wide v0
.end method

.method public getSubtitleProfile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->getNccpCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXid()J
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mXid:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 118
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDownloadableId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDownloadableId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 119
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mCdnId:J

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 120
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mXid:J

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 121
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexSize:I

    add-int/2addr v0, v2

    .line 122
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexOffset:I

    add-int/2addr v0, v2

    .line 123
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 124
    return v0

    :cond_1
    move v0, v1

    .line 117
    goto :goto_0

    :cond_2
    move v0, v1

    .line 118
    goto :goto_1
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 63
    const-string/jumbo v0, "url"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mUrl:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "profile"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->fromNccpCode(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    .line 66
    const-string/jumbo v0, "xid"

    invoke-static {p1, v0, v4, v5}, Lcom/netflix/mediaclient/util/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mXid:J

    .line 67
    const-string/jumbo v0, "cdnId"

    invoke-static {p1, v0, v4, v5}, Lcom/netflix/mediaclient/util/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mCdnId:J

    .line 68
    const-string/jumbo v0, "downloadableId"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDownloadableId:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE_ENC:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-ne v0, v1, :cond_1

    .line 72
    :cond_0
    const-string/jumbo v0, "masterIndexSize"

    invoke-static {p1, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexSize:I

    .line 73
    const-string/jumbo v0, "masterIndexOffset"

    invoke-static {p1, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexOffset:I

    .line 76
    :cond_1
    const-string/jumbo v0, "decryptionKey"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDecryptionKey:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setDecryptionKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDecryptionKey:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setMasterIndex(II)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexSize:I

    .line 94
    iput p2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexOffset:I

    .line 95
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 164
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 166
    iget-object v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 167
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    :cond_0
    const-string/jumbo v1, "profile"

    iget-object v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->getNccpCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string/jumbo v1, "xid"

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mXid:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 171
    const-string/jumbo v1, "cdnId"

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mCdnId:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 172
    const-string/jumbo v1, "downloadableId"

    iget-object v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDownloadableId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    iget-object v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE_ENC:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    if-ne v1, v2, :cond_2

    .line 175
    :cond_1
    const-string/jumbo v1, "masterIndexOffset"

    iget v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexOffset:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 176
    const-string/jumbo v1, "masterIndexSize"

    iget v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexSize:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDecryptionKey:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 179
    const-string/jumbo v1, "decryptionKey"

    iget-object v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDecryptionKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    :cond_3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SubtitleUrl{mUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDownloadableId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDownloadableId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCdnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mCdnId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mXid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mXid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mMasterIndexSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mMasterIndexOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mMasterIndexOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDecryptionKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mDecryptionKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/SubtitleUrl;->mProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
