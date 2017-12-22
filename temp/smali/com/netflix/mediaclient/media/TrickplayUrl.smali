.class public final Lcom/netflix/mediaclient/media/TrickplayUrl;
.super Ljava/lang/Object;
.source "TrickplayUrl.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/netflix/mediaclient/media/TrickplayUrl;",
        ">;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "TrickplayUrl"


# instance fields
.field private aspectX:I

.field private aspectY:I

.field private final downloadableId:Ljava/lang/String;

.field private final downloadableSize:J

.field private height:I

.field private url:[Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v1, "downloadable_id"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/media/TrickplayUrl;->downloadableId:Ljava/lang/String;

    .line 29
    const-string/jumbo v1, "size"

    const-wide/16 v2, -0x1

    invoke-static {p1, v1, v2, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/media/TrickplayUrl;->downloadableSize:J

    .line 30
    const-string/jumbo v1, "width"

    invoke-static {p1, v1, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/media/TrickplayUrl;->width:I

    .line 31
    const-string/jumbo v1, "height"

    invoke-static {p1, v1, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/media/TrickplayUrl;->height:I

    .line 32
    const-string/jumbo v1, "aspectX"

    invoke-static {p1, v1, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/media/TrickplayUrl;->aspectX:I

    .line 33
    const-string/jumbo v1, "aspectY"

    invoke-static {p1, v1, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/media/TrickplayUrl;->aspectY:I

    .line 35
    const-string/jumbo v1, "urls"

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/netflix/mediaclient/media/TrickplayUrl;->url:[Ljava/lang/String;

    .line 38
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/netflix/mediaclient/media/TrickplayUrl;->url:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/netflix/mediaclient/media/TrickplayUrl;)I
    .locals 1

    .prologue
    .line 95
    if-ne p0, p1, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcom/netflix/mediaclient/media/TrickplayUrl;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/media/TrickplayUrl;->compareTo(Lcom/netflix/mediaclient/media/TrickplayUrl;)I

    move-result v0

    return v0
.end method

.method public getAspect()F
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lcom/netflix/mediaclient/media/TrickplayUrl;->aspectY:I

    if-eqz v0, :cond_0

    .line 54
    iget v0, p0, Lcom/netflix/mediaclient/media/TrickplayUrl;->aspectX:I

    iget v1, p0, Lcom/netflix/mediaclient/media/TrickplayUrl;->aspectY:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDownloadableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/media/TrickplayUrl;->downloadableId:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadableSize()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/TrickplayUrl;->downloadableSize:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/netflix/mediaclient/media/TrickplayUrl;->height:I

    return v0
.end method

.method public getUrl()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/media/TrickplayUrl;->url:[Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/netflix/mediaclient/media/TrickplayUrl;->width:I

    return v0
.end method

.method public hasAtLeastOneUrl()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 69
    iget-object v1, p0, Lcom/netflix/mediaclient/media/TrickplayUrl;->downloadableId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/TrickplayUrl;->url:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/TrickplayUrl;->url:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/TrickplayUrl;->url:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TrickplayUrl: width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/TrickplayUrl;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/TrickplayUrl;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " aspect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/TrickplayUrl;->aspectX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/netflix/mediaclient/media/TrickplayUrl;->aspectY:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/TrickplayUrl;->url:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
