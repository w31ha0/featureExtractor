.class public final La/a/a/y;
.super Ljava/lang/Object;


# static fields
.field private static e:Z

.field private static f:Z

.field private static g:Z

.field private static h:Z

.field private static final i:[C


# instance fields
.field private a:Ljava/util/Map;

.field private b:Ljava/util/Set;

.field private c:Ljava/util/Map;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput-boolean v2, La/a/a/y;->e:Z

    sput-boolean v2, La/a/a/y;->f:Z

    sput-boolean v2, La/a/a/y;->g:Z

    sput-boolean v2, La/a/a/y;->h:Z

    :try_start_0
    const-string v0, "mail.mime.encodeparameters"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    sput-boolean v0, La/a/a/y;->e:Z

    const-string v0, "mail.mime.decodeparameters"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    sput-boolean v0, La/a/a/y;->f:Z

    const-string v0, "mail.mime.decodeparameters.strict"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    :goto_2
    sput-boolean v0, La/a/a/y;->g:Z

    const-string v0, "mail.mime.applefilenames"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    :goto_3
    sput-boolean v0, La/a/a/y;->h:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, La/a/a/y;->i:[C

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

    :cond_3
    move v0, v2

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, La/a/a/y;->a:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/y;->d:Ljava/lang/String;

    sget-boolean v0, La/a/a/y;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, La/a/a/y;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/a/a/y;->c:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const/4 v6, -0x4

    const/4 v5, -0x1

    invoke-direct {p0}, La/a/a/y;-><init>()V

    new-instance v1, La/a/a/aa;

    const-string v0, "()<>@,;:\\\"\t []/?="

    invoke-direct {v1, p1, v0}, La/a/a/aa;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, La/a/a/aa;->a()La/a/a/w;

    move-result-object v2

    invoke-virtual {v2}, La/a/a/w;->a()I

    move-result v0

    if-eq v0, v6, :cond_7

    int-to-char v3, v0

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_4

    invoke-virtual {v1}, La/a/a/aa;->a()La/a/a/w;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/w;->a()I

    move-result v2

    if-eq v2, v6, :cond_7

    invoke-virtual {v0}, La/a/a/w;->a()I

    move-result v2

    if-eq v2, v5, :cond_0

    new-instance v1, La/a/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected parameter name, got \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, La/a/a/w;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, La/a/a/d;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v0}, La/a/a/w;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, La/a/a/aa;->a()La/a/a/w;

    move-result-object v2

    invoke-virtual {v2}, La/a/a/w;->a()I

    move-result v3

    int-to-char v3, v3

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_1

    new-instance v0, La/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Expected \'=\', got \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, La/a/a/w;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v1}, La/a/a/aa;->a()La/a/a/w;

    move-result-object v2

    invoke-virtual {v2}, La/a/a/w;->a()I

    move-result v3

    if-eq v3, v5, :cond_2

    const/4 v4, -0x2

    if-eq v3, v4, :cond_2

    new-instance v0, La/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Expected parameter value, got \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, La/a/a/w;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v2}, La/a/a/w;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v0, p0, La/a/a/y;->d:Ljava/lang/String;

    sget-boolean v3, La/a/a/y;->f:Z

    if-eqz v3, :cond_3

    invoke-direct {p0, v0, v2}, La/a/a/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, La/a/a/y;->a:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    sget-boolean v3, La/a/a/y;->h:Z

    if-eqz v3, :cond_6

    if-ne v0, v5, :cond_6

    iget-object v0, p0, La/a/a/y;->d:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, La/a/a/y;->d:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, La/a/a/y;->d:Ljava/lang/String;

    const-string v3, "filename"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, La/a/a/y;->a:Ljava/util/Map;

    iget-object v3, p0, La/a/a/y;->d:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, La/a/a/w;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, La/a/a/y;->a:Ljava/util/Map;

    iget-object v3, p0, La/a/a/y;->d:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    new-instance v0, La/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Expected \';\', got \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, La/a/a/w;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    sget-boolean v0, La/a/a/y;->f:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/a/a/y;->a(Z)V

    :cond_8
    return-void
.end method

