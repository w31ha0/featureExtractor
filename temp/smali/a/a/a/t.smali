.class public final La/a/a/t;
.super La/a/l;

# interfaces
.implements La/a/a/b;


# static fields
.field private static j:La/a/a/l;

.field private static final l:La/a/x;


# instance fields
.field b:Ljava/lang/Object;

.field private c:La/b/f;

.field private d:[B

.field private e:Ljava/io/InputStream;

.field private f:La/a/a/x;

.field private g:La/a/x;

.field private h:Z

.field private i:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La/a/a/l;

    invoke-direct {v0}, La/a/a/l;-><init>()V

    sput-object v0, La/a/a/t;->j:La/a/a/l;

    new-instance v0, La/a/x;

    sget-object v1, La/a/i;->a:La/a/i;

    invoke-direct {v0, v1}, La/a/x;-><init>(La/a/i;)V

    sput-object v0, La/a/a/t;->l:La/a/x;

    return-void
.end method

.method public constructor <init>(La/a/ae;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, La/a/l;-><init>(La/a/ae;)V

    iput-boolean v2, p0, La/a/a/t;->h:Z

    iput-boolean v2, p0, La/a/a/t;->i:Z

    iput-boolean v3, p0, La/a/a/t;->k:Z

    iput-boolean v3, p0, La/a/a/t;->h:Z

    new-instance v0, La/a/a/x;

    invoke-direct {v0}, La/a/a/x;-><init>()V

    iput-object v0, p0, La/a/a/t;->f:La/a/a/x;

    new-instance v0, La/a/x;

    invoke-direct {v0}, La/a/x;-><init>()V

    iput-object v0, p0, La/a/a/t;->g:La/a/x;

    iget-object v0, p0, La/a/a/t;->a:La/a/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/t;->a:La/a/ae;

    const-string v1, "mail.mime.address.strict"

    invoke-virtual {v0, v1}, La/a/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    iput-boolean v0, p0, La/a/a/t;->k:Z

    :cond_0
    return-void

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method private declared-synchronized a(La/b/f;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, La/a/a/t;->c:La/b/f;

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/t;->b:Ljava/lang/Object;

    invoke-static {p0}, La/a/a/h;->c(La/a/a/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static b(La/a/q;)Ljava/lang/String;
    .locals 2

    sget-object v0, La/a/q;->a:La/a/q;

    if-ne p0, v0, :cond_0

    const-string v0, "To"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, La/a/q;->b:La/a/q;

    if-ne p0, v0, :cond_1

    const-string v0, "Cc"

    goto :goto_0

    :cond_1
    sget-object v0, La/a/q;->c:La/a/q;

    if-ne p0, v0, :cond_2

    const-string v0, "Bcc"

    goto :goto_0

    :cond_2
    sget-object v0, La/a/a/m;->d:La/a/a/m;

    if-ne p0, v0, :cond_3

    const-string v0, "Newsgroups"

    goto :goto_0

    :cond_3
    new-instance v0, La/a/o;

    const-string v1, "Invalid Recipient Type"

    invoke-direct {v0, v1}, La/a/o;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, La/a/a/h;->a(La/a/a/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/t;->f:La/a/a/x;

    invoke-virtual {v0, p1, p2}, La/a/a/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(La/a/ac;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "Sender"

    invoke-virtual {p0, v0}, La/a/a/t;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Sender"

    invoke-virtual {p1}, La/a/ac;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, La/a/a/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(La/a/q;[La/a/ac;)V
    .locals 5

    sget-object v0, La/a/a/m;->d:La/a/a/m;

    if-ne p1, v0, :cond_5

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Newsgroups"

    invoke-virtual {p0, v0}, La/a/a/t;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v1, "Newsgroups"

    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v1, v0}, La/a/a/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, La/a/a/j;

    invoke-virtual {v0}, La/a/a/j;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    move v3, v0

    :goto_2
    array-length v0, p2

    if-lt v3, v0, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget-object v0, p2, v3

    check-cast v0, La/a/a/j;

    invoke-virtual {v0}, La/a/a/j;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_5
    invoke-static {p1}, La/a/a/t;->b(La/a/q;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, La/a/a/q;->a([La/a/ac;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-virtual {p0, v0}, La/a/a/t;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v0, v1}, La/a/a/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(La/a/v;)V
    .locals 2

    new-instance v0, La/b/f;

    invoke-virtual {p1}, La/a/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, La/b/f;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, La/a/a/t;->a(La/b/f;)V

    invoke-virtual {p1, p0}, La/a/v;->a(La/a/j;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    instance-of v0, p1, La/a/v;

    if-eqz v0, :cond_0

    check-cast p1, La/a/v;

    invoke-virtual {p0, p1}, La/a/a/t;->a(La/a/v;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, La/b/f;

    invoke-direct {v0, p1, p2}, La/b/f;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, La/a/a/t;->a(La/b/f;)V

    goto :goto_0
.end method

.method public final a(La/a/q;)[La/a/ac;
    .locals 5

    const/4 v2, 0x0

    sget-object v0, La/a/a/m;->d:La/a/a/m;

    if-ne p1, v0, :cond_3

    const-string v0, "Newsgroups"

    const-string v1, ","

    invoke-virtual {p0, v0, v1}, La/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v2, v1, [La/a/a/j;

    if-lez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    new-instance v3, La/a/a/j;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, La/a/a/j;-><init>(Ljava/lang/String;B)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, La/a/a/t;->b(La/a/q;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {p0, v0, v1}, La/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v2

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, La/a/a/t;->k:Z

    invoke-static {v0, v1}, La/a/a/q;->a(Ljava/lang/String;Z)[La/a/a/q;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/t;->f:La/a/a/x;

    invoke-virtual {v0, p1}, La/a/a/x;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    const-string v0, "Content-Type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, La/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "text/plain"

    :cond_0
    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, La/a/a/t;->f:La/a/a/x;

    invoke-virtual {v0, p1}, La/a/a/x;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, La/a/a/t;->f:La/a/a/x;

    invoke-virtual {v0, p1, p2}, La/a/a/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized c()La/b/f;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/a/t;->c:La/b/f;

    if-nez v0, :cond_0

    new-instance v0, La/b/f;

    new-instance v1, La/a/a/o;

    invoke-direct {v1, p0}, La/a/a/o;-><init>(La/a/a/b;)V

    invoke-direct {v0, v1}, La/b/f;-><init>(La/b/j;)V

    iput-object v0, p0, La/a/a/t;->c:La/b/f;

    :cond_0
    iget-object v0, p0, La/a/a/t;->c:La/b/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "Subject"

    invoke-virtual {p0, v0}, La/a/a/t;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v0, "Subject"

    const/16 v1, 0x9

    invoke-static {p1}, La/a/a/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, La/a/a/r;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, La/a/a/t;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, La/a/o;

    const-string v2, "Encoding error"

    invoke-direct {v1, v2, v0}, La/a/o;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "plain"

    invoke-static {p0, p1, v0}, La/a/a/h;->a(La/a/a/b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()[La/a/ac;
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, La/a/l;->d()[La/a/ac;

    move-result-object v0

    sget-object v1, La/a/a/m;->d:La/a/a/m;

    invoke-virtual {p0, v1}, La/a/a/t;->a(La/a/q;)[La/a/ac;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [La/a/ac;

    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    goto :goto_0
.end method

.method public final e()V
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x0

    iput-boolean v0, p0, La/a/a/t;->h:Z

    iput-boolean v0, p0, La/a/a/t;->i:Z

    invoke-static {p0}, La/a/a/h;->b(La/a/a/b;)V

    const-string v0, "MIME-Version"

    const-string v1, "1.0"

    invoke-virtual {p0, v0, v1}, La/a/a/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Message-ID"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, La/a/a/t;->a:La/a/ae;

    invoke-static {v2}, La/a/a/a;->a(La/a/ae;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, La/a/a/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/t;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    new-instance v0, La/b/f;

    iget-object v1, p0, La/a/a/t;->b:Ljava/lang/Object;

    invoke-virtual {p0}, La/a/a/t;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, La/b/f;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, La/a/a/t;->c:La/b/f;

    iput-object v3, p0, La/a/a/t;->b:Ljava/lang/Object;

    iput-object v3, p0, La/a/a/t;->d:[B

    iget-object v0, p0, La/a/a/t;->e:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, La/a/a/t;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput-object v3, p0, La/a/a/t;->e:Ljava/io/InputStream;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final f()Ljava/io/InputStream;
    .locals 4

    iget-object v0, p0, La/a/a/t;->e:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object p0, p0, La/a/a/t;->e:Ljava/io/InputStream;

    check-cast p0, La/a/a/c;

    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    invoke-interface {p0, v0, v1, v2, v3}, La/a/a/c;->a(JJ)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/a/a/t;->d:[B

    if-eqz v0, :cond_1

    new-instance v0, La/a/b/a;

    iget-object v1, p0, La/a/a/t;->d:[B

    invoke-direct {v0, v1}, La/a/b/a;-><init>([B)V

    goto :goto_0

    :cond_1
    new-instance v0, La/a/o;

    const-string v1, "No content"

    invoke-direct {v0, v1}, La/a/o;-><init>(Ljava/lang/String;)V

    throw v0
.end method
