.class public Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;
.super Lcom/netflix/msl/io/MslObject;
.source "JsonMslObject.java"

# interfaces
.implements Lcom/netflix/android/org/json/JSONString;


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final encoder:Lcom/netflix/msl/io/MslEncoderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/android/org/json/JSONObject;)V
    .locals 4

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/netflix/msl/io/MslObject;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;->encoder:Lcom/netflix/msl/io/MslEncoderFactory;

    .line 76
    :try_start_0
    invoke-virtual {p2}, Lcom/netflix/android/org/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 77
    instance-of v1, v2, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Invalid JSON object encoding."

    invoke-direct {v1, v2}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    :catch_0
    move-exception v1

    .line 82
    new-instance v2, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v3, "Invalid JSON object encoding."

    invoke-direct {v2, v3, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 79
    :cond_0
    :try_start_1
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/netflix/android/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;
    :try_end_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 83
    :catch_1
    move-exception v1

    .line 84
    new-instance v2, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v3, "Invalid MSL object encoding."

    invoke-direct {v2, v3, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 86
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslObject;)V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/netflix/msl/io/MslObject;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;->encoder:Lcom/netflix/msl/io/MslEncoderFactory;

    .line 58
    :try_start_0
    invoke-virtual {p2}, Lcom/netflix/msl/io/MslObject;->getKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    invoke-virtual {p2, v0}, Lcom/netflix/msl/io/MslObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Invalid MSL object encoding."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 63
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/io/MslEncoderFactory;[B)V
    .locals 5

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/netflix/msl/io/MslObject;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;->encoder:Lcom/netflix/msl/io/MslEncoderFactory;

    .line 98
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p2, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 99
    new-instance v3, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v3, v1}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v3}, Lcom/netflix/android/org/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 101
    instance-of v1, v2, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Invalid JSON object encoding."

    invoke-direct {v1, v2}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    :catch_0
    move-exception v1

    .line 106
    new-instance v2, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v3, "Invalid JSON object encoding."

    invoke-direct {v2, v3, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 103
    :cond_0
    :try_start_1
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/netflix/android/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;
    :try_end_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 107
    :catch_1
    move-exception v1

    .line 108
    new-instance v2, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v3, "Invalid MSL object encoding."

    invoke-direct {v2, v3, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 110
    :cond_1
    return-void
.end method

.method public static getEncoded(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslObject;)[B
    .locals 2

    .prologue
    .line 40
    instance-of v0, p1, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;

    if-eqz v0, :cond_0

    .line 41
    check-cast p1, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    .line 43
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;-><init>(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslObject;)V

    .line 44
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getBytes(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 144
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 145
    check-cast v0, [B

    check-cast v0, [B

    .line 148
    :goto_0
    return-object v0

    .line 146
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 148
    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 153
    :cond_1
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MslObject["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/netflix/mediaclient/service/msl/client/io/JsonUtil;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not binary data."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public optBytes(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;->optBytes(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public optBytes(Ljava/lang/String;[B)[B
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 174
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 175
    check-cast v0, [B

    check-cast v0, [B

    .line 183
    :goto_0
    return-object v0

    .line 176
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 178
    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    :cond_1
    move-object v0, p2

    .line 183
    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;
    .locals 3

    .prologue
    .line 120
    :try_start_0
    instance-of v0, p2, Lcom/netflix/android/org/json/JSONObject;

    if-eqz v0, :cond_1

    .line 121
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;->encoder:Lcom/netflix/msl/io/MslEncoderFactory;

    check-cast p2, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0, v1, p2}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;-><init>(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/android/org/json/JSONObject;)V
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    .line 131
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    return-object v0

    .line 123
    :cond_1
    :try_start_1
    instance-of v0, p2, Lcom/netflix/android/org/json/JSONArray;

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;->encoder:Lcom/netflix/msl/io/MslEncoderFactory;

    check-cast p2, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v0, v1, p2}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;-><init>(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/android/org/json/JSONArray;)V
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_0

    move-object p2, v0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unsupported JSON object or array representation."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 192
    :try_start_0
    new-instance v2, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v2}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 193
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;->getKeys()Ljava/util/Set;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 196
    instance-of v4, v1, [B

    if-eqz v4, :cond_0

    .line 197
    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Error encoding MSL object as JSON."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 198
    :cond_0
    :try_start_1
    instance-of v4, v1, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;

    if-nez v4, :cond_1

    instance-of v4, v1, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;

    if-eqz v4, :cond_2

    .line 199
    :cond_1
    invoke-virtual {v2, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 217
    :catch_1
    move-exception v0

    .line 218
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Error encoding MSL object as JSON."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 200
    :cond_2
    :try_start_2
    instance-of v4, v1, Lcom/netflix/msl/io/MslObject;

    if-eqz v4, :cond_3

    .line 201
    new-instance v4, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;->encoder:Lcom/netflix/msl/io/MslEncoderFactory;

    check-cast v1, Lcom/netflix/msl/io/MslObject;

    invoke-direct {v4, v5, v1}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;-><init>(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslObject;)V

    .line 202
    invoke-virtual {v2, v0, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 219
    :catch_2
    move-exception v0

    .line 220
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Error encoding MSL object as JSON."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 203
    :cond_3
    :try_start_3
    instance-of v4, v1, Lcom/netflix/msl/io/MslArray;

    if-eqz v4, :cond_4

    .line 204
    new-instance v4, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;->encoder:Lcom/netflix/msl/io/MslEncoderFactory;

    check-cast v1, Lcom/netflix/msl/io/MslArray;

    invoke-direct {v4, v5, v1}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;-><init>(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslArray;)V

    .line 205
    invoke-virtual {v2, v0, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto :goto_0

    .line 206
    :cond_4
    instance-of v4, v1, Lcom/netflix/msl/io/MslEncodable;

    if-eqz v4, :cond_5

    .line 207
    check-cast v1, Lcom/netflix/msl/io/MslEncodable;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;->encoder:Lcom/netflix/msl/io/MslEncoderFactory;

    sget-object v5, Lcom/netflix/msl/io/MslEncoderFormat;->JSON:Lcom/netflix/msl/io/MslEncoderFormat;

    invoke-interface {v1, v4, v5}, Lcom/netflix/msl/io/MslEncodable;->toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v1

    .line 208
    new-instance v4, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;->encoder:Lcom/netflix/msl/io/MslEncoderFactory;

    invoke-direct {v4, v5, v1}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;-><init>(Lcom/netflix/msl/io/MslEncoderFactory;[B)V

    .line 209
    invoke-virtual {v2, v0, v4}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto/16 :goto_0

    .line 211
    :cond_5
    invoke-virtual {v2, v0, v1}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    goto/16 :goto_0

    .line 214
    :cond_6
    invoke-virtual {v2}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
