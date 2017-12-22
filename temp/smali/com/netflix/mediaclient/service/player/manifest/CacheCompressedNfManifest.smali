.class public final Lcom/netflix/mediaclient/service/player/manifest/CacheCompressedNfManifest;
.super Lcom/netflix/mediaclient/service/player/manifest/CachedNfManifest;
.source "CacheCompressedNfManifest.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bWasCompressed:Z

.field private mCachedManifestBytes:[B

.field private mOriginalLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/netflix/mediaclient/service/player/manifest/CacheCompressedNfManifest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/player/manifest/CacheCompressedNfManifest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/manifest/CachedNfManifest;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/manifest/CacheCompressedNfManifest;->cacheManifestMaterial(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private cacheManifestMaterial(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 49
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 50
    array-length v1, v0

    new-array v1, v1, [B

    .line 51
    new-instance v2, Ljava/util/zip/Deflater;

    invoke-direct {v2}, Ljava/util/zip/Deflater;-><init>()V

    .line 52
    invoke-virtual {v2, v0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 53
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    .line 54
    invoke-virtual {v2, v1}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v3

    .line 55
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V

    .line 57
    array-length v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/manifest/CacheCompressedNfManifest;->mOriginalLength:I

    .line 58
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/CacheCompressedNfManifest;->mCachedManifestBytes:[B

    .line 59
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/CacheCompressedNfManifest;->mCachedManifestBytes:[B

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/manifest/CacheCompressedNfManifest;->bWasCompressed:Z

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/CacheCompressedNfManifest;->mManifestJsonString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 67
    iput-object v6, p0, Lcom/netflix/mediaclient/service/player/manifest/CacheCompressedNfManifest;->mCachedManifestBytes:[B

    .line 68
    iput-boolean v5, p0, Lcom/netflix/mediaclient/service/player/manifest/CacheCompressedNfManifest;->bWasCompressed:Z

    goto :goto_0
.end method

.method private loadCachedManifestMaterial()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 74
    :try_start_0
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/CacheCompressedNfManifest;->mCachedManifestBytes:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 76
    iget v1, p0, Lcom/netflix/mediaclient/service/player/manifest/CacheCompressedNfManifest;->mOriginalLength:I

    new-array v1, v1, [B

    .line 77
    invoke-virtual {v0, v1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v2

    .line 78
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 80
    new-instance v0, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v3, v1, v4, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/manifest/CacheCompressedNfManifest;->invalidateSelf()V

    .line 83
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fail to create JSONObject, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :catch_1
    move-exception v0

    .line 85
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/manifest/CacheCompressedNfManifest;->invalidateSelf()V

    .line 86
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fail to create JSONObject, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :catch_2
    move-exception v0

    .line 88
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/manifest/CacheCompressedNfManifest;->invalidateSelf()V

    .line 89
    throw v0
.end method


# virtual methods
.method public loadJSONObject()V
    .locals 5

    .prologue
    .line 34
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/CacheCompressedNfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "original length %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/netflix/mediaclient/service/player/manifest/CacheCompressedNfManifest;->mOriginalLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 35
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/manifest/CacheCompressedNfManifest;->bWasCompressed:Z

    if-nez v0, :cond_0

    .line 36
    invoke-super {p0}, Lcom/netflix/mediaclient/service/player/manifest/CachedNfManifest;->loadJSONObject()V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/manifest/CacheCompressedNfManifest;->loadCachedManifestMaterial()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/CacheCompressedNfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public unloadJSONObject()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Lcom/netflix/mediaclient/service/player/manifest/CachedNfManifest;->unloadJSONObject()V

    .line 45
    return-void
.end method