.method private a(Z)V
    .locals 14

    const/4 v12, 0x0

    const/4 v11, 0x0

    :try_start_0
    iget-object v0, p0, La/a/a/y;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, La/a/a/y;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, La/a/a/y;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, La/a/a/y;->a:Ljava/util/Map;

    iget-object v1, p0, La/a/a/y;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    iget-object v0, p0, La/a/a/y;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, La/a/a/y;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void

    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, La/a/a/z;

    invoke-direct {v4}, La/a/a/z;-><init>()V

    move v5, v11

    move-object v6, v12

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "*"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, La/a/a/y;->c:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v4, v1}, La/a/a/z;->add(Ljava/lang/Object;)Z

    instance-of v8, v1, La/a/a/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_a

    :try_start_2
    check-cast v1, La/a/a/f;

    iget-object v8, v1, La/a/a/f;->c:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_3

    :try_start_3
    invoke-static {v8}, La/a/a/y;->c(Ljava/lang/String;)La/a/a/f;

    move-result-object v9

    iget-object v10, v9, La/a/a/f;->b:Ljava/lang/String;

    iput-object v10, v1, La/a/a/f;->b:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v6, v9, La/a/a/f;->a:Ljava/lang/String;

    iput-object v6, v1, La/a/a/f;->a:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v6

    move-object v6, v10

    :goto_3
    :try_start_5
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, La/a/a/y;->c:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    :cond_3
    if-nez v6, :cond_9

    :try_start_6
    iget-object v1, p0, La/a/a/y;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_4
    if-nez v5, :cond_b

    :try_start_7
    iget-object v1, p0, La/a/a/y;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-nez p1, :cond_5

    if-eqz v11, :cond_8

    :cond_5
    iget-object v0, p0, La/a/a/y;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, La/a/a/y;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, La/a/a/y;->a:Ljava/util/Map;

    iget-object v2, p0, La/a/a/y;->c:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_7
    iget-object v0, p0, La/a/a/y;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, La/a/a/y;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_8
    throw v1

    :cond_9
    :try_start_8
    invoke-static {v8, v6}, La/a/a/y;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, La/a/a/f;->a:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v1, v9

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v6, v8

    move-object v8, v10

    :goto_5
    :try_start_9
    sget-boolean v9, La/a/a/y;->g:Z

    if-eqz v9, :cond_e

    new-instance v0, La/a/a/d;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v1

    move-object v6, v8

    move-object v8, v10

    :goto_6
    sget-boolean v9, La/a/a/y;->g:Z

    if-eqz v9, :cond_e

    new-instance v0, La/a/a/d;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v1

    move-object v6, v8

    move-object v8, v10

    :goto_7
    sget-boolean v9, La/a/a/y;->g:Z

    if-eqz v9, :cond_e

    new-instance v0, La/a/a/d;

    invoke-virtual {v1}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    check-cast v1, Ljava/lang/String;

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, La/a/a/z;->a:Ljava/lang/String;

    iget-object v1, p0, La/a/a/y;->a:Ljava/util/Map;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, La/a/a/f;

    if-eqz v3, :cond_6

    check-cast v0, La/a/a/f;

    iget-object v3, v0, La/a/a/f;->c:Ljava/lang/String;

    invoke-static {v3}, La/a/a/y;->c(Ljava/lang/String;)La/a/a/f;

    move-result-object v3

    iget-object v4, v3, La/a/a/f;->b:Ljava/lang/String;

    iput-object v4, v0, La/a/a/f;->b:Ljava/lang/String;

    iget-object v3, v3, La/a/a/f;->a:Ljava/lang/String;

    iput-object v3, v0, La/a/a/f;->a:Ljava/lang/String;

    goto :goto_4

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, La/a/a/f;

    if-eqz v2, :cond_0

    check-cast v0, La/a/a/f;

    iget-object v2, v0, La/a/a/f;->c:Ljava/lang/String;

    invoke-static {v2}, La/a/a/y;->c(Ljava/lang/String;)La/a/a/f;

    move-result-object v2

    iget-object v3, v2, La/a/a/f;->b:Ljava/lang/String;

    iput-object v3, v0, La/a/a/f;->b:Ljava/lang/String;

    iget-object v2, v2, La/a/a/f;->a:Ljava/lang/String;

    iput-object v2, v0, La/a/a/f;->a:Ljava/lang/String;

    goto/16 :goto_1

    :catch_3
    move-exception v1

    move-object v8, v6

    move-object v6, v12

    goto :goto_7

    :catch_4
    move-exception v1

    move-object v13, v8

    move-object v8, v6

    move-object v6, v13

    goto :goto_7

    :catch_5
    move-exception v1

    move-object v8, v6

    move-object v6, v12

    goto :goto_6

    :catch_6
    move-exception v1

    move-object v13, v8

    move-object v8, v6

    move-object v6, v13

    goto :goto_6

    :catch_7
    move-exception v1

    move-object v8, v6

    move-object v6, v12

    goto/16 :goto_5

    :catch_8
    move-exception v1

    move-object v13, v8

    move-object v8, v6

    move-object v6, v13

    goto/16 :goto_5

    :cond_e
    move-object v1, v6

    move-object v6, v8

    goto/16 :goto_3
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "()<>@,;:\\\"\t []/?="

    invoke-static {p0, v0}, La/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v1, 0x2a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v1, p0, La/a/a/y;->a:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, La/a/a/y;->a:Ljava/util/Map;

    invoke-static {p2}, La/a/a/y;->c(Ljava/lang/String;)La/a/a/f;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, La/a/a/y;->b:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, La/a/a/y;->a:Ljava/util/Map;

    const-string v3, ""

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v2, La/a/a/f;

    invoke-direct {v2}, La/a/a/f;-><init>()V

    move-object v0, v2

    check-cast v0, La/a/a/f;

    move-object v1, v0

    iput-object p2, v1, La/a/a/f;->c:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, La/a/a/f;

    move-object v3, v0

    iput-object p2, v3, La/a/a/f;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_1
    iget-object v3, p0, La/a/a/y;->c:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object v1, p2

    move-object v2, p1

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;)La/a/a/f;
    .locals 5

    new-instance v0, La/a/a/f;

    invoke-direct {v0}, La/a/a/f;-><init>()V

    iput-object p0, v0, La/a/a/f;->c:Ljava/lang/String;

    iput-object p0, v0, La/a/a/f;->a:Ljava/lang/String;

    const/16 v1, 0x27

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gtz v1, :cond_0

    sget-boolean v1, La/a/a/y;->g:Z

    if-eqz v1, :cond_2

    new-instance v1, La/a/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing charset in encoded value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, La/a/a/d;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v1

    sget-boolean v2, La/a/a/y;->g:Z

    if-eqz v2, :cond_2

    new-instance v0, La/a/a/d;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x27

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-gez v3, :cond_1

    sget-boolean v1, La/a/a/y;->g:Z

    if-eqz v1, :cond_2

    new-instance v1, La/a/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing language in encoded value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, La/a/a/d;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_1
    move-exception v1

    sget-boolean v2, La/a/a/y;->g:Z

    if-eqz v2, :cond_2

    new-instance v0, La/a/a/d;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :try_start_2
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v2, v0, La/a/a/f;->b:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/y;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, La/a/a/f;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    return-object v0

    :catch_2
    move-exception v1

    sget-boolean v2, La/a/a/y;->g:Z

    if-eqz v2, :cond_2

    new-instance v0, La/a/a/d;

    invoke-virtual {v1}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    move v1, v5

    move v2, v5

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-static {p1}, La/a/a/r;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v5, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v2, 0x3

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-char v3, v3

    add-int/lit8 v2, v2, 0x2

    move v6, v3

    move v3, v2

    move v2, v6

    :goto_1
    add-int/lit8 v4, v1, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v3, 0x1

    move v2, v1

    move v1, v4

    goto :goto_0

    :cond_1
    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_1
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 8

    new-instance v2, La/a/a/i;

    invoke-direct {v2, p1}, La/a/a/i;-><init>(I)V

    iget-object v0, p0, La/a/a/y;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, La/a/a/i;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, La/a/a/y;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, La/a/a/z;

    if-eqz v4, :cond_3

    check-cast v1, La/a/a/z;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "*"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    move v5, v0

    :goto_1
    invoke-virtual {v1}, La/a/a/z;->size()I

    move-result v0

    if-ge v5, v0, :cond_0

    invoke-virtual {v1, v5}, La/a/a/z;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v6, v0, La/a/a/f;

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v0, La/a/a/f;

    iget-object v0, v0, La/a/a/f;->c:Ljava/lang/String;

    invoke-virtual {v2, v6, v0}, La/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v6, v0}, La/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    instance-of v4, v1, La/a/a/f;

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "*"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v1, La/a/a/f;

    iget-object v1, v1, La/a/a/f;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, La/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, La/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, La/a/a/y;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, La/a/a/z;

    if-eqz v0, :cond_0

    check-cast p0, La/a/a/z;

    iget-object v0, p0, La/a/a/z;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, La/a/a/f;

    if-eqz v0, :cond_1

    check-cast p0, La/a/a/f;

    iget-object v0, p0, La/a/a/f;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    const-string v0, "DONE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, La/a/a/y;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/y;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, La/a/a/y;->a(Z)V
    :try_end_0
    .catch La/a/a/d; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, La/a/a/y;->f:Z

    if-eqz v1, :cond_2

    :try_start_1
    invoke-direct {p0, v0, p2}, La/a/a/y;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch La/a/a/d; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, La/a/a/y;->a:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v1, p0, La/a/a/y;->a:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/a/a/y;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
