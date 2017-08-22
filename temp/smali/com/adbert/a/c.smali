.class public Lcom/adbert/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adbert/a/c$a;,
        Lcom/adbert/a/c$b;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field private d:Z

.field private e:I

.field private f:Lcom/adbert/a/b$a;

.field private g:Landroid/content/Context;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Landroid/graphics/Bitmap;

.field private l:Ljava/lang/String;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/adbert/a/c;->d:Z

    .line 31
    iput v0, p0, Lcom/adbert/a/c;->e:I

    .line 34
    iput v0, p0, Lcom/adbert/a/c;->h:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/c;->i:Ljava/lang/String;

    .line 36
    const/16 v0, 0x2710

    iput v0, p0, Lcom/adbert/a/c;->j:I

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/c;->l:Ljava/lang/String;

    .line 240
    const-string v0, "\r\n"

    iput-object v0, p0, Lcom/adbert/a/c;->a:Ljava/lang/String;

    .line 241
    const-string v0, "--"

    iput-object v0, p0, Lcom/adbert/a/c;->b:Ljava/lang/String;

    .line 242
    const-string v0, "*****"

    iput-object v0, p0, Lcom/adbert/a/c;->c:Ljava/lang/String;

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adbert/a/c;->m:Z

    .line 41
    iput-object p1, p0, Lcom/adbert/a/c;->g:Landroid/content/Context;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/adbert/a/c;Ljava/net/URL;Lcom/adbert/a/c$a;)Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/adbert/a/c;->a(Ljava/net/URL;Lcom/adbert/a/c$a;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/net/URL;Lcom/adbert/a/c$a;)Ljava/net/HttpURLConnection;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 214
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 215
    iget v1, p0, Lcom/adbert/a/c;->j:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 216
    iget v1, p0, Lcom/adbert/a/c;->j:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 217
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 218
    invoke-virtual {p2}, Lcom/adbert/a/c$a;->a()Lcom/adbert/a/c$b;

    move-result-object v1

    sget-object v2, Lcom/adbert/a/c$b;->a:Lcom/adbert/a/c$b;

    if-ne v1, v2, :cond_1

    .line 219
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 220
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 221
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, "Content-Length"

    invoke-virtual {p2}, Lcom/adbert/a/c$a;->c()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_0
    :goto_0
    return-object v0

    .line 223
    :cond_1
    invoke-virtual {p2}, Lcom/adbert/a/c$a;->a()Lcom/adbert/a/c$b;

    move-result-object v1

    sget-object v2, Lcom/adbert/a/c$b;->c:Lcom/adbert/a/c$b;

    if-ne v1, v2, :cond_2

    .line 224
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 225
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 226
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 227
    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v1, "ENCTYPE"

    const-string v2, "multipart/form-data"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v1, "Content-Type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "multipart/form-data;boundary="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adbert/a/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v1, "uploaded_file"

    const-string v2, "photo.jpg"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {p2}, Lcom/adbert/a/c$a;->a()Lcom/adbert/a/c$b;

    move-result-object v1

    sget-object v2, Lcom/adbert/a/c$b;->b:Lcom/adbert/a/c$b;

    if-ne v1, v2, :cond_0

    .line 232
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/adbert/a/c$a;)V
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/adbert/a/c$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/adbert/a/c$a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adbert/a/c;->g:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/adbert/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/adbert/a/c;->f:Lcom/adbert/a/b$a;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/adbert/a/c;->f:Lcom/adbert/a/b$a;

    invoke-interface {v0, p0}, Lcom/adbert/a/b$a;->onConnectionFail(Lcom/adbert/a/c;)V

    .line 211
    :goto_0
    return-void

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adbert/a/c$1;

    invoke-direct {v1, p0, p1}, Lcom/adbert/a/c$1;-><init>(Lcom/adbert/a/c;Lcom/adbert/a/c$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 209
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/adbert/a/c;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/adbert/a/c;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/adbert/a/c;Ljava/net/HttpURLConnection;Lcom/adbert/a/c$a;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/adbert/a/c;->a(Ljava/net/HttpURLConnection;Lcom/adbert/a/c$a;)V

    return-void
.end method

.method static synthetic a(Lcom/adbert/a/c;Ljava/net/URL;Ljava/net/HttpURLConnection;Lcom/adbert/a/c$a;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/adbert/a/c;->a(Ljava/net/URL;Ljava/net/HttpURLConnection;Lcom/adbert/a/c$a;)V

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;Lcom/adbert/a/c$a;)V
    .locals 6

    .prologue
    .line 245
    invoke-virtual {p2}, Lcom/adbert/a/c$a;->a()Lcom/adbert/a/c$b;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/c$b;->a:Lcom/adbert/a/c$b;

    if-ne v0, v1, :cond_1

    .line 246
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 247
    invoke-virtual {p2}, Lcom/adbert/a/c$a;->c()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 270
    :cond_0
    return-void

    .line 248
    :cond_1
    invoke-virtual {p2}, Lcom/adbert/a/c$a;->a()Lcom/adbert/a/c$b;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/c$b;->c:Lcom/adbert/a/c$b;

    if-ne v0, v1, :cond_0

    .line 249
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adbert/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/adbert/a/c$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\";filename=photo.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/adbert/a/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Lcom/adbert/a/c$a;->f()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 254
    iget-object v0, p0, Lcom/adbert/a/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adbert/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Lcom/adbert/a/c$a;->d()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/adbert/a/c$a;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 257
    invoke-virtual {p2}, Lcom/adbert/a/c$a;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 258
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 259
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 260
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/adbert/a/c;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/adbert/a/c;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/adbert/a/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Disposition: form-data; name=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/adbert/a/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/adbert/a/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 263
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 264
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 265
    iget-object v0, p0, Lcom/adbert/a/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adbert/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/net/URL;Ljava/net/HttpURLConnection;Lcom/adbert/a/c$a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 273
    invoke-virtual {p3}, Lcom/adbert/a/c$a;->a()Lcom/adbert/a/c$b;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/c$b;->c:Lcom/adbert/a/c$b;

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Lcom/adbert/a/c$a;->a()Lcom/adbert/a/c$b;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/c$b;->a:Lcom/adbert/a/c$b;

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Lcom/adbert/a/c$a;->a()Lcom/adbert/a/c$b;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/c$b;->b:Lcom/adbert/a/c$b;

    if-ne v0, v1, :cond_3

    .line 274
    :cond_0
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 275
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 276
    const-string v0, ""

    .line 278
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_1
    invoke-direct {p0, v0}, Lcom/adbert/a/c;->c(Ljava/lang/String;)V

    .line 322
    :cond_2
    :goto_1
    return-void

    .line 282
    :cond_3
    invoke-virtual {p3}, Lcom/adbert/a/c$a;->a()Lcom/adbert/a/c$b;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/c$b;->d:Lcom/adbert/a/c$b;

    if-ne v0, v1, :cond_5

    .line 283
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 284
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_4

    .line 286
    invoke-virtual {p0, v0}, Lcom/adbert/a/c;->a(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 288
    :cond_4
    iput v4, p0, Lcom/adbert/a/c;->h:I

    goto :goto_1

    .line 290
    :cond_5
    invoke-virtual {p3}, Lcom/adbert/a/c$a;->a()Lcom/adbert/a/c$b;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/c$b;->e:Lcom/adbert/a/c$b;

    if-ne v0, v1, :cond_7

    .line 291
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 292
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_6

    .line 294
    invoke-virtual {p0, v0}, Lcom/adbert/a/c;->a(Landroid/graphics/Bitmap;)V

    .line 295
    invoke-virtual {p3}, Lcom/adbert/a/c$a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adbert/a/c;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 296
    new-instance v0, Ljava/io/File;

    invoke-virtual {p3}, Lcom/adbert/a/c$a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 297
    iput v4, p0, Lcom/adbert/a/c;->h:I

    goto :goto_1

    .line 300
    :cond_6
    iput v4, p0, Lcom/adbert/a/c;->h:I

    goto :goto_1

    .line 302
    :cond_7
    invoke-virtual {p3}, Lcom/adbert/a/c$a;->a()Lcom/adbert/a/c$b;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/c$b;->f:Lcom/adbert/a/c$b;

    if-ne v0, v1, :cond_2

    .line 304
    new-instance v0, Ljava/io/File;

    invoke-virtual {p3}, Lcom/adbert/a/c$a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 305
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 306
    new-instance v1, Ljava/io/File;

    invoke-virtual {p3}, Lcom/adbert/a/c$a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 308
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 310
    if-eqz v0, :cond_8

    .line 311
    :goto_2
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_8

    .line 312
    invoke-virtual {v2, v1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 314
    :cond_8
    if-eqz v2, :cond_9

    .line 315
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 317
    :cond_9
    new-instance v0, Ljava/io/File;

    invoke-virtual {p3}, Lcom/adbert/a/c$a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 318
    iput v4, p0, Lcom/adbert/a/c;->h:I

    goto/16 :goto_1
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 388
    :try_start_0
    const-string v0, "connectivity"

    .line 389
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 390
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 391
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    const/4 v0, 0x1

    .line 397
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 394
    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    move v0, v1

    .line 397
    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 482
    invoke-static {p2}, Lcom/adbert/a/i;->a(Ljava/lang/String;)Z

    move-result v1

    .line 485
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 486
    if-eqz v2, :cond_0

    .line 487
    if-eqz v1, :cond_2

    .line 488
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 491
    :goto_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 492
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    const/4 v0, 0x1

    .line 499
    :cond_1
    :goto_1
    return v0

    .line 490
    :cond_2
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 494
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/adbert/a/c;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/adbert/a/c;->d:Z

    return v0
.end method

.method private b(I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/adbert/a/c;->h:I

    .line 64
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/adbert/a/c;->i:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/adbert/a/c;->e:I

    return v0
.end method

.method public a(I)Lcom/adbert/a/c;
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/adbert/a/c;->e:I

    .line 46
    return-object p0
.end method

.method public a(Lcom/adbert/a/b$a;)Lcom/adbert/a/c;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/adbert/a/c;->f:Lcom/adbert/a/b$a;

    .line 55
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/adbert/a/c;->k:Landroid/graphics/Bitmap;

    .line 84
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/adbert/a/c;->l:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/adbert/a/c;->d:Z

    if-eqz v0, :cond_1

    .line 106
    sget-object v0, Lcom/adbert/a/l;->b:Lcom/adbert/a/l$a;

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/adbert/a/l;->b:Lcom/adbert/a/l$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adbert/a/l$a;->a(Ljava/lang/String;)V

    .line 109
    :cond_0
    const-string v0, "CustomConnection_POST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    new-instance v0, Lcom/adbert/a/c$a;

    sget-object v1, Lcom/adbert/a/c$b;->a:Lcom/adbert/a/c$b;

    invoke-direct {v0, p0, v1}, Lcom/adbert/a/c$a;-><init>(Lcom/adbert/a/c;Lcom/adbert/a/c$b;)V

    .line 112
    invoke-virtual {v0, p1}, Lcom/adbert/a/c$a;->a(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, p2}, Lcom/adbert/a/c$a;->b(Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, v0}, Lcom/adbert/a/c;->a(Lcom/adbert/a/c$a;)V

    .line 115
    return-void
.end method

.method public b()Lcom/adbert/a/b$a;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adbert/a/c;->f:Lcom/adbert/a/b$a;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 334
    new-instance v0, Lcom/adbert/a/c$a;

    sget-object v1, Lcom/adbert/a/c$b;->d:Lcom/adbert/a/c$b;

    invoke-direct {v0, p0, v1}, Lcom/adbert/a/c$a;-><init>(Lcom/adbert/a/c;Lcom/adbert/a/c$b;)V

    .line 335
    invoke-virtual {v0, p1}, Lcom/adbert/a/c$a;->a(Ljava/lang/String;)V

    .line 336
    invoke-direct {p0, v0}, Lcom/adbert/a/c;->a(Lcom/adbert/a/c$a;)V

    .line 337
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 347
    new-instance v0, Lcom/adbert/a/c$a;

    sget-object v1, Lcom/adbert/a/c$b;->f:Lcom/adbert/a/c$b;

    invoke-direct {v0, p0, v1}, Lcom/adbert/a/c$a;-><init>(Lcom/adbert/a/c;Lcom/adbert/a/c$b;)V

    .line 348
    invoke-virtual {v0, p1}, Lcom/adbert/a/c$a;->a(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v0, p2}, Lcom/adbert/a/c$a;->c(Ljava/lang/String;)V

    .line 350
    invoke-direct {p0, v0}, Lcom/adbert/a/c;->a(Lcom/adbert/a/c$a;)V

    .line 351
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/adbert/a/c;->h:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/adbert/a/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adbert/a/c;->k:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/adbert/a/c;->l:Ljava/lang/String;

    return-object v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/adbert/a/c;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adbert/a/c;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/adbert/a/c;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 98
    :cond_0
    return-void
.end method
