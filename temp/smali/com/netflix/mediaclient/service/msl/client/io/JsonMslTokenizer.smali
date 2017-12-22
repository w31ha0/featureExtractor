.class public Lcom/netflix/mediaclient/service/msl/client/io/JsonMslTokenizer;
.super Lcom/netflix/msl/io/MslTokenizer;
.source "JsonMslTokenizer.java"


# instance fields
.field private final encoder:Lcom/netflix/msl/io/MslEncoderFactory;

.field private final tokenizer:Lcom/netflix/android/org/json/JSONTokener;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/io/MslEncoderFactory;Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/netflix/msl/io/MslTokenizer;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslTokenizer;->encoder:Lcom/netflix/msl/io/MslEncoderFactory;

    .line 41
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/netflix/msl/MslConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 42
    new-instance v1, Lcom/netflix/android/org/json/JSONTokener;

    invoke-direct {v1, v0}, Lcom/netflix/android/org/json/JSONTokener;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslTokenizer;->tokenizer:Lcom/netflix/android/org/json/JSONTokener;

    .line 43
    return-void
.end method


# virtual methods
.method protected next(I)Lcom/netflix/msl/io/MslObject;
    .locals 3

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslTokenizer;->tokenizer:Lcom/netflix/android/org/json/JSONTokener;

    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONTokener;->more()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslTokenizer;->tokenizer:Lcom/netflix/android/org/json/JSONTokener;

    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 54
    instance-of v1, v0, Lcom/netflix/android/org/json/JSONObject;

    if-eqz v1, :cond_1

    .line 55
    new-instance v1, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslTokenizer;->encoder:Lcom/netflix/msl/io/MslEncoderFactory;

    check-cast v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/service/msl/client/io/JsonMslObject;-><init>(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/android/org/json/JSONObject;)V

    move-object v0, v1

    goto :goto_0

    .line 56
    :cond_1
    new-instance v0, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v1, "JSON value is not a JSON object."

    invoke-direct {v0, v1}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/netflix/android/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    new-instance v1, Lcom/netflix/msl/io/MslEncoderException;

    const-string/jumbo v2, "JSON syntax error."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/io/MslEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
