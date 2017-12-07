.class public final La/a/a/e;
.super La/a/v;


# static fields
.field private static c:Z

.field private static d:Z

.field private static e:Z


# instance fields
.field private f:La/b/j;

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sput-boolean v2, La/a/a/e;->c:Z

    sput-boolean v2, La/a/a/e;->d:Z

    sput-boolean v2, La/a/a/e;->e:Z

    :try_start_0
    const-string v0, "mail.mime.multipart.ignoremissingendboundary"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    sput-boolean v0, La/a/a/e;->c:Z

    const-string v0, "mail.mime.multipart.ignoremissingboundaryparameter"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    sput-boolean v0, La/a/a/e;->d:Z

    const-string v0, "mail.mime.multipart.bmparse"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    :goto_2
    sput-boolean v0, La/a/a/e;->e:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "mixed"

    invoke-direct {p0, v0}, La/a/a/e;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, La/a/v;-><init>()V

    iput-object v1, p0, La/a/a/e;->f:La/b/j;

    iput-boolean v0, p0, La/a/a/e;->g:Z

    iput-boolean v0, p0, La/a/a/e;->h:Z

    iput-object v1, p0, La/a/a/e;->i:Ljava/lang/String;

    invoke-static {}, La/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, La/a/a/k;

    const-string v2, "multipart"

    invoke-direct {v1, v2, p1}, La/a/a/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "boundary"

    invoke-virtual {v1, v2, v0}, La/a/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, La/a/a/k;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/e;->b:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/io/InputStream;[BII)I
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, p3

    move v2, p2

    :goto_1
    if-gtz v1, :cond_3

    :cond_2
    if-gtz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_2

    add-int/2addr v2, v3

    add-int/2addr v0, v3

    sub-int/2addr v1, v3

    goto :goto_1
.end method

