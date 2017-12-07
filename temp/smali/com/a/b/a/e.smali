.class public final Lcom/a/b/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/a/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/a/b/a/e;->b:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/a/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/a/b/a/e;->b:Ljava/util/Hashtable;

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "iso-8859-1"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lcom/a/b/a/e;->a(Ljava/io/BufferedReader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/a/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/a/b/a/e;->b:Ljava/util/Hashtable;

    iput-object p1, p0, Lcom/a/b/a/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/a/b/a/e;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lcom/a/b/a/e;->a(Ljava/io/BufferedReader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    throw v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/io/BufferedReader;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    move-object v0, v5

    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/a/b/a/e;->b(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    sub-int v2, v1, v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    sub-int/2addr v1, v4

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Lcom/a/b/a/e;->b(Ljava/lang/String;)V

    move-object v0, v5

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_6

    new-instance v1, Lcom/a/b/a/a;

    invoke-direct {v1, v0}, Lcom/a/b/a/a;-><init>(Ljava/lang/String;)V

    move-object v2, v7

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/a/b/a/a;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/a/b/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/a/b/a/a;->a()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lcom/a/b/a/a;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lcom/a/b/a/a;->a()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lcom/a/b/a/a;->b()Ljava/lang/String;

    move-result-object v4

    :goto_2
    if-nez v4, :cond_3

    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad .mime.types entry: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/a/f;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v5, "type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v2, v4

    goto :goto_1

    :cond_4
    const-string v5, "exts"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v3, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/a/b/a/g;

    invoke-direct {v5, v2, v4}, Lcom/a/b/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/a/b/a/e;->b:Ljava/util/Hashtable;

    invoke-virtual {v6, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Added: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/a/b/a/g;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/a/b/a/f;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/a/b/a/g;

    invoke-direct {v3, v0, v2}, Lcom/a/b/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/a/b/a/e;->b:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Added: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/a/b/a/g;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/a/b/a/f;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move-object v4, v7

    goto/16 :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/b/a/e;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/a/b/a/g;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/a/b/a/g;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
