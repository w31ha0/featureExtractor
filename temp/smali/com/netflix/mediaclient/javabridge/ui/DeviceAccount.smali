.class public final Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;
.super Ljava/lang/Object;
.source "DeviceAccount.java"


# instance fields
.field private accountKey:Ljava/lang/String;

.field private languages:[Ljava/lang/String;

.field private lastAccessTime:J

.field private netflixId:Ljava/lang/String;

.field private registered:Z

.field private secureId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string/jumbo v1, "accountKey"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->accountKey:Ljava/lang/String;

    .line 42
    const-string/jumbo v1, "registered"

    invoke-static {p1, v1, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->registered:Z

    .line 43
    const-string/jumbo v1, "lastAccessTime"

    const-wide/16 v2, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->lastAccessTime:J

    .line 44
    const-string/jumbo v1, "tokens"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    const-string/jumbo v1, "tokens"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    const-string/jumbo v2, "NetflixId"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->netflixId:Ljava/lang/String;

    .line 48
    const-string/jumbo v2, "SecureNetflixId"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->secureId:Ljava/lang/String;

    .line 52
    :cond_0
    const-string/jumbo v1, "UILanguages"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    const-string/jumbo v1, "UILanguages"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->languages:[Ljava/lang/String;

    .line 56
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->languages:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_1
    return-void
.end method


# virtual methods
.method public getAccountKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->accountKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->languages:[Ljava/lang/String;

    return-object v0
.end method

.method public getLastAccessTime()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->lastAccessTime:J

    return-wide v0
.end method

.method public getNetflixId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->netflixId:Ljava/lang/String;

    return-object v0
.end method

.method public getSecureId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->secureId:Ljava/lang/String;

    return-object v0
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->registered:Z

    return v0
.end method

.method public setLanguages([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->languages:[Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setLastAccessTime(J)V
    .locals 1

    .prologue
    .line 159
    iput-wide p1, p0, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->lastAccessTime:J

    .line 160
    return-void
.end method

.method public setNetflixId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->netflixId:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setRegistered(Z)V
    .locals 0

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->registered:Z

    .line 169
    return-void
.end method

.method public setSecureId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->secureId:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DeviceAccount [accountKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->accountKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", netflixId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->netflixId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", secureId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->secureId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastAccessTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->lastAccessTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", languages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->languages:[Ljava/lang/String;

    .line 113
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", registered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->registered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    return-object v0
.end method
