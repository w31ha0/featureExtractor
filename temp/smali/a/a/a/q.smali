.class public final La/a/a/q;
.super La/a/ac;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "()<>@,;:\\\"\t .[]"

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/a/q;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/ac;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, La/a/ac;-><init>()V

    invoke-static {p1, v3, v2}, La/a/a/q;->a(Ljava/lang/String;ZZ)[La/a/a/q;

    move-result-object v0

    array-length v1, v0

    if-eq v1, v3, :cond_0

    new-instance v0, La/a/a/v;

    const-string v1, "Illegal address"

    invoke-direct {v0, v1, p1}, La/a/a/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    aget-object v1, v0, v2

    iget-object v1, v1, La/a/a/q;->a:Ljava/lang/String;

    iput-object v1, p0, La/a/a/q;->a:Ljava/lang/String;

    aget-object v1, v0, v2

    iget-object v1, v1, La/a/a/q;->b:Ljava/lang/String;

    iput-object v1, p0, La/a/a/q;->b:Ljava/lang/String;

    aget-object v0, v0, v2

    iget-object v0, v0, La/a/a/q;->c:Ljava/lang/String;

    iput-object v0, p0, La/a/a/q;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4

    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, p2

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

.method public static a(La/a/ae;)La/a/a/q;
    .locals 6

    const/4 v4, 0x0

    if-nez p0, :cond_1

    :try_start_0
    const-string v0, "user.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    move-object v0, v4

    :goto_0
    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_7

    new-instance v1, La/a/a/q;

    invoke-direct {v1, v0}, La/a/a/q;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const-string v0, "mail.from"

    invoke-virtual {p0, v0}, La/a/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v1, "mail.user"

    invoke-virtual {p0, v1}, La/a/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string v1, "user.name"

    invoke-virtual {p0, v1}, La/a/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const-string v1, "user.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    const-string v2, "mail.host"

    invoke-virtual {p0, v2}, La/a/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch La/a/a/v; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_7
    :goto_2
    move-object v0, v4

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_8
    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto/16 :goto_0

    :cond_9
    move-object v1, v4

    move-object v2, v4

    goto/16 :goto_0
.end method

.method public static a([La/a/ac;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    const/4 v6, -0x1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move v2, v1

    :goto_1
    array-length v3, p0

    if-lt v1, v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x2

    :cond_3
    aget-object v3, p0, v1

    invoke-virtual {v3}, La/a/ac;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_5

    :goto_2
    add-int/2addr v4, v2

    const/16 v5, 0x4c

    if-le v4, v5, :cond_4

    const-string v2, "\r\n\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x8

    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)[La/a/a/q;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, La/a/a/q;->a(Ljava/lang/String;ZZ)[La/a/a/q;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)[La/a/a/q;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, La/a/a/q;->a(Ljava/lang/String;ZZ)[La/a/a/q;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;ZZ)[La/a/a/q;
    .locals 19

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    const/4 v11, -0x1

    const/4 v12, 0x0

    move v13, v11

    move/from16 v16, v8

    move v8, v5

    move/from16 v5, v16

    move/from16 v17, v4

    move v4, v9

    move/from16 v9, v17

    move/from16 v18, v11

    move v11, v12

    move/from16 v12, v18

    :goto_0
    if-lt v11, v6, :cond_5

    if-ltz v13, :cond_4

    const/4 v6, -0x1

    if-ne v12, v6, :cond_21

    move v6, v11

    :goto_1
    move-object/from16 v0, p0

    move v1, v13

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    if-eqz p2, :cond_20

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    invoke-static {v6, v5}, La/a/a/q;->b(Ljava/lang/String;Z)V

    :cond_2
    new-instance p1, La/a/a/q;

    invoke-direct/range {p1 .. p1}, La/a/a/q;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p1

    iput-object v0, v1, La/a/a/q;->a:Ljava/lang/String;

    if-ltz v9, :cond_3

    move-object/from16 v0, p0

    move v1, v9

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, La/a/a/q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v0, v1, La/a/a/q;->c:Ljava/lang/String;

    :cond_3
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result p0

    move/from16 v0, p0

    new-array v0, v0, [La/a/a/q;

    move-object/from16 p0, v0

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object p0

    :cond_5
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sparse-switch v14, :sswitch_data_0

    const/4 v14, -0x1

    if-ne v13, v14, :cond_6

    move v13, v11

    :cond_6
    :goto_2
    :sswitch_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v4, 0x1

    if-ltz v13, :cond_7

    const/4 v14, -0x1

    if-ne v12, v14, :cond_7

    move v12, v11

    :cond_7
    const/4 v14, -0x1

    if-ne v9, v14, :cond_8

    add-int/lit8 v9, v11, 0x1

    :cond_8
    add-int/lit8 v11, v11, 0x1

    const/4 v14, 0x1

    move/from16 v16, v14

    move v14, v11

    move/from16 v11, v16

    :goto_3
    if-ge v14, v6, :cond_9

    if-gtz v11, :cond_a

    :cond_9
    if-lez v11, :cond_b

    new-instance p1, La/a/a/v;

    const-string p2, "Missing \')\'"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, La/a/a/v;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :cond_a
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    sparse-switch v15, :sswitch_data_1

    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :sswitch_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :sswitch_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :sswitch_4
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    :cond_b
    add-int/lit8 v11, v14, -0x1

    const/4 v14, -0x1

    if-ne v8, v14, :cond_6

    move v8, v11

    goto :goto_2

    :sswitch_5
    new-instance p1, La/a/a/v;

    const-string p2, "Missing \'(\'"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, La/a/a/v;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :sswitch_6
    const/4 v4, 0x1

    if-eqz v5, :cond_c

    new-instance p1, La/a/a/v;

    const-string p2, "Extra route-addr"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, La/a/a/v;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :cond_c
    if-nez v7, :cond_25

    if-ltz v13, :cond_24

    move v5, v11

    :goto_5
    add-int/lit8 v8, v11, 0x1

    move v9, v8

    move v8, v13

    :goto_6
    const/4 v12, 0x0

    :goto_7
    add-int/lit8 v11, v11, 0x1

    if-lt v11, v6, :cond_e

    :cond_d
    if-lt v11, v6, :cond_11

    if-eqz v12, :cond_10

    new-instance p1, La/a/a/v;

    const-string p2, "Missing \'\"\'"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, La/a/a/v;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :cond_e
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    sparse-switch v13, :sswitch_data_2

    goto :goto_7

    :sswitch_7
    if-eqz v12, :cond_f

    const/4 v12, 0x0

    goto :goto_7

    :sswitch_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_f
    const/4 v12, 0x1

    goto :goto_7

    :sswitch_9
    if-eqz v12, :cond_d

    goto :goto_7

    :cond_10
    new-instance p1, La/a/a/v;

    const-string p2, "Missing \'>\'"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, La/a/a/v;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :cond_11
    const/4 v12, 0x1

    move v13, v9

    move v9, v8

    move v8, v5

    move v5, v12

    move v12, v11

    goto/16 :goto_2

    :sswitch_a
    new-instance p1, La/a/a/v;

    const-string p2, "Missing \'<\'"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, La/a/a/v;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :sswitch_b
    const/4 v4, 0x1

    const/4 v14, -0x1

    if-ne v13, v14, :cond_12

    move v13, v11

    :cond_12
    add-int/lit8 v11, v11, 0x1

    :goto_8
    if-lt v11, v6, :cond_13

    :sswitch_c
    if-lt v11, v6, :cond_6

    new-instance p1, La/a/a/v;

    const-string p2, "Missing \'\"\'"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, La/a/a/v;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :cond_13
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sparse-switch v14, :sswitch_data_3

    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :sswitch_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :sswitch_e
    const/4 v4, 0x1

    :goto_a
    add-int/lit8 v11, v11, 0x1

    if-lt v11, v6, :cond_14

    :pswitch_0
    if-lt v11, v6, :cond_6

    new-instance p1, La/a/a/v;

    const-string p2, "Missing \']\'"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, La/a/a/v;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :cond_14
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    packed-switch v14, :pswitch_data_0

    goto :goto_a

    :pswitch_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :sswitch_f
    const/4 v14, -0x1

    if-ne v13, v14, :cond_15

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v12, -0x1

    move v13, v12

    move/from16 v16, v4

    move v4, v5

    move/from16 v5, v16

    goto/16 :goto_2

    :cond_15
    if-eqz v7, :cond_16

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_16
    const/4 v14, -0x1

    if-ne v12, v14, :cond_17

    move v12, v11

    :cond_17
    move-object/from16 v0, p0

    move v1, v13

    move v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    if-nez v4, :cond_18

    if-nez p1, :cond_18

    if-eqz p2, :cond_1b

    :cond_18
    if-nez p1, :cond_19

    if-nez p2, :cond_1a

    :cond_19
    invoke-static {v12, v5}, La/a/a/q;->b(Ljava/lang/String;Z)V

    :cond_1a
    new-instance v4, La/a/a/q;

    invoke-direct {v4}, La/a/a/q;-><init>()V

    iput-object v12, v4, La/a/a/q;->a:Ljava/lang/String;

    if-ltz v9, :cond_23

    move-object/from16 v0, p0

    move v1, v9

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, La/a/a/q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, La/a/a/q;->c:Ljava/lang/String;

    const/4 v5, -0x1

    move v8, v5

    :goto_b
    invoke-virtual {v10, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v4, v5

    move v5, v8

    :goto_c
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, -0x1

    move v13, v12

    move/from16 v16, v8

    move v8, v4

    move v4, v9

    move v9, v5

    move/from16 v5, v16

    goto/16 :goto_2

    :cond_1b
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_d
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_1c

    move v4, v8

    move v5, v9

    goto :goto_c

    :cond_1c
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    invoke-static {v5, v12}, La/a/a/q;->b(Ljava/lang/String;Z)V

    new-instance v12, La/a/a/q;

    invoke-direct {v12}, La/a/a/q;-><init>()V

    iput-object v5, v12, La/a/a/q;->a:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_d

    :sswitch_10
    const/4 v4, 0x1

    if-eqz v7, :cond_1d

    new-instance p1, La/a/a/v;

    const-string p2, "Nested group"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, La/a/a/v;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :cond_1d
    const/4 v7, 0x1

    const/4 v14, -0x1

    if-ne v13, v14, :cond_6

    move v13, v11

    goto/16 :goto_2

    :sswitch_11
    const/4 v5, -0x1

    if-ne v13, v5, :cond_22

    move v5, v11

    :goto_e
    if-nez v7, :cond_1e

    new-instance p1, La/a/a/v;

    const-string p2, "Illegal semicolon, not in group"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, La/a/a/v;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :cond_1e
    const/4 v7, 0x0

    const/4 v12, -0x1

    if-ne v5, v12, :cond_1f

    move v5, v11

    :cond_1f
    new-instance v12, La/a/a/q;

    invoke-direct {v12}, La/a/a/q;-><init>()V

    add-int/lit8 v13, v11, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v12, La/a/a/q;->a:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v12, -0x1

    move v13, v12

    goto/16 :goto_2

    :cond_20
    new-instance p0, Ljava/util/StringTokenizer;

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_f
    invoke-virtual/range {p0 .. p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual/range {p0 .. p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x0

    invoke-static/range {p1 .. p2}, La/a/a/q;->b(Ljava/lang/String;Z)V

    new-instance p2, La/a/a/q;

    invoke-direct/range {p2 .. p2}, La/a/a/q;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iput-object v0, v1, La/a/a/q;->a:Ljava/lang/String;

    move-object v0, v10

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_f

    :cond_21
    move v6, v12

    goto/16 :goto_1

    :cond_22
    move v5, v13

    goto :goto_e

    :cond_23
    move v5, v8

    move v8, v9

    goto/16 :goto_b

    :cond_24
    move v5, v8

    goto/16 :goto_5

    :cond_25
    move v5, v8

    move v8, v9

    move v9, v13

    goto/16 :goto_6

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_b
        0x28 -> :sswitch_1
        0x29 -> :sswitch_5
        0x2c -> :sswitch_f
        0x3a -> :sswitch_10
        0x3b -> :sswitch_11
        0x3c -> :sswitch_6
        0x3e -> :sswitch_a
        0x5b -> :sswitch_e
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x28 -> :sswitch_3
        0x29 -> :sswitch_4
        0x5c -> :sswitch_2
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x22 -> :sswitch_7
        0x3e -> :sswitch_9
        0x5c -> :sswitch_8
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_c
        0x5c -> :sswitch_d
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x5c

    const/4 v6, 0x0

    const/16 v5, 0x22

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v6

    move v2, v6

    :goto_0
    if-lt v1, v0, :cond_0

    if-eqz v2, :cond_9

    new-instance v1, Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_1

    if-ne v3, v7, :cond_5

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v6

    :goto_2
    if-lt v2, v0, :cond_2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_3

    if-ne v3, v7, :cond_4

    :cond_3
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/16 v4, 0x20

    if-ge v3, v4, :cond_6

    const/16 v4, 0xd

    if-eq v3, v4, :cond_6

    const/16 v4, 0xa

    if-eq v3, v4, :cond_6

    const/16 v4, 0x9

    if-ne v3, v4, :cond_7

    :cond_6
    const/16 v4, 0x7f

    if-ge v3, v4, :cond_7

    sget-object v4, La/a/a/q;->d:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_8

    :cond_7
    const/4 v2, 0x1

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    move-object v0, p0

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;Z)V
    .locals 5

    const/16 v3, 0x40

    const/4 v4, 0x0

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_a

    move v0, v4

    :goto_0
    const-string v1, ",:"

    invoke-static {p0, v1, v0}, La/a/a/q;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_2

    :goto_1
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_7

    if-ne v1, v0, :cond_5

    new-instance v0, La/a/a/v;

    const-string v1, "Missing local name"

    invoke-direct {v0, v1, p0}, La/a/a/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_3

    new-instance v0, La/a/a/v;

    const-string v1, "Illegal route-addr"

    invoke-direct {v0, v1, p0}, La/a/a/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3a

    if-ne v0, v2, :cond_4

    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_6

    new-instance v0, La/a/a/v;

    const-string v1, "Missing domain"

    invoke-direct {v0, v1, p0}, La/a/a/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string v2, " \t\n\r"

    invoke-static {p0, v2, v4}, La/a/a/q;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_8

    new-instance v0, La/a/a/v;

    const-string v1, "Illegal whitespace in address"

    invoke-direct {v0, v1, p0}, La/a/a/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v0, 0x0

    move-object v1, v0

    move-object v0, p0

    goto :goto_2

    :cond_8
    const-string v2, "()<>,;:\\\"[]@"

    invoke-static {v0, v2, v4}, La/a/a/q;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_9

    new-instance v0, La/a/a/v;

    const-string v1, "Illegal character in local name"

    invoke-direct {v0, v1, p0}, La/a/a/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_9
    if-eqz v1, :cond_0

    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "()<>,;:\\\"[]@"

    invoke-static {v1, v0, v4}, La/a/a/q;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v0, La/a/a/v;

    const-string v1, "Illegal character in domain"

    invoke-direct {v0, v1, p0}, La/a/a/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_a
    move v0, v4

    goto/16 :goto_1
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v6, 0x5c

    const/4 v5, 0x1

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v7, v3

    move v3, v2

    move v2, v7

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_2
    move v7, v3

    move v3, v2

    move v2, v7

    goto :goto_2

    :cond_3
    move-object v0, p0

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "rfc822"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/q;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/a/a/q;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    instance-of v0, p1, La/a/a/q;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    check-cast p1, La/a/a/q;

    iget-object v0, p1, La/a/a/q;->a:Ljava/lang/String;

    iget-object v1, p0, La/a/a/q;->a:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, La/a/a/q;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, La/a/a/q;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, La/a/a/q;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, La/a/a/q;->a:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, La/a/a/q;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/q;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, La/a/a/q;->b:Ljava/lang/String;

    invoke-static {v0}, La/a/a/r;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/q;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, La/a/a/q;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/a/q;->c:Ljava/lang/String;

    invoke-static {v1}, La/a/a/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, La/a/a/q;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, La/a/a/q;->a:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, La/a/a/q;->a:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_3

    move v0, v3

    :goto_2
    if-nez v0, :cond_2

    iget-object v0, p0, La/a/a/q;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, La/a/a/q;->a:Ljava/lang/String;

    const-string v1, "()<>,;:\\\"[]"

    invoke-static {v0, v1, v2}, La/a/a/q;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_4

    move v0, v2

    :goto_3
    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, La/a/a/q;->a:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La/a/a/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