.method private static a(La/a/a/x;[B)La/a/a/h;
    .locals 1

    new-instance v0, La/a/a/h;

    invoke-direct {v0, p0, p1}, La/a/a/h;-><init>(La/a/a/x;[B)V

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)La/a/a/x;
    .locals 1

    new-instance v0, La/a/a/x;

    invoke-direct {v0, p0}, La/a/a/x;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;J)V
    .locals 7

    const-wide/16 v5, 0x0

    move-wide v0, p1

    :goto_0
    cmp-long v2, v0, v5

    if-gtz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-gtz v4, :cond_1

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "can\'t skip"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;)La/a/a/h;
    .locals 1

    new-instance v0, La/a/a/h;

    invoke-direct {v0, p0}, La/a/a/h;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private declared-synchronized c()V
    .locals 25

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, La/a/a/e;->g:Z

    move v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-boolean v5, La/a/a/e;->e:Z

    if-eqz v5, :cond_1

    invoke-direct/range {p0 .. p0}, La/a/a/e;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_1
    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, La/a/a/e;->f:La/b/j;

    move-object v6, v0

    invoke-interface {v6}, La/b/j;->a()Ljava/io/InputStream;

    move-result-object v6

    instance-of v11, v6, Ljava/io/ByteArrayInputStream;

    if-nez v11, :cond_2

    instance-of v11, v6, Ljava/io/BufferedInputStream;

    if-nez v11, :cond_2

    instance-of v11, v6, La/a/a/c;

    if-nez v11, :cond_2

    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-direct {v11, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v11

    :cond_2
    :try_start_3
    instance-of v11, v6, La/a/a/c;

    if-eqz v11, :cond_3

    move-object v0, v6

    check-cast v0, La/a/a/c;

    move-object v5, v0

    :cond_3
    new-instance v11, La/a/a/k;

    move-object/from16 v0, p0

    iget-object v0, v0, La/a/a/e;->b:Ljava/lang/String;

    move-object v12, v0

    invoke-direct {v11, v12}, La/a/a/k;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const-string v13, "boundary"

    invoke-virtual {v11, v13}, La/a/a/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "--"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v11

    :goto_1
    :try_start_4
    new-instance v12, Lcom/a/a/a/a;

    invoke-direct {v12, v6}, Lcom/a/a/a/a;-><init>(Ljava/io/InputStream;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v22, v14

    move-object v14, v13

    move-object/from16 v13, v22

    :cond_4
    :goto_2
    invoke-virtual {v12}, Lcom/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_6

    move-object v13, v11

    move-object v11, v15

    :goto_3
    if-nez v11, :cond_e

    new-instance v5, La/a/o;

    const-string v7, "Missing start boundary"

    invoke-direct {v5, v7}, La/a/o;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v5

    :try_start_5
    new-instance v7, La/a/o;

    const-string v8, "IO Error"

    invoke-direct {v7, v8, v5}, La/a/o;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v5

    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_4
    :try_start_7
    throw v5

    :catch_1
    move-exception v5

    new-instance v6, La/a/o;

    const-string v7, "No inputstream from datasource"

    invoke-direct {v6, v7, v5}, La/a/o;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    :cond_5
    sget-boolean v11, La/a/a/e;->d:Z

    if-nez v11, :cond_29

    new-instance v5, La/a/o;

    const-string v6, "Missing boundary parameter"

    invoke-direct {v5, v6}, La/a/o;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_6
    :try_start_8
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    :goto_5
    if-gez v16, :cond_8

    :cond_7
    const/16 v17, 0x0

    add-int/lit8 v16, v16, 0x1

    move-object v0, v15

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    if-eqz v11, :cond_a

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    move-object v13, v11

    move-object v11, v15

    goto :goto_3

    :cond_8
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x20

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    :cond_9
    add-int/lit8 v16, v16, -0x1

    goto :goto_5

    :cond_a
    const-string v16, "--"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_b

    move-object v11, v15

    move-object v13, v15

    goto :goto_3

    :cond_b
    invoke-virtual {v15}, Ljava/lang/String;->length()I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v16

    if-lez v16, :cond_4

    if-nez v13, :cond_c

    :try_start_9
    const-string v13, "line.separator"

    const-string v16, "\n"

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v13

    :cond_c
    :goto_6
    if-nez v14, :cond_d

    :try_start_a
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, 0x2

    move-object v0, v14

    move/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    :cond_d
    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :catch_2
    move-exception v13

    const-string v13, "\n"

    goto :goto_6

    :cond_e
    if-eqz v14, :cond_f

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, La/a/a/e;->i:Ljava/lang/String;

    :cond_f
    invoke-static {v13}, Lcom/a/a/a/g;->a(Ljava/lang/String;)[B

    move-result-object v11

    array-length v13, v11
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const/4 v14, 0x0

    move/from16 v22, v14

    move-wide v14, v7

    move/from16 v7, v22

    move-wide/from16 v23, v9

    move-wide/from16 v8, v23

    :goto_7
    if-eqz v7, :cond_10

    :goto_8
    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_9
    const/4 v5, 0x1

    :try_start_c
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, La/a/a/e;->g:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    :cond_10
    const/4 v10, 0x0

    if-eqz v5, :cond_14

    :try_start_d
    invoke-interface {v5}, La/a/a/c;->a()J

    move-result-wide v14

    :cond_11
    invoke-virtual {v12}, Lcom/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_12

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-gtz v17, :cond_11

    :cond_12
    if-nez v16, :cond_15

    sget-boolean v5, La/a/a/e;->c:Z

    if-nez v5, :cond_13

    new-instance v5, La/a/o;

    const-string v7, "missing multipart end boundary"

    invoke-direct {v5, v7}, La/a/o;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_13
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, La/a/a/e;->h:Z

    goto :goto_8

    :cond_14
    invoke-static {v6}, La/a/a/e;->a(Ljava/io/InputStream;)La/a/a/x;

    move-result-object v10

    :cond_15
    invoke-virtual {v6}, Ljava/io/InputStream;->markSupported()Z

    move-result v16

    if-nez v16, :cond_16

    new-instance v5, La/a/o;

    const-string v7, "Stream doesn\'t support mark"

    invoke-direct {v5, v7}, La/a/o;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_16
    const/16 v16, 0x0

    if-nez v5, :cond_19

    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v22, v16

    move-wide/from16 v16, v8

    move-object/from16 v8, v22

    :goto_a
    const/4 v9, 0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    move/from16 v22, v19

    move/from16 v23, v18

    move-wide/from16 v18, v16

    move/from16 v17, v9

    move/from16 v16, v23

    move/from16 v9, v22

    :goto_b
    if-eqz v17, :cond_1f

    add-int/lit8 v17, v13, 0x4

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    const/16 v17, 0x0

    :goto_c
    move/from16 v0, v17

    move v1, v13

    if-lt v0, v1, :cond_1a

    :cond_17
    move/from16 v0, v17

    move v1, v13

    if-ne v0, v1, :cond_1d

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v17

    const/16 v20, 0x2d

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_1c

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v20

    const/16 v21, 0x2d

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1c

    const/4 v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, La/a/a/e;->h:Z

    const/4 v7, 0x1

    :cond_18
    :goto_d
    if-eqz v5, :cond_26

    move-object v0, v5

    move-wide v1, v14

    move-wide/from16 v3, v18

    invoke-interface {v0, v1, v2, v3, v4}, La/a/a/c;->a(JJ)Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, La/a/a/e;->b(Ljava/io/InputStream;)La/a/a/h;

    move-result-object v8

    :goto_e
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-super {v0, v1}, La/a/v;->a(La/a/b;)V

    move-wide/from16 v8, v18

    goto/16 :goto_7

    :cond_19
    invoke-interface {v5}, La/a/a/c;->a()J

    move-result-wide v8

    move-object/from16 v22, v16

    move-wide/from16 v16, v8

    move-object/from16 v8, v22

    goto :goto_a

    :cond_1a
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v20

    aget-byte v21, v11, v17

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    add-int/lit8 v17, v17, 0x1

    goto :goto_c

    :cond_1b
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v17

    :cond_1c
    const/16 v20, 0x20

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_1b

    const/16 v20, 0x9

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_1b

    const/16 v20, 0xa

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_18

    const/16 v20, 0xd

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_1d

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v9

    const/16 v16, 0xa

    move v0, v9

    move/from16 v1, v16

    if-eq v0, v1, :cond_18

    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V

    goto :goto_d

    :cond_1d
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V

    if-eqz v8, :cond_1f

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1f

    move-object v0, v8

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v16, -0x1

    move v0, v9

    move/from16 v1, v16

    if-eq v0, v1, :cond_1e

    invoke-virtual {v8, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1e
    const/4 v9, -0x1

    move/from16 v16, v9

    :cond_1f
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v17

    if-gez v17, :cond_21

    sget-boolean v7, La/a/a/e;->c:Z

    if-nez v7, :cond_20

    new-instance v5, La/a/o;

    const-string v7, "missing multipart end boundary"

    invoke-direct {v5, v7}, La/a/o;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_20
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, La/a/a/e;->h:Z

    const/4 v7, 0x1

    goto/16 :goto_d

    :cond_21
    const/16 v20, 0xd

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_22

    const/16 v20, 0xa

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_25

    :cond_22
    const/16 v16, 0x1

    if-eqz v5, :cond_23

    invoke-interface {v5}, La/a/a/c;->a()J

    move-result-wide v18

    const-wide/16 v20, 0x1

    sub-long v18, v18, v20

    :cond_23
    const/16 v20, 0xd

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_28

    const/16 v20, 0x1

    move-object v0, v6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v20

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_24

    move/from16 v9, v20

    move/from16 v22, v17

    move/from16 v17, v16

    move/from16 v16, v22

    goto/16 :goto_b

    :cond_24
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V

    move/from16 v22, v17

    move/from16 v17, v16

    move/from16 v16, v22

    goto/16 :goto_b

    :cond_25
    const/16 v20, 0x0

    if-eqz v8, :cond_27

    move-object v0, v8

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move/from16 v17, v20

    goto/16 :goto_b

    :cond_26
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-static {v10, v8}, La/a/a/e;->a(La/a/a/x;[B)La/a/a/h;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result-object v8

    goto/16 :goto_e

    :catch_3
    move-exception v6

    goto/16 :goto_4

    :catch_4
    move-exception v5

    goto/16 :goto_9

    :cond_27
    move/from16 v17, v20

    goto/16 :goto_b

    :cond_28
    move/from16 v22, v17

    move/from16 v17, v16

    move/from16 v16, v22

    goto/16 :goto_b

    :cond_29
    move-object v11, v12

    goto/16 :goto_1
.end method

.method private declared-synchronized d()V
    .locals 30

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, La/a/a/e;->g:Z

    move v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, La/a/a/e;->f:La/b/j;

    move-object v6, v0

    invoke-interface {v6}, La/b/j;->a()Ljava/io/InputStream;

    move-result-object v6

    instance-of v11, v6, Ljava/io/ByteArrayInputStream;

    if-nez v11, :cond_1

    instance-of v11, v6, Ljava/io/BufferedInputStream;

    if-nez v11, :cond_1

    instance-of v11, v6, La/a/a/c;

    if-nez v11, :cond_1

    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-direct {v11, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v11

    :cond_1
    :try_start_2
    instance-of v11, v6, La/a/a/c;

    if-eqz v11, :cond_2

    move-object v0, v6

    check-cast v0, La/a/a/c;

    move-object v5, v0

    :cond_2
    new-instance v11, La/a/a/k;

    move-object/from16 v0, p0

    iget-object v0, v0, La/a/a/e;->b:Ljava/lang/String;

    move-object v12, v0

    invoke-direct {v11, v12}, La/a/a/k;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const-string v13, "boundary"

    invoke-virtual {v11, v13}, La/a/a/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "--"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v11

    :goto_1
    :try_start_3
    new-instance v12, Lcom/a/a/a/a;

    invoke-direct {v12, v6}, Lcom/a/a/a/a;-><init>(Ljava/io/InputStream;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v27, v14

    move-object v14, v13

    move-object/from16 v13, v27

    :cond_3
    :goto_2
    invoke-virtual {v12}, Lcom/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_5

    move-object v13, v11

    move-object v11, v15

    :goto_3
    if-nez v11, :cond_d

    new-instance v5, La/a/o;

    const-string v7, "Missing start boundary"

    invoke-direct {v5, v7}, La/a/o;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v5

    :try_start_4
    new-instance v7, La/a/o;

    const-string v8, "IO Error"

    invoke-direct {v7, v8, v5}, La/a/o;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v5

    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_4
    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    :catch_1
    move-exception v5

    :try_start_7
    new-instance v6, La/a/o;

    const-string v7, "No inputstream from datasource"

    invoke-direct {v6, v7, v5}, La/a/o;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    :cond_4
    sget-boolean v11, La/a/a/e;->d:Z

    if-nez v11, :cond_31

    new-instance v5, La/a/o;

    const-string v6, "Missing boundary parameter"

    invoke-direct {v5, v6}, La/a/o;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_5
    :try_start_8
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    :goto_5
    if-gez v16, :cond_7

    :cond_6
    const/16 v17, 0x0

    add-int/lit8 v16, v16, 0x1

    move-object v0, v15

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    if-eqz v11, :cond_9

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    move-object v13, v11

    move-object v11, v15

    goto :goto_3

    :cond_7
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x20

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    :cond_8
    add-int/lit8 v16, v16, -0x1

    goto :goto_5

    :cond_9
    const-string v16, "--"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    move-object v11, v15

    move-object v13, v15

    goto :goto_3

    :cond_a
    invoke-virtual {v15}, Ljava/lang/String;->length()I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v16

    if-lez v16, :cond_3

    if-nez v13, :cond_b

    :try_start_9
    const-string v13, "line.separator"

    const-string v16, "\n"

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v13

    :cond_b
    :goto_6
    if-nez v14, :cond_c

    :try_start_a
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, 0x2

    move-object v0, v14

    move/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    :cond_c
    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :catch_2
    move-exception v13

    const-string v13, "\n"

    goto :goto_6

    :cond_d
    if-eqz v14, :cond_e

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, La/a/a/e;->i:Ljava/lang/String;

    :cond_e
    invoke-static {v13}, Lcom/a/a/a/g;->a(Ljava/lang/String;)[B

    move-result-object v11

    array-length v13, v11

    const/16 v14, 0x100

    new-array v14, v14, [I

    const/4 v15, 0x0

    :goto_7
    if-lt v15, v13, :cond_f

    new-array v15, v13, [I

    move/from16 v16, v13

    :goto_8
    if-gtz v16, :cond_10

    const/16 v16, 0x1

    sub-int v16, v13, v16

    const/16 v17, 0x1

    aput v17, v15, v16
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/16 v16, 0x0

    move/from16 v27, v16

    move-wide/from16 v16, v7

    move/from16 v7, v27

    move-wide/from16 v28, v9

    move-wide/from16 v8, v28

    :goto_9
    if-eqz v7, :cond_14

    :goto_a
    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :goto_b
    const/4 v5, 0x1

    :try_start_c
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, La/a/a/e;->g:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_0

    :cond_f
    :try_start_d
    aget-byte v16, v11, v15

    add-int/lit8 v17, v15, 0x1

    aput v17, v14, v16

    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    :cond_10
    const/16 v17, 0x1

    sub-int v17, v13, v17

    :goto_c
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_12

    :goto_d
    if-gtz v17, :cond_13

    :cond_11
    add-int/lit8 v16, v16, -0x1

    goto :goto_8

    :cond_12
    aget-byte v18, v11, v17

    sub-int v19, v17, v16

    aget-byte v19, v11, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    const/16 v18, 0x1

    sub-int v18, v17, v18

    aput v16, v15, v18

    add-int/lit8 v17, v17, -0x1

    goto :goto_c

    :cond_13
    add-int/lit8 v17, v17, -0x1

    aput v16, v15, v17

    goto :goto_d

    :cond_14
    const/4 v10, 0x0

    if-eqz v5, :cond_18

    invoke-interface {v5}, La/a/a/c;->a()J

    move-result-wide v16

    :cond_15
    invoke-virtual {v12}, Lcom/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_16

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    if-gtz v19, :cond_15

    :cond_16
    if-nez v18, :cond_19

    sget-boolean v5, La/a/a/e;->c:Z

    if-nez v5, :cond_17

    new-instance v5, La/a/o;

    const-string v7, "missing multipart end boundary"

    invoke-direct {v5, v7}, La/a/o;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_17
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, La/a/a/e;->h:Z

    goto :goto_a

    :cond_18
    invoke-static {v6}, La/a/a/e;->a(Ljava/io/InputStream;)La/a/a/x;

    move-result-object v10

    :cond_19
    invoke-virtual {v6}, Ljava/io/InputStream;->markSupported()Z

    move-result v18

    if-nez v18, :cond_1a

    new-instance v5, La/a/o;

    const-string v7, "Stream doesn\'t support mark"

    invoke-direct {v5, v7}, La/a/o;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1a
    const/16 v18, 0x0

    if-nez v5, :cond_1b

    new-instance v18, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v27, v18

    move-wide/from16 v18, v8

    move-object/from16 v8, v27

    :goto_e
    new-array v9, v13, [B

    move v0, v13

    new-array v0, v0, [B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move/from16 v27, v22

    move/from16 v28, v21

    move-wide/from16 v21, v18

    move-object/from16 v19, v20

    move/from16 v18, v28

    move-object/from16 v20, v9

    move/from16 v9, v27

    :goto_f
    add-int/lit8 v23, v13, 0x4

    move/from16 v0, v23

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v23, v0

    move-object v0, v6

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v0, v6

    move-object/from16 v1, v20

    move/from16 v2, v24

    move v3, v13

    invoke-static {v0, v1, v2, v3}, La/a/a/e;->a(Ljava/io/InputStream;[BII)I

    move-result v24

    move/from16 v0, v24

    move v1, v13

    if-ge v0, v1, :cond_1e

    sget-boolean v7, La/a/a/e;->c:Z

    if-nez v7, :cond_1c

    new-instance v5, La/a/o;

    const-string v7, "missing multipart end boundary"

    invoke-direct {v5, v7}, La/a/o;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1b
    invoke-interface {v5}, La/a/a/c;->a()J

    move-result-wide v8

    move-object/from16 v27, v18

    move-wide/from16 v18, v8

    move-object/from16 v8, v27

    goto :goto_e

    :cond_1c
    if-eqz v5, :cond_1d

    invoke-interface {v5}, La/a/a/c;->a()J

    move-result-wide v21

    :cond_1d
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, La/a/a/e;->h:Z

    const/4 v7, 0x1

    move v9, v7

    move/from16 v7, v23

    :goto_10
    if-eqz v5, :cond_2c

    move-object v0, v5

    move-wide/from16 v1, v16

    move-wide/from16 v3, v21

    invoke-interface {v0, v1, v2, v3, v4}, La/a/a/c;->a(JJ)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, La/a/a/e;->b(Ljava/io/InputStream;)La/a/a/h;

    move-result-object v7

    :goto_11
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-super {v0, v1}, La/a/v;->a(La/a/b;)V

    move v7, v9

    move-wide/from16 v8, v21

    goto/16 :goto_9

    :cond_1e
    const/16 v23, 0x1

    sub-int v23, v13, v23

    :goto_12
    if-gez v23, :cond_24

    :cond_1f
    if-gez v23, :cond_30

    const/16 v23, 0x0

    if-nez v9, :cond_21

    const/16 v25, 0x1

    sub-int v25, v18, v25

    aget-byte v25, v19, v25

    const/16 v26, 0xd

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_20

    const/16 v26, 0xa

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_21

    :cond_20
    const/16 v23, 0x1

    const/16 v26, 0xa

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_21

    const/16 v25, 0x2

    move/from16 v0, v18

    move/from16 v1, v25

    if-lt v0, v1, :cond_21

    const/16 v25, 0x2

    sub-int v25, v18, v25

    aget-byte v25, v19, v25

    const/16 v26, 0xd

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_21

    const/16 v23, 0x2

    :cond_21
    if-nez v9, :cond_22

    if-lez v23, :cond_27

    :cond_22
    if-eqz v5, :cond_23

    invoke-interface {v5}, La/a/a/c;->a()J

    move-result-wide v21

    move v0, v13

    int-to-long v0, v0

    move-wide/from16 v25, v0

    sub-long v21, v21, v25

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v25, v0

    sub-long v21, v21, v25

    :cond_23
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v9

    const/16 v25, 0x2d

    move v0, v9

    move/from16 v1, v25

    if-ne v0, v1, :cond_26

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v25

    const/16 v26, 0x2d

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_26

    const/4 v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, La/a/a/e;->h:Z

    const/4 v7, 0x1

    move v9, v7

    move/from16 v7, v23

    goto/16 :goto_10

    :cond_24
    aget-byte v25, v20, v23

    aget-byte v26, v11, v23

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1f

    add-int/lit8 v23, v23, -0x1

    goto/16 :goto_12

    :cond_25
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v9

    :cond_26
    const/16 v25, 0x20

    move v0, v9

    move/from16 v1, v25

    if-eq v0, v1, :cond_25

    const/16 v25, 0x9

    move v0, v9

    move/from16 v1, v25

    if-eq v0, v1, :cond_25

    const/16 v25, 0xa

    move v0, v9

    move/from16 v1, v25

    if-eq v0, v1, :cond_2f

    const/16 v25, 0xd

    move v0, v9

    move/from16 v1, v25

    if-ne v0, v1, :cond_27

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v9

    const/16 v25, 0xa

    move v0, v9

    move/from16 v1, v25

    if-eq v0, v1, :cond_2f

    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V

    move v9, v7

    move/from16 v7, v23

    goto/16 :goto_10

    :cond_27
    const/4 v9, 0x0

    :goto_13
    add-int/lit8 v23, v9, 0x1

    aget-byte v24, v20, v9

    and-int/lit8 v24, v24, 0x7f

    aget v24, v14, v24

    sub-int v23, v23, v24

    aget v9, v15, v9

    move/from16 v0, v23

    move v1, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/16 v23, 0x2

    move v0, v9

    move/from16 v1, v23

    if-ge v0, v1, :cond_2a

    if-nez v5, :cond_28

    const/4 v9, 0x1

    move/from16 v0, v18

    move v1, v9

    if-le v0, v1, :cond_28

    const/4 v9, 0x0

    const/16 v23, 0x1

    sub-int v23, v18, v23

    move-object v0, v8

    move-object/from16 v1, v19

    move v2, v9

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_28
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V

    const-wide/16 v23, 0x1

    move-object v0, v6

    move-wide/from16 v1, v23

    invoke-static {v0, v1, v2}, La/a/a/e;->a(Ljava/io/InputStream;J)V

    if-lez v18, :cond_29

    const/4 v9, 0x0

    const/16 v23, 0x1

    sub-int v18, v18, v23

    aget-byte v18, v19, v18

    aput-byte v18, v19, v9

    const/4 v9, 0x1

    const/16 v18, 0x0

    aget-byte v18, v20, v18

    aput-byte v18, v19, v9

    const/4 v9, 0x2

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    :goto_14
    const/16 v20, 0x0

    move/from16 v27, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v18

    move/from16 v18, v9

    move/from16 v9, v27

    goto/16 :goto_f

    :cond_29
    const/4 v9, 0x0

    const/16 v18, 0x0

    aget-byte v18, v20, v18

    aput-byte v18, v19, v9

    const/4 v9, 0x1

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    goto :goto_14

    :cond_2a
    if-lez v18, :cond_2b

    if-nez v5, :cond_2b

    const/16 v23, 0x0

    move-object v0, v8

    move-object/from16 v1, v19

    move/from16 v2, v23

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_2b
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V

    move v0, v9

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object v0, v6

    move-wide/from16 v1, v23

    invoke-static {v0, v1, v2}, La/a/a/e;->a(Ljava/io/InputStream;J)V

    move-object/from16 v18, v20

    goto :goto_14

    :cond_2c
    sub-int v23, v18, v7

    if-lez v23, :cond_2d

    const/16 v23, 0x0

    sub-int v7, v18, v7

    move-object v0, v8

    move-object/from16 v1, v19

    move/from16 v2, v23

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, La/a/a/e;->h:Z

    move v7, v0

    if-nez v7, :cond_2e

    if-lez v24, :cond_2e

    const/4 v7, 0x0

    move-object v0, v8

    move-object/from16 v1, v20

    move v2, v7

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_2e
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v10, v7}, La/a/a/e;->a(La/a/a/x;[B)La/a/a/h;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v7

    goto/16 :goto_11

    :catch_3
    move-exception v6

    goto/16 :goto_4

    :catch_4
    move-exception v5

    goto/16 :goto_b

    :cond_2f
    move v9, v7

    move/from16 v7, v23

    goto/16 :goto_10

    :cond_30
    move/from16 v9, v23

    goto/16 :goto_13

    :cond_31
    move-object v11, v12

    goto/16 :goto_1
.end method


# virtual methods
.method protected final a()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, La/a/a/e;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, La/a/a/e;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/h;

    invoke-virtual {v0}, La/a/a/h;->f()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final declared-synchronized a(La/a/b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, La/a/a/e;->c()V

    invoke-super {p0, p1}, La/a/v;->a(La/a/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
