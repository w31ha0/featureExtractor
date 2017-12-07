.class public La/a/a/r;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/util/Hashtable;

.field private static h:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    sput-boolean v4, La/a/a/r;->a:Z

    sput-boolean v3, La/a/a/r;->b:Z

    sput-boolean v3, La/a/a/r;->c:Z

    sput-boolean v4, La/a/a/r;->d:Z

    :try_start_0
    const-string v1, "mail.mime.decodetext.strict"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    :goto_0
    sput-boolean v1, La/a/a/r;->a:Z

    const-string v1, "mail.mime.encodeeol.strict"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    :goto_1
    sput-boolean v1, La/a/a/r;->b:Z

    const-string v1, "mail.mime.foldencodedwords"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v4

    :goto_2
    sput-boolean v1, La/a/a/r;->c:Z

    const-string v1, "mail.mime.foldtext"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v3

    :goto_3
    sput-boolean v1, La/a/a/r;->d:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_4
    new-instance v1, Ljava/util/Hashtable;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v1, La/a/a/r;->g:Ljava/util/Hashtable;

    :try_start_1
    const-class v1, La/a/a/r;

    const-string v2, "/META-INF/javamail.charset.map"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_2
    new-instance v2, Lcom/a/a/a/a;

    invoke-direct {v2, v1}, Lcom/a/a/a/a;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    move-object v0, v2

    check-cast v0, Lcom/a/a/a/a;

    move-object v1, v0

    sget-object v3, La/a/a/r;->h:Ljava/util/Hashtable;

    invoke-static {v1, v3}, La/a/a/r;->a(Lcom/a/a/a/a;Ljava/util/Hashtable;)V

    move-object v0, v2

    check-cast v0, Lcom/a/a/a/a;

    move-object v3, v0

    sget-object v1, La/a/a/r;->g:Ljava/util/Hashtable;

    invoke-static {v3, v1}, La/a/a/r;->a(Lcom/a/a/a/a;Ljava/util/Hashtable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_0
    :goto_5
    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "8859_1"

    const-string v3, "ISO-8859-1"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "iso8859_1"

    const-string v3, "ISO-8859-1"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "iso8859-1"

    const-string v3, "ISO-8859-1"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "8859_2"

    const-string v3, "ISO-8859-2"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "iso8859_2"

    const-string v3, "ISO-8859-2"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "iso8859-2"

    const-string v3, "ISO-8859-2"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "8859_3"

    const-string v3, "ISO-8859-3"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "iso8859_3"

    const-string v3, "ISO-8859-3"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "iso8859-3"

    const-string v3, "ISO-8859-3"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "8859_4"

    const-string v3, "ISO-8859-4"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "iso8859_4"

    const-string v3, "ISO-8859-4"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "iso8859-4"

    const-string v3, "ISO-8859-4"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "8859_5"

    const-string v3, "ISO-8859-5"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "iso8859_5"

    const-string v3, "ISO-8859-5"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "iso8859-5"

    const-string v3, "ISO-8859-5"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "8859_6"

    const-string v3, "ISO-8859-6"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "iso8859_6"

    const-string v3, "ISO-8859-6"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "iso8859-6"

    const-string v3, "ISO-8859-6"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "8859_7"

    const-string v3, "ISO-8859-7"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "iso8859_7"

    const-string v3, "ISO-8859-7"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "iso8859-7"

    const-string v3, "ISO-8859-7"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "8859_8"

    const-string v3, "ISO-8859-8"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "iso8859_8"

    const-string v3, "ISO-8859-8"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "iso8859-8"

    const-string v3, "ISO-8859-8"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "8859_9"

    const-string v3, "ISO-8859-9"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "iso8859_9"

    const-string v3, "ISO-8859-9"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "iso8859-9"

    const-string v3, "ISO-8859-9"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "sjis"

    const-string v3, "Shift_JIS"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "jis"

    const-string v3, "ISO-2022-JP"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "iso2022jp"

    const-string v3, "ISO-2022-JP"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "euc_jp"

    const-string v3, "euc-jp"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "koi8_r"

    const-string v3, "koi8-r"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "euc_cn"

    const-string v3, "euc-cn"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "euc_tw"

    const-string v3, "euc-tw"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->h:Ljava/util/Hashtable;

    const-string v2, "euc_kr"

    const-string v3, "euc-kr"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v1, La/a/a/r;->g:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, La/a/a/r;->g:Ljava/util/Hashtable;

    const-string v2, "iso-2022-cn"

    const-string v3, "ISO2022CN"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->g:Ljava/util/Hashtable;

    const-string v2, "iso-2022-kr"

    const-string v3, "ISO2022KR"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->g:Ljava/util/Hashtable;

    const-string v2, "utf-8"

    const-string v3, "UTF8"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->g:Ljava/util/Hashtable;

    const-string v2, "utf8"

    const-string v3, "UTF8"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->g:Ljava/util/Hashtable;

    const-string v2, "ja_jp.iso2022-7"

    const-string v3, "ISO2022JP"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->g:Ljava/util/Hashtable;

    const-string v2, "ja_jp.eucjp"

    const-string v3, "EUCJIS"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->g:Ljava/util/Hashtable;

    const-string v2, "euc-kr"

    const-string v3, "KSC5601"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->g:Ljava/util/Hashtable;

    const-string v2, "euckr"

    const-string v3, "KSC5601"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->g:Ljava/util/Hashtable;

    const-string v2, "us-ascii"

    const-string v3, "ISO-8859-1"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/a/r;->g:Ljava/util/Hashtable;

    const-string v2, "x-us-ascii"

    const-string v3, "ISO-8859-1"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    :cond_3
    move v1, v4

    goto/16 :goto_0

    :cond_4
    move v1, v3

    goto/16 :goto_1

    :cond_5
    move v1, v3

    goto/16 :goto_2

    :cond_6
    move v1, v4

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_6
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_7
    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v1

    goto/16 :goto_5

    :catch_1
    move-exception v2

    goto :goto_7

    :catch_2
    move-exception v1

    goto/16 :goto_5

    :catchall_1
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto/16 :goto_4
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;Z)I
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-boolean v5, La/a/a/r;->b:Z

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    const/4 v5, 0x1

    :goto_0
    const/16 v6, 0x1000

    new-array v6, v6, [B

    move v12, v4

    move v4, v0

    move v0, v12

    move v13, v1

    move v1, v3

    move v3, v13

    :goto_1
    const/4 v7, 0x0

    const/16 v8, 0x1000

    :try_start_0
    invoke-virtual {p0, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    move p0, v0

    move p1, v1

    move v0, v3

    move v1, v4

    :goto_2
    if-nez v0, :cond_b

    if-eqz p0, :cond_9

    const/4 p0, 0x3

    :goto_3
    return p0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    move v12, v9

    move v9, v4

    move v4, v2

    move v2, v0

    move v0, v12

    move v13, v8

    move v8, v3

    move v3, v1

    move v1, v13

    :goto_4
    if-lt v0, v7, :cond_2

    move v0, v2

    move v1, v3

    move v2, v4

    move v3, v8

    move v4, v9

    goto :goto_1

    :cond_2
    :try_start_1
    aget-byte v10, v6, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit16 v10, v10, 0xff

    if-eqz v5, :cond_e

    const/16 v11, 0xd

    if-ne v1, v11, :cond_3

    const/16 v11, 0xa

    if-ne v10, v11, :cond_4

    :cond_3
    const/16 v11, 0xd

    if-eq v1, v11, :cond_e

    const/16 v1, 0xa

    if-ne v10, v1, :cond_e

    :cond_4
    const/4 v1, 0x1

    :goto_5
    const/16 v2, 0xd

    if-eq v10, v2, :cond_5

    const/16 v2, 0xa

    if-ne v10, v2, :cond_6

    :cond_5
    const/4 v2, 0x0

    move v12, v3

    move v3, v2

    move v2, v12

    :goto_6
    :try_start_2
    invoke-static {v10}, La/a/a/r;->a(I)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    if-eqz v4, :cond_8

    if-eqz p1, :cond_7

    const/4 p0, 0x3

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v4, 0x1

    const/16 v4, 0x3e6

    if-le v2, v4, :cond_d

    const/4 v3, 0x1

    move v12, v3

    move v3, v2

    move v2, v12

    goto :goto_6

    :cond_7
    add-int/lit8 v4, v8, 0x1

    move v8, v9

    :goto_7
    add-int/lit8 v0, v0, 0x1

    move v9, v8

    move v8, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v10

    goto :goto_4

    :cond_8
    add-int/lit8 v4, v9, 0x1

    move v12, v8

    move v8, v4

    move v4, v12

    goto :goto_7

    :cond_9
    if-eqz p1, :cond_a

    const/4 p0, 0x2

    goto :goto_3

    :cond_a
    const/4 p0, 0x1

    goto :goto_3

    :cond_b
    if-le v1, v0, :cond_c

    const/4 p0, 0x2

    goto :goto_3

    :cond_c
    const/4 p0, 0x3

    goto :goto_3

    :catch_0
    move-exception p0

    move p0, v0

    move p1, v1

    move v0, v3

    move v1, v4

    goto :goto_2

    :catch_1
    move-exception p0

    move p0, v2

    move p1, v3

    move v0, v8

    move v1, v9

    goto :goto_2

    :catch_2
    move-exception p0

    move p0, v1

    move p1, v2

    move v0, v8

    move v1, v9

    goto/16 :goto_2

    :cond_d
    move v12, v3

    move v3, v2

    move v2, v12

    goto :goto_6

    :cond_e
    move v1, v2

    goto :goto_5
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    const-string v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/a/a/a/b;

    invoke-direct {v0, p0}, Lcom/a/a/a/b;-><init>(Ljava/io/InputStream;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "quoted-printable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/a/a/a/h;

    invoke-direct {v0, p0}, Lcom/a/a/a/h;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_1
    const-string v0, "uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "x-uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "x-uue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Lcom/a/a/a/c;

    invoke-direct {v0, p0}, Lcom/a/a/a/c;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_3
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move-object v0, p0

    goto :goto_0

    :cond_5
    new-instance v0, La/a/o;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown encoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/o;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a()Ljava/lang/String;
    .locals 3

    sget-object v0, La/a/a/r;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "mail.mime.charset"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/a/r;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, La/a/a/r;->f:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-static {}, La/a/a/r;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v0, La/a/a/r;->h:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    if-nez v1, :cond_4

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_1
    sput-object v0, La/a/a/r;->f:Ljava/lang/String;

    :cond_3
    sget-object v0, La/a/a/r;->f:Ljava/lang/String;

    return-object v0

    :cond_4
    sget-object v0, La/a/a/r;->h:Ljava/util/Hashtable;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 13

    const/16 v12, 0x20

    const/16 v11, 0x9

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    sget-boolean v0, La/a/a/r;->d:Z

    if-nez v0, :cond_1

    move-object v0, p1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v10

    :goto_1
    if-gez v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v10

    if-eq v0, v1, :cond_c

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p0

    const/16 v2, 0x4c

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v2, v0

    move v3, p0

    move v0, v8

    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    const/16 v5, 0x4c

    if-gt v4, v5, :cond_5

    move-object v0, v2

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v12, :cond_4

    if-eq v1, v11, :cond_4

    const/16 v2, 0xd

    if-eq v1, v2, :cond_4

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    move v4, v9

    move v5, v0

    move v0, v8

    :goto_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v0, v6, :cond_7

    :cond_6
    if-ne v4, v9, :cond_b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ""

    goto :goto_4

    :cond_7
    if-eq v4, v9, :cond_8

    add-int v6, v3, v0

    const/16 v7, 0x4c

    if-gt v6, v7, :cond_6

    :cond_8
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v12, :cond_9

    if-ne v6, v11, :cond_a

    :cond_9
    if-eq v5, v12, :cond_a

    if-eq v5, v11, :cond_a

    move v4, v0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    move v5, v6

    goto :goto_5

    :cond_b
    invoke-virtual {v2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move v3, v10

    goto :goto_3

    :cond_c
    move-object v0, p1

    goto/16 :goto_2
.end method

.method public static a(La/b/f;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, La/b/f;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, La/b/f;->a()La/b/j;

    move-result-object v0

    invoke-static {v0}, La/a/a/r;->a(La/b/j;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, La/a/a/k;

    invoke-virtual {p0}, La/b/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/k;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "text/*"

    invoke-virtual {v0, v1}, La/a/a/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, La/a/a/u;

    invoke-direct {v0, v2, v2}, La/a/a/u;-><init>(ZZ)V

    :try_start_1
    invoke-virtual {p0, v0}, La/b/f;->a(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-virtual {v0}, La/a/a/u;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "base64"

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "base64"

    goto :goto_0

    :pswitch_0
    const-string v0, "7bit"

    goto :goto_0

    :pswitch_1
    const-string v0, "quoted-printable"

    goto :goto_0

    :cond_1
    new-instance v0, La/a/a/u;

    sget-boolean v1, La/a/a/r;->b:Z

    invoke-direct {v0, v3, v1}, La/a/a/u;-><init>(ZZ)V

    :try_start_2
    invoke-virtual {p0, v0}, La/b/f;->a(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    invoke-virtual {v0}, La/a/a/u;->a()I

    move-result v0

    if-ne v0, v3, :cond_2

    const-string v0, "7bit"

    goto :goto_0

    :cond_2
    const-string v0, "base64"

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(La/b/j;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, La/a/a/k;

    invoke-interface {p0}, La/b/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/k;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, La/b/j;->a()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const-string v2, "text/*"

    invoke-virtual {v0, v2}, La/a/a/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, La/a/a/r;->a(Ljava/io/InputStream;Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "base64"

    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "base64"

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    const-string v0, "7bit"

    goto :goto_1

    :pswitch_1
    const-string v0, "quoted-printable"

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, La/a/a/r;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x5c

    const/16 v8, 0xd

    const/16 v7, 0xa

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

    if-eq v3, v9, :cond_1

    if-eq v3, v8, :cond_1

    if-ne v3, v7, :cond_6

    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    add-int/lit8 v3, v0, 0x3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v3, v6

    :goto_2
    if-lt v1, v0, :cond_2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_3

    if-eq v4, v9, :cond_3

    if-eq v4, v8, :cond_3

    if-ne v4, v7, :cond_5

    :cond_3
    if-ne v4, v7, :cond_4

    if-eq v3, v8, :cond_5

    :cond_4
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_2

    :cond_6
    const/16 v4, 0x20

    if-lt v3, v4, :cond_7

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_7

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

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

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x1

    invoke-static {p0}, La/a/a/r;->f(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, La/a/a/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, La/a/a/r;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const-string v0, "Q"

    :goto_1
    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v5

    :goto_2
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x44

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v3, v6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "=?"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "?"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v6, p1

    invoke-static/range {v0 .. v7}, La/a/a/r;->a(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "B"

    goto :goto_1

    :cond_2
    const-string v1, "Q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown transfer encoding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Lcom/a/a/a/a;Ljava/util/Hashtable;)V
    .locals 3

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/a/a;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " \t"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_2
    return-void
.end method

.method private static a(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V
    .locals 8

    move-object v7, p7

    move v6, p6

    move v5, p5

    move-object v4, p4

    move v3, p3

    move-object v2, p2

    move v1, p1

    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz v1, :cond_0

    array-length p2, p1

    add-int/lit8 p2, p2, 0x2

    div-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x4

    :goto_1
    if-le p2, v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_1

    const/4 p1, 0x0

    div-int/lit8 p3, p2, 0x2

    invoke-virtual {p0, p1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v0 .. v7}, La/a/a/r;->a(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V

    div-int/lit8 p1, p2, 0x2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    move v5, p1

    goto :goto_0

    :cond_0
    invoke-static {p1, v6}, Lcom/a/a/a/f;->a([BZ)I

    move-result p2

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz v1, :cond_3

    new-instance p2, Lcom/a/a/a/i;

    invoke-direct {p2, p0}, Lcom/a/a/a/i;-><init>(Ljava/io/OutputStream;)V

    :goto_2
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    if-nez v5, :cond_2

    sget-boolean p1, La/a/a/r;->c:Z

    if-eqz p1, :cond_4

    const-string p1, "\r\n "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_3
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    :goto_4
    array-length p2, p0

    if-lt p1, p2, :cond_5

    const-string p0, "?="

    invoke-virtual {v7, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_3
    new-instance p2, Lcom/a/a/a/f;

    invoke-direct {p2, p0, v6}, Lcom/a/a/a/f;-><init>(Ljava/io/OutputStream;Z)V

    goto :goto_2

    :cond_4
    const-string p1, " "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    aget-byte p2, p0, p1

    int-to-char p2, p2

    invoke-virtual {v7, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_4
.end method

.method static final a(I)Z
    .locals 1

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_1

    const/16 v0, 0x20

    if-ge p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    sget-object v0, La/a/a/r;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "mail.mime.charset"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, La/a/a/r;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/a/r;->e:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "file.encoding"

    const-string v1, "8859_1"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/a/r;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_2
    sget-object v0, La/a/a/r;->e:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, La/a/a/p;

    invoke-direct {v1}, La/a/a/p;-><init>()V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/a/r;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "8859_1"

    sput-object v0, La/a/a/r;->e:Ljava/lang/String;

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, La/a/a/r;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, " \t\n\r"

    const-string v1, "=?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0, v0, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v3, v7

    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_2

    const/16 v6, 0x9

    if-eq v5, v6, :cond_2

    const/16 v6, 0xd

    if-eq v5, v6, :cond_2

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-static {v4}, La/a/a/r;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch La/a/a/d; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move-object v3, v5

    move v4, v8

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    move v3, v4

    goto :goto_1

    :catch_0
    move-exception v5

    sget-boolean v5, La/a/a/r;->a:Z

    if-nez v5, :cond_9

    invoke-static {v4}, La/a/a/r;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eq v5, v4, :cond_7

    if-eqz v3, :cond_5

    const-string v3, "=?"

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_6
    const-string v3, "?="

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    move v4, v3

    move-object v3, v5

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_8
    move-object v3, v4

    move v4, v7

    goto :goto_2

    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_a
    move-object v3, v4

    move v4, v7

    goto :goto_2
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, La/a/a/r;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, La/a/a/r;->g:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-object v0, La/a/a/r;->g:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, p0

    goto :goto_0
.end method

.method static f(Ljava/lang/String;)I
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v2, v1

    move v3, v1

    :goto_0
    if-lt v1, v0, :cond_0

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, La/a/a/r;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    if-le v3, v2, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    goto :goto_1
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v2, 0x3f

    const/4 v1, 0x2

    const/4 v4, -0x1

    const-string v0, "=?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, La/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encoded word does not start with \"=?\": "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v4, :cond_1

    new-instance v0, La/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encoded word does not include charset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/a/a/r;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ne v2, v4, :cond_2

    new-instance v0, La/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encoded word does not include encoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    const-string v3, "?="

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_3

    new-instance v0, La/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encoded word does not end with \"?=\": "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-static {v2}, Lcom/a/a/a/g;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, "B"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v0, Lcom/a/a/a/b;

    invoke-direct {v0, v4}, Lcom/a/a/a/b;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    new-array v4, v2, [B

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_8

    const-string v0, ""

    :goto_1
    add-int/lit8 v2, v3, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_5

    add-int/lit8 v2, v3, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, La/a/a/r;->a:Z

    if-nez v3, :cond_4

    invoke-static {v2}, La/a/a/r;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    return-object v0

    :cond_6
    const-string v2, "Q"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Lcom/a/a/a/j;

    invoke-direct {v0, v4}, Lcom/a/a/a/j;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_7
    :try_start_1
    new-instance v2, Ljava/io/UnsupportedEncodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown encoding: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_1
    move-exception v0

    new-instance v1, La/a/a/d;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, La/a/a/d;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :try_start_2
    new-instance v2, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5, v0, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v0, v2

    goto :goto_1

    :cond_9
    const-string v0, ""
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x3f

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    const-string v2, "=?"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    move-object v0, p0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_0

    const-string v4, "?="

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_0

    add-int/lit8 v0, v3, 0x2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, La/a/a/r;->g(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch La/a/a/d; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v3, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2
.end method
