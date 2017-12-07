.class public La/a/p;
.super Ljava/lang/Object;


# static fields
.field private static l:Z

.field private static m:Ljava/util/BitSet;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/net/InetAddress;

.field private g:Z

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    sput-boolean v1, La/a/p;->l:Z

    :try_start_0
    const-string v0, "mail.URLName.dontencode"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, La/a/p;->l:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, La/a/p;->m:Ljava/util/BitSet;

    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-le v0, v1, :cond_1

    const/16 v0, 0x41

    :goto_3
    const/16 v1, 0x5a

    if-le v0, v1, :cond_2

    const/16 v0, 0x30

    :goto_4
    const/16 v1, 0x39

    if-le v0, v1, :cond_3

    sget-object v0, La/a/p;->m:Ljava/util/BitSet;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, La/a/p;->m:Ljava/util/BitSet;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, La/a/p;->m:Ljava/util/BitSet;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, La/a/p;->m:Ljava/util/BitSet;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    sget-object v0, La/a/p;->m:Ljava/util/BitSet;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v1, La/a/p;->m:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    sget-object v1, La/a/p;->m:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    sget-object v1, La/a/p;->m:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, La/a/p;->g:Z

    iput v3, p0, La/a/p;->h:I

    iput v1, p0, La/a/p;->k:I

    iput-object p1, p0, La/a/p;->b:Ljava/lang/String;

    iput-object p2, p0, La/a/p;->e:Ljava/lang/String;

    iput p3, p0, La/a/p;->h:I

    if-eqz p4, :cond_0

    const/16 v0, 0x23

    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-virtual {p4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La/a/p;->i:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/p;->j:Ljava/lang/String;

    :goto_0
    sget-boolean v0, La/a/p;->l:Z

    if-eqz v0, :cond_1

    invoke-static {p5}, La/a/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, La/a/p;->c:Ljava/lang/String;

    sget-boolean v0, La/a/p;->l:Z

    if-eqz v0, :cond_2

    invoke-static {v2}, La/a/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, La/a/p;->d:Ljava/lang/String;

    return-void

    :cond_0
    iput-object p4, p0, La/a/p;->i:Ljava/lang/String;

    iput-object v2, p0, La/a/p;->j:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, p5

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    move v0, v3

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ltz v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    sget-object v2, La/a/p;->m:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-static {p0}, La/a/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/16 v10, 0x10

    const/4 v9, 0x0

    const/16 v8, 0x20

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move v3, v9

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-object v5, La/a/p;->m:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_2

    if-ne v4, v8, :cond_1

    const/16 v4, 0x2b

    :cond_1
    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {v2, v4}, Ljava/io/OutputStreamWriter;->write(I)V

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move v5, v9

    :goto_2
    array-length v6, v4

    if-lt v5, v6, :cond_3

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_1

    :cond_3
    const/16 v6, 0x25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v6, v4, v5

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    invoke-static {v6, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_4

    sub-int/2addr v6, v8

    int-to-char v6, v6

    :cond_4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v6, v4, v5

    and-int/lit8 v6, v6, 0xf

    invoke-static {v6, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_5

    sub-int/2addr v6, v8

    int-to-char v6, v6

    :cond_5
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "+%"

    invoke-static {p0, v0}, La/a/p;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "8859_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :sswitch_0
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :sswitch_1
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v1, 0x3

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :catch_1
    move-exception v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method private declared-synchronized g()Ljava/net/InetAddress;
    .locals 2

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La/a/p;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/p;->f:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, La/a/p;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v0, p0, La/a/p;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, La/a/p;->f:Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, La/a/p;->g:Z

    iget-object v0, p0, La/a/p;->f:Ljava/net/InetAddress;

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, La/a/p;->f:Ljava/net/InetAddress;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, La/a/p;->h:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/p;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/p;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/p;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    sget-boolean v0, La/a/p;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/p;->c:Ljava/lang/String;

    invoke-static {v0}, La/a/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/a/p;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, La/a/p;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    check-cast p1, La/a/p;

    iget-object v0, p1, La/a/p;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, La/a/p;->b:Ljava/lang/String;

    iget-object v1, p0, La/a/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, La/a/p;->g()Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {p1}, La/a/p;->g()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, La/a/p;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, La/a/p;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, La/a/p;->e:Ljava/lang/String;

    iget-object v1, p1, La/a/p;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, La/a/p;->e:Ljava/lang/String;

    iget-object v1, p1, La/a/p;->e:Ljava/lang/String;

    if-eq v0, v1, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, La/a/p;->c:Ljava/lang/String;

    iget-object v1, p1, La/a/p;->c:Ljava/lang/String;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, La/a/p;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, La/a/p;->c:Ljava/lang/String;

    iget-object v1, p1, La/a/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    iget-object v0, p0, La/a/p;->i:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_1
    iget-object v1, p1, La/a/p;->i:Ljava/lang/String;

    if-nez v1, :cond_9

    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    goto :goto_0

    :cond_8
    iget-object v0, p0, La/a/p;->i:Ljava/lang/String;

    goto :goto_1

    :cond_9
    iget-object v1, p1, La/a/p;->i:Ljava/lang/String;

    goto :goto_2

    :cond_a
    iget v0, p0, La/a/p;->h:I

    iget v1, p1, La/a/p;->h:I

    if-eq v0, v1, :cond_b

    move v0, v2

    goto :goto_0

    :cond_b
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    sget-boolean v0, La/a/p;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/p;->d:Ljava/lang/String;

    invoke-static {v0}, La/a/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/a/p;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, La/a/p;->k:I

    if-eqz v0, :cond_0

    iget v0, p0, La/a/p;->k:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, La/a/p;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p0, La/a/p;->k:I

    iget-object v1, p0, La/a/p;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, La/a/p;->k:I

    :cond_1
    invoke-direct {p0}, La/a/p;->g()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v1, p0, La/a/p;->k:I

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, La/a/p;->k:I

    :cond_2
    :goto_1
    iget-object v0, p0, La/a/p;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, La/a/p;->k:I

    iget-object v1, p0, La/a/p;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, La/a/p;->k:I

    :cond_3
    iget-object v0, p0, La/a/p;->i:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget v0, p0, La/a/p;->k:I

    iget-object v1, p0, La/a/p;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, La/a/p;->k:I

    :cond_4
    iget v0, p0, La/a/p;->k:I

    iget v1, p0, La/a/p;->h:I

    add-int/2addr v0, v1

    iput v0, p0, La/a/p;->k:I

    iget v0, p0, La/a/p;->k:I

    goto :goto_0

    :cond_5
    iget-object v0, p0, La/a/p;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v0, p0, La/a/p;->k:I

    iget-object v1, p0, La/a/p;->e:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, La/a/p;->k:I

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, La/a/p;->a:Ljava/lang/String;

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, La/a/p;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, La/a/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, La/a/p;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, La/a/p;->e:Ljava/lang/String;

    if-eqz v1, :cond_6

    :cond_1
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, La/a/p;->c:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, La/a/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, La/a/p;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, La/a/p;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v1, p0, La/a/p;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, La/a/p;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget v1, p0, La/a/p;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, La/a/p;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v1, p0, La/a/p;->i:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    iget-object v1, p0, La/a/p;->i:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, La/a/p;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    iget-object v1, p0, La/a/p;->j:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, La/a/p;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/p;->a:Ljava/lang/String;

    :cond_9
    iget-object v0, p0, La/a/p;->a:Ljava/lang/String;

    return-object v0
.end method
