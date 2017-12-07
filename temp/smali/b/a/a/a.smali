.class public final Lb/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static a:Lb/a/a/a;

.field private static b:Lb/a/a/a;

.field private static c:Lb/a/a/a;

.field private static final d:[Ljava/lang/String;

.field private static e:Lb/a/a/a;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Class;

.field private h:Lb/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lb/a/a/a;

    const-string v1, "text/plain; charset=unicode; class=java.io.InputStream"

    const-string v2, "Plain Text"

    invoke-direct {v0, v1, v2}, Lb/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lb/a/a/a;->a:Lb/a/a/a;

    new-instance v0, Lb/a/a/a;

    const-string v1, "application/x-java-serialized-object; class=java.lang.String"

    const-string v2, "Unicode String"

    invoke-direct {v0, v1, v2}, Lb/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lb/a/a/a;->b:Lb/a/a/a;

    new-instance v0, Lb/a/a/a;

    const-string v1, "application/x-java-file-list; class=java.util.List"

    const-string v2, "application/x-java-file-list"

    invoke-direct {v0, v1, v2}, Lb/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lb/a/a/a;->c:Lb/a/a/a;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "text/sgml"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "text/xml"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "text/html"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "text/rtf"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "text/enriched"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "text/richtext"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "text/uri-list"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "text/tab-separated-values"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "text/t140"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "text/rfc822-headers"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "text/parityfec"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "text/directory"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "text/css"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "text/calendar"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "application/x-java-serialized-object"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "text/plain"

    aput-object v2, v0, v1

    sput-object v0, Lb/a/a/a;->d:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lb/a/a/a;->e:Lb/a/a/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/a/a/a;->h:Lb/a/a/d;

    iput-object v0, p0, Lb/a/a/a;->f:Ljava/lang/String;

    iput-object v0, p0, Lb/a/a/a;->g:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Lb/a/a/b;->a(Ljava/lang/String;)Lb/a/a/d;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a;->h:Lb/a/a/d;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_1

    :try_start_1
    iput-object p2, p0, Lb/a/a/a;->f:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lb/a/a/a;->h:Lb/a/a/d;

    const-string v1, "class"

    invoke-virtual {v0, v1}, Lb/a/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "java.io.InputStream"

    iget-object v1, p0, Lb/a/a/a;->h:Lb/a/a/d;

    const-string v2, "class"

    invoke-virtual {v1, v2, v0}, Lb/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a;->g:Ljava/lang/Class;

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "awt.16D"

    invoke-static {v1, p1}, Lc/a/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "awt.16C"

    iget-object v3, p0, Lb/a/a/a;->h:Lb/a/a/d;

    const-string v4, "class"

    invoke-virtual {v3, v4}, Lb/a/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc/a/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a/a;->h:Lb/a/a/d;

    invoke-virtual {v1}, Lb/a/a/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/a;->h:Lb/a/a/d;

    invoke-virtual {v1}, Lb/a/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a;->f:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private a()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lb/a/a/a;->h:Lb/a/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a;->h:Lb/a/a/d;

    invoke-virtual {v0}, Lb/a/a/d;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/rtf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "text/tab-separated-values"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "text/t140"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "text/rfc822-headers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "text/parityfec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    :goto_0
    if-eqz v0, :cond_3

    :cond_0
    const-string v0, ""

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lb/a/a/a;->h:Lb/a/a/d;

    const-string v1, "charset"

    invoke-virtual {v0, v1}, Lb/a/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/a;->h:Lb/a/a/d;

    invoke-virtual {v1}, Lb/a/a/d;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/sgml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "text/xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "text/html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "text/enriched"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "text/richtext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "text/uri-list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "text/directory"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "text/css"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "text/calendar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "application/x-java-serialized-object"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v3

    :goto_2
    if-eqz v1, :cond_6

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    :cond_4
    invoke-static {}, Lc/a/a/a/b/c;->a()Lc/a/a/a/b/c;

    const-string v0, "unicode"

    goto :goto_1

    :cond_5
    move v1, v4

    goto :goto_2

    :cond_6
    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lb/a/a/a;->h:Lb/a/a/d;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lb/a/a/a;->h:Lb/a/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lb/a/a/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lb/a/a/d;->a(Lb/a/a/d;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v1}, Lb/a/a/d;->a(Lb/a/a/d;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "; "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c()Z
    .locals 2

    iget-object v0, p0, Lb/a/a/a;->g:Ljava/lang/Class;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/a/a;->g:Ljava/lang/Class;

    const-class v1, Ljava/io/Reader;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a/a/a;->g:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a/a/a;->g:Ljava/lang/Class;

    const-class v1, Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a/a/a;->g:Ljava/lang/Class;

    const-class v1, [C

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lb/a/a/a;

    invoke-direct {v0}, Lb/a/a/a;-><init>()V

    iget-object v1, p0, Lb/a/a/a;->f:Ljava/lang/String;

    iput-object v1, v0, Lb/a/a/a;->f:Ljava/lang/String;

    iget-object v1, p0, Lb/a/a/a;->g:Ljava/lang/Class;

    iput-object v1, v0, Lb/a/a/a;->g:Ljava/lang/Class;

    iget-object v1, p0, Lb/a/a/a;->h:Lb/a/a/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/a/a/a;->h:Lb/a/a/d;

    invoke-virtual {v1}, Lb/a/a/d;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/a/a/d;

    move-object v1, p0

    :goto_0
    iput-object v1, v0, Lb/a/a/a;->h:Lb/a/a/d;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lb/a/a/a;

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    check-cast p1, Lb/a/a/a;

    if-ne p1, p0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lb/a/a/a;->h:Lb/a/a/d;

    if-nez v0, :cond_5

    iget-object v0, p1, Lb/a/a/a;->h:Lb/a/a/d;

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lb/a/a/a;->h:Lb/a/a/d;

    iget-object v1, p1, Lb/a/a/a;->h:Lb/a/a/d;

    if-nez v1, :cond_7

    move v0, v2

    :goto_1
    if-eqz v0, :cond_6

    iget-object v0, p0, Lb/a/a/a;->g:Ljava/lang/Class;

    iget-object v1, p1, Lb/a/a/a;->g:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lb/a/a/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lb/a/a/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lb/a/a/a;->h:Lb/a/a/d;

    invoke-virtual {v0}, Lb/a/a/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lb/a/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    move v0, v3

    goto :goto_0

    :cond_a
    invoke-direct {p0}, Lb/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1}, Lb/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lb/a/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v1}, Lb/a/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_c
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a/a;->h:Lb/a/a/d;

    invoke-virtual {v1}, Lb/a/a/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/a;->g:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/a;->h:Lb/a/a/d;

    invoke-virtual {v1}, Lb/a/a/d;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lb/a/a/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ";charset="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lb/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final declared-synchronized readExternal(Ljava/io/ObjectInput;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lb/a/a/a;->f:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/d;

    iput-object v0, p0, Lb/a/a/a;->h:Lb/a/a/d;

    iget-object v0, p0, Lb/a/a/a;->h:Lb/a/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a;->h:Lb/a/a/d;

    const-string v1, "class"

    invoke-virtual {v0, v1}, Lb/a/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lb/a/a/a;->g:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "[MimeType=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lb/a/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");humanPresentableName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a;->f:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lb/a/a/a;->h:Lb/a/a/d;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
