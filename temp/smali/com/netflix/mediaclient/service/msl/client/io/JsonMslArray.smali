.class public Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;
.super Lcom/netflix/msl/io/MslArray;
.source "JsonMslArray.java"

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
    .line 28
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/android/org/json/JSONArray;)V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/netflix/msl/io/MslArray;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;->encoder:Lcom/netflix/msl/io/MslEncoderFactory;

    .line 58
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 59
    const/4 v1, -0x1

    invoke-virtual {p2, v0}, Lcom/netflix/android/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;->put(ILjava/lang/Object;)Lcom/netflix/msl/io/MslArray;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Invalid JSON array encoding."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 62
    :catch_1
    move-exception v0

    .line 63
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Invalid MSL array encoding."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 65
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslArray;)V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/netflix/msl/io/MslArray;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;->encoder:Lcom/netflix/msl/io/MslEncoderFactory;

    .line 41
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/netflix/msl/io/MslArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 42
    invoke-virtual {p2, v0}, Lcom/netflix/msl/io/MslArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;->put(ILjava/lang/Object;)Lcom/netflix/msl/io/MslArray;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Invalid MSL array encoding."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 46
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/io/MslEncoderFactory;[B)V
    .locals 4

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/netflix/msl/io/MslArray;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;->encoder:Lcom/netflix/msl/io/MslEncoderFactory;

    .line 76
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 77
    new-instance v1, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v1, v0}, Lcom/netflix/android/org/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 79
    const/4 v2, -0x1

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;->put(ILjava/lang/Object;)Lcom/netflix/msl/io/MslArray;
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Invalid JSON array encoding."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 82
    :catch_1
    move-exception v0

    .line 83
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "Invalid MSL array encoding."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method public getBytes(I)[B
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 119
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 120
    check-cast v0, [B

    check-cast v0, [B

    .line 123
    :goto_0
    return-object v0

    .line 121
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 123
    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 128
    :cond_1
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MslArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not binary data."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public optBytes(I)[B
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;->optBytes(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public optBytes(I[B)[B
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 145
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 146
    check-cast v0, [B

    check-cast v0, [B

    .line 154
    :goto_0
    return-object v0

    .line 147
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 149
    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    :cond_1
    move-object v0, p2

    .line 154
    goto :goto_0
.end method

.method public put(ILjava/lang/Object;)Lcom/netflix/msl/io/MslArray;
    .locals 3

    .prologue
    .line 95
    :try_start_0
    instance-of v0, p2, Lcom/netflix/android/org/json/JSONObject;

    if-eqz v0, :cond_1

    .line 96
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;->encoder:Lcom/netflix/msl/io/MslEncoderFactory;

    check-cast p2, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0, v1, p2}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;-><init>(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/android/org/json/JSONObject;)V
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    .line 106
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/netflix/msl/io/MslArray;->put(ILjava/lang/Object;)Lcom/netflix/msl/io/MslArray;

    move-result-object v0

    return-object v0

    .line 98
    :cond_1
    :try_start_1
    instance-of v0, p2, Lcom/netflix/android/org/json/JSONArray;

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;->encoder:Lcom/netflix/msl/io/MslEncoderFactory;

    check-cast p2, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v0, v1, p2}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;-><init>(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/android/org/json/JSONArray;)V
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_0

    move-object p2, v0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unsupported JSON object or array representation."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 163
    :try_start_0
    new-instance v2, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v2}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    .line 164
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;->size()I

    move-result v3

    .line 165
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_6

    .line 166
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 167
    instance-of v4, v0, [B

    if-eqz v4, :cond_0

    .line 168
    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/netflix/android/org/json/JSONArray;->put(ILjava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    .line 165
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 169
    :cond_0
    instance-of v4, v0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;

    if-nez v4, :cond_1

    instance-of v4, v0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;

    if-eqz v4, :cond_2

    .line 170
    :cond_1
    invoke-virtual {v2, v1, v0}, Lcom/netflix/android/org/json/JSONArray;->put(ILjava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Error encoding MSL object as JSON."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 171
    :cond_2
    :try_start_1
    instance-of v4, v0, Lcom/netflix/msl/io/MslObject;

    if-eqz v4, :cond_3

    .line 172
    new-instance v4, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;->encoder:Lcom/netflix/msl/io/MslEncoderFactory;

    check-cast v0, Lcom/netflix/msl/io/MslObject;

    invoke-direct {v4, v5, v0}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;-><init>(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslObject;)V

    .line 173
    invoke-virtual {v2, v1, v4}, Lcom/netflix/android/org/json/JSONArray;->put(ILjava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 188
    :catch_1
    move-exception v0

    .line 189
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Error encoding MSL object as JSON."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 174
    :cond_3
    :try_start_2
    instance-of v4, v0, Lcom/netflix/msl/io/MslArray;

    if-eqz v4, :cond_4

    .line 175
    new-instance v4, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;->encoder:Lcom/netflix/msl/io/MslEncoderFactory;

    check-cast v0, Lcom/netflix/msl/io/MslArray;

    invoke-direct {v4, v5, v0}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;-><init>(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslArray;)V

    .line 176
    invoke-virtual {v2, v1, v4}, Lcom/netflix/android/org/json/JSONArray;->put(ILjava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 190
    :catch_2
    move-exception v0

    .line 191
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Error encoding MSL object as JSON."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 177
    :cond_4
    :try_start_3
    instance-of v4, v0, Lcom/netflix/msl/io/MslEncodable;

    if-eqz v4, :cond_5

    .line 178
    check-cast v0, Lcom/netflix/msl/io/MslEncodable;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;->encoder:Lcom/netflix/msl/io/MslEncoderFactory;

    sget-object v5, Lcom/netflix/msl/io/MslEncoderFormat;->JSON:Lcom/netflix/msl/io/MslEncoderFormat;

    invoke-interface {v0, v4, v5}, Lcom/netflix/msl/io/MslEncodable;->toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v0

    .line 179
    new-instance v4, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;->encoder:Lcom/netflix/msl/io/MslEncoderFactory;

    invoke-direct {v4, v5, v0}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;-><init>(Lcom/netflix/msl/io/MslEncoderFactory;[B)V

    .line 180
    invoke-virtual {v2, v1, v4}, Lcom/netflix/android/org/json/JSONArray;->put(ILjava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_1

    .line 182
    :cond_5
    invoke-virtual {v2, v1, v0}, Lcom/netflix/android/org/json/JSONArray;->put(ILjava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_1

    .line 185
    :cond_6
    invoke-virtual {v2}, Lcom/netflix/android/org/json/JSONArray;->toString()Ljava/lang/String;
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
    .line 200
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslArray;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
