.class Lcom/netflix/falkor/RemotePathEvaluator$1$1;
.super Ljava/lang/Object;
.source "RemotePathEvaluator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/netflix/falkor/PathBoundValue;",
        ">;"
    }
.end annotation


# instance fields
.field line:Ljava/lang/String;

.field private reader:Ljava/io/BufferedReader;

.field private started:Z

.field final synthetic this$1:Lcom/netflix/falkor/RemotePathEvaluator$1;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/RemotePathEvaluator$1;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    iput-object p1, p0, Lcom/netflix/falkor/RemotePathEvaluator$1$1;->this$1:Lcom/netflix/falkor/RemotePathEvaluator$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/falkor/RemotePathEvaluator$1$1;->started:Z

    .line 146
    iput-object v1, p0, Lcom/netflix/falkor/RemotePathEvaluator$1$1;->reader:Ljava/io/BufferedReader;

    .line 147
    iput-object v1, p0, Lcom/netflix/falkor/RemotePathEvaluator$1$1;->line:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 151
    iget-boolean v2, p0, Lcom/netflix/falkor/RemotePathEvaluator$1$1;->started:Z

    if-nez v2, :cond_0

    .line 152
    iput-boolean v1, p0, Lcom/netflix/falkor/RemotePathEvaluator$1$1;->started:Z

    .line 154
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/netflix/falkor/RemotePathEvaluator$1$1;->this$1:Lcom/netflix/falkor/RemotePathEvaluator$1;

    iget-object v3, v3, Lcom/netflix/falkor/RemotePathEvaluator$1;->val$builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 155
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v3, p0, Lcom/netflix/falkor/RemotePathEvaluator$1$1;->reader:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 163
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/netflix/falkor/RemotePathEvaluator$1$1;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/falkor/RemotePathEvaluator$1$1;->line:Ljava/lang/String;

    .line 164
    iget-object v2, p0, Lcom/netflix/falkor/RemotePathEvaluator$1$1;->line:Ljava/lang/String;

    if-eqz v2, :cond_2

    move v0, v1

    .line 190
    :cond_1
    :goto_0
    return v0

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/netflix/falkor/RemotePathEvaluator$1$1;->reader:Ljava/io/BufferedReader;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_1

    .line 170
    :try_start_2
    iget-object v1, p0, Lcom/netflix/falkor/RemotePathEvaluator$1$1;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 174
    :goto_1
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/netflix/falkor/RemotePathEvaluator$1$1;->reader:Ljava/io/BufferedReader;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v1

    .line 180
    iget-object v1, p0, Lcom/netflix/falkor/RemotePathEvaluator$1$1;->reader:Ljava/io/BufferedReader;

    if-eqz v1, :cond_1

    .line 182
    :try_start_4
    iget-object v1, p0, Lcom/netflix/falkor/RemotePathEvaluator$1$1;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 186
    :goto_2
    iput-object v5, p0, Lcom/netflix/falkor/RemotePathEvaluator$1$1;->reader:Ljava/io/BufferedReader;

    goto :goto_0

    .line 184
    :catch_1
    move-exception v1

    goto :goto_2

    .line 172
    :catch_2
    move-exception v1

    goto :goto_1

    .line 157
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public next()Lcom/netflix/falkor/PathBoundValue;
    .locals 6

    .prologue
    .line 196
    const/4 v3, 0x0

    .line 198
    :try_start_0
    new-instance v2, Lcom/google/gson/stream/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    iget-object v4, p0, Lcom/netflix/falkor/RemotePathEvaluator$1$1;->line:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 199
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 200
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    .line 201
    iget-object v1, p0, Lcom/netflix/falkor/RemotePathEvaluator$1$1;->this$1:Lcom/netflix/falkor/RemotePathEvaluator$1;

    iget-object v1, v1, Lcom/netflix/falkor/RemotePathEvaluator$1;->this$0:Lcom/netflix/falkor/RemotePathEvaluator;

    iget-object v1, v1, Lcom/netflix/falkor/RemotePathEvaluator;->gson:Lcom/google/gson/Gson;

    const-class v4, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->fromList(Ljava/util/List;)Lcom/netflix/falkor/PQL;

    move-result-object v4

    .line 203
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v5, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v5, :cond_2

    .line 204
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    .line 206
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v5, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v5, :cond_0

    .line 207
    iget-object v1, p0, Lcom/netflix/falkor/RemotePathEvaluator$1$1;->this$1:Lcom/netflix/falkor/RemotePathEvaluator$1;

    iget-object v1, v1, Lcom/netflix/falkor/RemotePathEvaluator$1;->this$0:Lcom/netflix/falkor/RemotePathEvaluator;

    iget-object v1, v1, Lcom/netflix/falkor/RemotePathEvaluator;->gson:Lcom/google/gson/Gson;

    const-class v5, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->fromList(Ljava/util/List;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    .line 208
    new-instance v1, Lcom/netflix/falkor/PathBoundValue;

    new-instance v5, Lcom/netflix/falkor/Option;

    invoke-direct {v5, v2}, Lcom/netflix/falkor/Option;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v4, v5}, Lcom/netflix/falkor/PathBoundValue;-><init>(Lcom/netflix/falkor/PQL;Lcom/netflix/falkor/Option;)V

    .line 230
    :goto_0
    return-object v1

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/netflix/falkor/RemotePathEvaluator$1$1;->this$1:Lcom/netflix/falkor/RemotePathEvaluator$1;

    iget-object v1, v1, Lcom/netflix/falkor/RemotePathEvaluator$1;->this$0:Lcom/netflix/falkor/RemotePathEvaluator;

    iget-object v1, v1, Lcom/netflix/falkor/RemotePathEvaluator;->gson:Lcom/google/gson/Gson;

    iget-object v5, p0, Lcom/netflix/falkor/RemotePathEvaluator$1$1;->this$1:Lcom/netflix/falkor/RemotePathEvaluator$1;

    iget-object v5, v5, Lcom/netflix/falkor/RemotePathEvaluator$1;->this$0:Lcom/netflix/falkor/RemotePathEvaluator;

    invoke-static {v5, v4}, Lcom/netflix/falkor/RemotePathEvaluator;->access$000(Lcom/netflix/falkor/RemotePathEvaluator;Lcom/netflix/falkor/PQL;)Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 212
    instance-of v1, v2, Lcom/netflix/falkor/PathBound;

    if-eqz v1, :cond_1

    .line 213
    move-object v0, v2

    check-cast v0, Lcom/netflix/falkor/PathBound;

    move-object v1, v0

    .line 214
    invoke-interface {v1, v4}, Lcom/netflix/falkor/PathBound;->setPath(Lcom/netflix/falkor/PQL;)V

    .line 216
    :cond_1
    new-instance v1, Lcom/netflix/falkor/PathBoundValue;

    new-instance v5, Lcom/netflix/falkor/Option;

    invoke-direct {v5, v2}, Lcom/netflix/falkor/Option;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v4, v5}, Lcom/netflix/falkor/PathBoundValue;-><init>(Lcom/netflix/falkor/PQL;Lcom/netflix/falkor/Option;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v1

    .line 227
    const-string/jumbo v2, "RemotePathEvaluator"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 230
    goto :goto_0

    .line 223
    :cond_2
    :try_start_1
    new-instance v1, Lcom/netflix/falkor/PathBoundValue;

    new-instance v2, Lcom/netflix/falkor/Option;

    invoke-direct {v2}, Lcom/netflix/falkor/Option;-><init>()V

    invoke-direct {v1, v4, v2}, Lcom/netflix/falkor/PathBoundValue;-><init>(Lcom/netflix/falkor/PQL;Lcom/netflix/falkor/Option;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/netflix/falkor/RemotePathEvaluator$1$1;->next()Lcom/netflix/falkor/PathBoundValue;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 236
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
