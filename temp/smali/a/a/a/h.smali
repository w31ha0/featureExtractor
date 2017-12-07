.class public final La/a/a/h;
.super La/a/b;

# interfaces
.implements La/a/a/b;


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Z


# instance fields
.field private f:La/b/f;

.field private g:[B

.field private h:Ljava/io/InputStream;

.field private i:La/a/a/x;

.field private j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sput-boolean v2, La/a/a/h;->a:Z

    sput-boolean v2, La/a/a/h;->b:Z

    sput-boolean v3, La/a/a/h;->c:Z

    sput-boolean v3, La/a/a/h;->d:Z

    sput-boolean v2, La/a/a/h;->e:Z

    :try_start_0
    const-string v0, "mail.mime.setdefaulttextcharset"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    sput-boolean v0, La/a/a/h;->a:Z

    const-string v0, "mail.mime.setcontenttypefilename"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    sput-boolean v0, La/a/a/h;->b:Z

    const-string v0, "mail.mime.encodefilename"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    :goto_2
    sput-boolean v0, La/a/a/h;->c:Z

    const-string v0, "mail.mime.decodefilename"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_3
    sput-boolean v0, La/a/a/h;->d:Z

    const-string v0, "mail.mime.cachemultipart"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    :goto_4
    sput-boolean v0, La/a/a/h;->e:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/a/b;-><init>()V

    new-instance v0, La/a/a/x;

    invoke-direct {v0}, La/a/a/x;-><init>()V

    iput-object v0, p0, La/a/a/h;->i:La/a/a/x;

    return-void
.end method

.method public constructor <init>(La/a/a/x;[B)V
    .locals 0

    invoke-direct {p0}, La/a/b;-><init>()V

    iput-object p1, p0, La/a/a/h;->i:La/a/a/x;

    iput-object p2, p0, La/a/a/h;->g:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5

    invoke-direct {p0}, La/a/b;-><init>()V

    instance-of v0, p1, Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_1

    instance-of v0, p1, La/a/a/c;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    new-instance v1, La/a/a/x;

    invoke-direct {v1, v0}, La/a/a/x;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, La/a/a/h;->i:La/a/a/x;

    instance-of v1, v0, La/a/a/c;

    if-eqz v1, :cond_0

    check-cast v0, La/a/a/c;

    invoke-interface {v0}, La/a/a/c;->a()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    invoke-interface {v0, v1, v2, v3, v4}, La/a/a/c;->a(JJ)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, La/a/a/h;->h:Ljava/io/InputStream;

    :goto_1
    return-void

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/a/a/a/g;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, La/a/a/h;->g:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, La/a/o;

    const-string v2, "Error reading input stream"

    invoke-direct {v1, v2, v0}, La/a/o;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method static a(La/a/a/b;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const-string v0, "Content-Transfer-Encoding"

    invoke-interface {p0, v0, v1}, La/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "7bit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "8bit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "quoted-printable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "binary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "base64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, La/a/a/aa;

    const-string v2, "()<>@,;:\\\"\t []/?="

    invoke-direct {v1, v0, v2}, La/a/a/aa;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, La/a/a/aa;->a()La/a/a/w;

    move-result-object v2

    invoke-virtual {v2}, La/a/a/w;->a()I

    move-result v3

    const/4 v4, -0x4

    if-eq v3, v4, :cond_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, La/a/a/w;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a(La/a/a/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, La/a/a/r;->f(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, La/a/a/r;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "text/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; charset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "()<>@,;:\\\"\t []/?="

    invoke-static {v0, v2}, La/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, La/a/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "us-ascii"

    goto :goto_0
.end method

.method static b(La/a/a/b;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface {p0}, La/a/a/b;->c()La/b/f;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v2}, La/b/f;->c()Ljava/lang/String;

    move-result-object v3

    const-string v1, "Content-Type"

    invoke-interface {p0, v1}, La/a/a/b;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v4, v7

    :goto_1
    new-instance v5, La/a/a/k;

    invoke-direct {v5, v3}, La/a/a/k;-><init>(Ljava/lang/String;)V

    const-string v1, "multipart/*"

    invoke-virtual {v5, v1}, La/a/a/k;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    instance-of v1, p0, La/a/a/h;

    if-eqz v1, :cond_6

    move-object v0, p0

    check-cast v0, La/a/a/h;

    move-object v1, v0

    iget-object v6, v1, La/a/a/h;->j:Ljava/lang/Object;

    if-eqz v6, :cond_5

    iget-object v1, v1, La/a/a/h;->j:Ljava/lang/Object;

    :goto_2
    instance-of v6, v1, La/a/a/e;

    if-eqz v6, :cond_9

    check-cast v1, La/a/a/e;

    invoke-virtual {v1}, La/a/a/e;->a()V

    move v1, v7

    :goto_3
    if-nez v1, :cond_c

    const-string v1, "Content-Transfer-Encoding"

    invoke-interface {p0, v1}, La/a/a/b;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {v2}, La/a/a/r;->a(La/b/f;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Transfer-Encoding"

    invoke-interface {p0, v2, v1}, La/a/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v4, :cond_c

    sget-boolean v1, La/a/a/h;->a:Z

    if-eqz v1, :cond_c

    const-string v1, "text/*"

    invoke-virtual {v5, v1}, La/a/a/k;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "charset"

    invoke-virtual {v5, v1}, La/a/a/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    invoke-interface {p0}, La/a/a/b;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string v2, "7bit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "us-ascii"

    :goto_4
    const-string v2, "charset"

    invoke-virtual {v5, v2, v1}, La/a/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, La/a/a/k;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    if-eqz v4, :cond_0

    const-string v2, "Content-Disposition"

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, La/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v3, La/a/a/s;

    invoke-direct {v3, v2}, La/a/a/s;-><init>(Ljava/lang/String;)V

    const-string v2, "filename"

    invoke-virtual {v3, v2}, La/a/a/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v1, "name"

    invoke-virtual {v5, v1, v2}, La/a/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, La/a/a/k;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    const-string v2, "Content-Type"

    invoke-interface {p0, v2, v1}, La/a/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    new-instance v2, La/a/o;

    const-string v3, "IOException updating headers"

    invoke-direct {v2, v3, v1}, La/a/o;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :cond_4
    move v4, v6

    goto/16 :goto_1

    :cond_5
    :try_start_1
    invoke-virtual {v2}, La/b/f;->e()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    :cond_6
    instance-of v1, p0, La/a/a/t;

    if-eqz v1, :cond_8

    move-object v0, p0

    check-cast v0, La/a/a/t;

    move-object v1, v0

    iget-object v6, v1, La/a/a/t;->b:Ljava/lang/Object;

    if-eqz v6, :cond_7

    iget-object v1, v1, La/a/a/t;->b:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v2}, La/b/f;->e()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v2}, La/b/f;->e()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    :cond_9
    new-instance v2, La/a/o;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MIME part of type \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" contains object of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " instead of MimeMultipart"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, La/a/o;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    const-string v1, "message/rfc822"

    invoke-virtual {v5, v1}, La/a/a/k;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v7

    goto/16 :goto_3

    :cond_b
    invoke-static {}, La/a/a/r;->a()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto/16 :goto_4

    :cond_c
    move-object v1, v3

    goto/16 :goto_5

    :cond_d
    move v1, v6

    goto/16 :goto_3
.end method

.method static c(La/a/a/b;)V
    .locals 1

    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, La/a/a/b;->b(Ljava/lang/String;)V

    const-string v0, "Content-Transfer-Encoding"

    invoke-interface {p0, v0}, La/a/a/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static d(La/a/a/b;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Content-Disposition"

    invoke-interface {p0, v0, v2}, La/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, La/a/a/s;

    invoke-direct {v1, v0}, La/a/a/s;-><init>(Ljava/lang/String;)V

    const-string v0, "filename"

    invoke-virtual {v1, v0}, La/a/a/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-string v1, "Content-Type"

    invoke-interface {p0, v1, v2}, La/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v2, La/a/a/k;

    invoke-direct {v2, v1}, La/a/a/k;-><init>(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {v2, v1}, La/a/a/k;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch La/a/a/d; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_0
    :goto_1
    sget-boolean v1, La/a/a/h;->d:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {v0}, La/a/a/r;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, La/a/o;

    const-string v2, "Can\'t decode filename"

    invoke-direct {v1, v2, v0}, La/a/o;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
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

    iget-object v0, p0, La/a/a/h;->i:La/a/a/x;

    invoke-virtual {v0, p1, p2}, La/a/a/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(La/b/f;)V
    .locals 1

    iput-object p1, p0, La/a/a/h;->f:La/b/f;

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/h;->j:Ljava/lang/Object;

    invoke-static {p0}, La/a/a/h;->c(La/a/a/b;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    instance-of v0, p1, La/a/v;

    if-eqz v0, :cond_0

    check-cast p1, La/a/v;

    new-instance v0, La/b/f;

    invoke-virtual {p1}, La/a/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, La/b/f;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, La/a/a/h;->a(La/b/f;)V

    invoke-virtual {p1, p0}, La/a/v;->a(La/a/j;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, La/b/f;

    invoke-direct {v0, p1, p2}, La/b/f;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, La/a/a/h;->a(La/b/f;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/h;->i:La/a/a/x;

    invoke-virtual {v0, p1}, La/a/a/x;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    const-string v0, "Content-Type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, La/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "text/plain"

    :cond_0
    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, La/a/a/h;->i:La/a/a/x;

    invoke-virtual {v0, p1}, La/a/a/x;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, La/a/a/h;->i:La/a/a/x;

    invoke-virtual {v0, p1, p2}, La/a/a/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()La/b/f;
    .locals 2

    iget-object v0, p0, La/a/a/h;->f:La/b/f;

    if-nez v0, :cond_0

    new-instance v0, La/b/f;

    new-instance v1, La/a/a/o;

    invoke-direct {v1, p0}, La/a/a/o;-><init>(La/a/a/b;)V

    invoke-direct {v0, v1}, La/b/f;-><init>(La/b/j;)V

    iput-object v0, p0, La/a/a/h;->f:La/b/f;

    :cond_0
    iget-object v0, p0, La/a/a/h;->f:La/b/f;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, La/a/a/h;->c:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {p1}, La/a/a/r;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string v1, "Content-Disposition"

    invoke-interface {p0, v1, v3}, La/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, La/a/a/s;

    if-nez v1, :cond_0

    const-string v1, "attachment"

    :cond_0
    invoke-direct {v2, v1}, La/a/a/s;-><init>(Ljava/lang/String;)V

    const-string v1, "filename"

    invoke-virtual {v2, v1, v0}, La/a/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Disposition"

    invoke-virtual {v2}, La/a/a/s;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, La/a/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, La/a/a/h;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "Content-Type"

    invoke-interface {p0, v1, v3}, La/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_1
    new-instance v2, La/a/a/k;

    invoke-direct {v2, v1}, La/a/a/k;-><init>(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {v2, v1, v0}, La/a/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    invoke-virtual {v2}, La/a/a/k;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, La/a/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch La/a/a/d; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, La/a/o;

    const-string v2, "Can\'t encode filename"

    invoke-direct {v1, v2, v0}, La/a/o;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, La/a/a/h;->d(La/a/a/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final e()Ljava/io/InputStream;
    .locals 4

    iget-object v0, p0, La/a/a/h;->h:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object p0, p0, La/a/a/h;->h:Ljava/io/InputStream;

    check-cast p0, La/a/a/c;

    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    invoke-interface {p0, v0, v1, v2, v3}, La/a/a/c;->a(JJ)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/a/a/h;->g:[B

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, La/a/a/h;->g:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    :cond_1
    new-instance v0, La/a/o;

    const-string v1, "No content"

    invoke-direct {v0, v1}, La/a/o;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final f()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, La/a/a/h;->b(La/a/a/b;)V

    iget-object v0, p0, La/a/a/h;->j:Ljava/lang/Object;

    if-eqz v0, :cond_1

    new-instance v0, La/b/f;

    iget-object v1, p0, La/a/a/h;->j:Ljava/lang/Object;

    invoke-virtual {p0}, La/a/a/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, La/b/f;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, La/a/a/h;->f:La/b/f;

    iput-object v3, p0, La/a/a/h;->j:Ljava/lang/Object;

    iput-object v3, p0, La/a/a/h;->g:[B

    iget-object v0, p0, La/a/a/h;->h:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, La/a/a/h;->h:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput-object v3, p0, La/a/a/h;->h:Ljava/io/InputStream;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
