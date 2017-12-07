.class public final La/a/ae;
.super Ljava/lang/Object;


# static fields
.field private static j:La/a/ae;


# instance fields
.field private final a:Ljava/util/Properties;

.field private final b:La/a/y;

.field private final c:Ljava/util/Hashtable;

.field private d:Z

.field private e:Ljava/io/PrintStream;

.field private final f:Ljava/util/Vector;

.field private final g:Ljava/util/Hashtable;

.field private final h:Ljava/util/Hashtable;

.field private final i:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, La/a/ae;->j:La/a/ae;

    return-void
.end method

.method private constructor <init>(Ljava/util/Properties;La/a/y;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, La/a/ae;->c:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/ae;->d:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, La/a/ae;->f:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, La/a/ae;->g:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, La/a/ae;->h:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, La/a/ae;->i:Ljava/util/Properties;

    iput-object p1, p0, La/a/ae;->a:Ljava/util/Properties;

    iput-object p2, p0, La/a/ae;->b:La/a/y;

    const-string v0, "mail.debug"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/ae;->d:Z

    :cond_0
    iget-boolean v0, p0, La/a/ae;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "DEBUG: JavaMail version 1.4.1"

    invoke-direct {p0, v0}, La/a/ae;->c(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v6, v0

    :goto_0
    new-instance v0, La/a/h;

    invoke-direct {v0, p0}, La/a/h;-><init>(La/a/ae;)V

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "java.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "javamail.providers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, La/a/ae;->a(Ljava/lang/String;La/a/u;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const-string v1, "META-INF/javamail.providers"

    invoke-direct {p0, v1, v6, v0}, La/a/ae;->b(Ljava/lang/String;Ljava/lang/Class;La/a/u;)V

    const-string v1, "/META-INF/javamail.default.providers"

    invoke-direct {p0, v1, v6, v0}, La/a/ae;->a(Ljava/lang/String;Ljava/lang/Class;La/a/u;)V

    iget-object v0, p0, La/a/ae;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, La/a/ae;->d:Z

    if-eqz v0, :cond_3

    const-string v0, "DEBUG: failed to load any providers, using defaults"

    invoke-direct {p0, v0}, La/a/ae;->c(Ljava/lang/String;)V

    :cond_3
    new-instance v0, La/a/t;

    sget-object v1, La/a/ah;->a:La/a/ah;

    const-string v2, "imap"

    const-string v3, "com.sun.mail.imap.IMAPStore"

    const-string v4, "Sun Microsystems, Inc."

    const-string v5, "1.4.1"

    invoke-direct/range {v0 .. v5}, La/a/t;-><init>(La/a/ah;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, La/a/ae;->a(La/a/t;)V

    new-instance v0, La/a/t;

    sget-object v1, La/a/ah;->a:La/a/ah;

    const-string v2, "imaps"

    const-string v3, "com.sun.mail.imap.IMAPSSLStore"

    const-string v4, "Sun Microsystems, Inc."

    const-string v5, "1.4.1"

    invoke-direct/range {v0 .. v5}, La/a/t;-><init>(La/a/ah;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, La/a/ae;->a(La/a/t;)V

    new-instance v0, La/a/t;

    sget-object v1, La/a/ah;->a:La/a/ah;

    const-string v2, "pop3"

    const-string v3, "com.sun.mail.pop3.POP3Store"

    const-string v4, "Sun Microsystems, Inc."

    const-string v5, "1.4.1"

    invoke-direct/range {v0 .. v5}, La/a/t;-><init>(La/a/ah;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, La/a/ae;->a(La/a/t;)V

    new-instance v0, La/a/t;

    sget-object v1, La/a/ah;->a:La/a/ah;

    const-string v2, "pop3s"

    const-string v3, "com.sun.mail.pop3.POP3SSLStore"

    const-string v4, "Sun Microsystems, Inc."

    const-string v5, "1.4.1"

    invoke-direct/range {v0 .. v5}, La/a/t;-><init>(La/a/ah;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, La/a/ae;->a(La/a/t;)V

    new-instance v0, La/a/t;

    sget-object v1, La/a/ah;->b:La/a/ah;

    const-string v2, "smtp"

    const-string v3, "com.sun.mail.smtp.SMTPTransport"

    const-string v4, "Sun Microsystems, Inc."

    const-string v5, "1.4.1"

    invoke-direct/range {v0 .. v5}, La/a/t;-><init>(La/a/ah;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, La/a/ae;->a(La/a/t;)V

    new-instance v0, La/a/t;

    sget-object v1, La/a/ah;->b:La/a/ah;

    const-string v2, "smtps"

    const-string v3, "com.sun.mail.smtp.SMTPSSLTransport"

    const-string v4, "Sun Microsystems, Inc."

    const-string v5, "1.4.1"

    invoke-direct/range {v0 .. v5}, La/a/t;-><init>(La/a/ah;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, La/a/ae;->a(La/a/t;)V

    :cond_4
    iget-boolean v0, p0, La/a/ae;->d:Z

    if-eqz v0, :cond_5

    const-string v0, "DEBUG: Tables of loaded providers"

    invoke-direct {p0, v0}, La/a/ae;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DEBUG: Providers Listed By Class Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La/a/ae;->h:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/a/ae;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DEBUG: Providers Listed By Protocol: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La/a/ae;->g:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/a/ae;->c(Ljava/lang/String;)V

    :cond_5
    new-instance v0, La/a/g;

    invoke-direct {v0, p0}, La/a/g;-><init>(La/a/ae;)V

    const-string v1, "/META-INF/javamail.default.address.map"

    invoke-direct {p0, v1, v6, v0}, La/a/ae;->a(Ljava/lang/String;Ljava/lang/Class;La/a/u;)V

    const-string v1, "META-INF/javamail.address.map"

    invoke-direct {p0, v1, v6, v0}, La/a/ae;->b(Ljava/lang/String;Ljava/lang/Class;La/a/u;)V

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "java.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "javamail.address.map"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, La/a/ae;->a(Ljava/lang/String;La/a/u;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_2
    iget-object v0, p0, La/a/ae;->i:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, La/a/ae;->d:Z

    if-eqz v0, :cond_7

    const-string v0, "DEBUG: failed to load address map, using defaults"

    invoke-direct {p0, v0}, La/a/ae;->c(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, La/a/ae;->i:Ljava/util/Properties;

    const-string v1, "rfc822"

    const-string v2, "smtp"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    iget-boolean v2, p0, La/a/ae;->d:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: can\'t get java.home: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, La/a/ae;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    iget-boolean v1, p0, La/a/ae;->d:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: can\'t get java.home: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/a/ae;->c(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static declared-synchronized a(Ljava/util/Properties;La/a/y;)La/a/ae;
    .locals 3

    const-class v0, La/a/ae;

    monitor-enter v0

    :try_start_0
    sget-object v1, La/a/ae;->j:La/a/ae;

    if-nez v1, :cond_1

    new-instance v1, La/a/ae;

    invoke-direct {v1, p0, p1}, La/a/ae;-><init>(Ljava/util/Properties;La/a/y;)V

    sput-object v1, La/a/ae;->j:La/a/ae;

    :cond_0
    sget-object v1, La/a/ae;->j:La/a/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_1
    sget-object v1, La/a/ae;->j:La/a/ae;

    iget-object v1, v1, La/a/ae;->b:La/a/y;

    if-eq v1, p1, :cond_0

    sget-object v1, La/a/ae;->j:La/a/ae;

    iget-object v1, v1, La/a/ae;->b:La/a/y;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    sget-object v1, La/a/ae;->j:La/a/ae;

    iget-object v1, v1, La/a/ae;->b:La/a/y;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eq v1, v2, :cond_0

    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Access to default session denied"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(La/a/t;La/a/p;)La/a/ag;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, La/a/t;->a()La/a/ah;

    move-result-object v0

    sget-object v1, La/a/ah;->b:La/a/ah;

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, La/a/ad;

    const-string v1, "invalid provider"

    invoke-direct {v0, v1}, La/a/ad;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2}, La/a/ae;->b(La/a/t;La/a/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/a/ag;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v0, La/a/ad;

    const-string v1, "incorrect class"

    invoke-direct {v0, v1}, La/a/ad;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    :try_start_0
    new-instance v0, La/a/e;

    invoke-direct {v0, p0, p1}, La/a/e;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0
.end method

.method private static a(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 1

    :try_start_0
    new-instance v0, La/a/a;

    invoke-direct {v0, p0}, La/a/a;-><init>(Ljava/net/URL;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0
.end method

.method static synthetic a(La/a/ae;)Ljava/util/Properties;
    .locals 1

    iget-object v0, p0, La/a/ae;->i:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic a(La/a/ae;Ljava/io/InputStream;)V
    .locals 12

    const/4 v11, 0x0

    if-eqz p1, :cond_1

    new-instance v6, Lcom/a/a/a/a;

    invoke-direct {v6, p1}, Lcom/a/a/a/a;-><init>(Ljava/io/InputStream;)V

    :cond_0
    :goto_0
    invoke-virtual {v6}, Lcom/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v7, Ljava/util/StringTokenizer;

    const-string v1, ";"

    invoke-direct {v7, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v11

    move-object v4, v11

    move-object v3, v11

    move-object v2, v11

    move-object v1, v11

    :cond_3
    :goto_1
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-nez v8, :cond_5

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_b

    :cond_4
    iget-boolean v1, p0, La/a/ae;->d:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: Bad provider entry: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/a/ae;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const-string v10, "protocol="

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_6
    const-string v10, "type="

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "store"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    sget-object v1, La/a/ah;->a:La/a/ah;

    goto :goto_1

    :cond_7
    const-string v9, "transport"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v1, La/a/ah;->b:La/a/ah;

    goto :goto_1

    :cond_8
    const-string v10, "class="

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v8, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_9
    const-string v10, "vendor="

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_a
    const-string v10, "version="

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v8, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_b
    new-instance v0, La/a/t;

    invoke-direct/range {v0 .. v5}, La/a/t;-><init>(La/a/ah;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, La/a/ae;->a(La/a/t;)V

    goto/16 :goto_0
.end method

.method private declared-synchronized a(La/a/t;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/ae;->f:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, La/a/ae;->h:Ljava/util/Hashtable;

    invoke-virtual {p1}, La/a/t;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La/a/ae;->g:Ljava/util/Hashtable;

    invoke-virtual {p1}, La/a/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/ae;->g:Ljava/util/Hashtable;

    invoke-virtual {p1}, La/a/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;La/a/u;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p2, v1}, La/a/u;->a(Ljava/io/InputStream;)V

    iget-boolean v0, p0, La/a/ae;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: successfully loaded file: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/a/ae;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    :try_start_3
    iget-boolean v2, p0, La/a/ae;->d:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: not loading file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, La/a/ae;->c(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/a/ae;->c(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    :try_start_5
    iget-boolean v2, p0, La/a/ae;->d:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: not loading file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, La/a/ae;->c(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/a/ae;->c(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_3
    if-eqz v1, :cond_1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_3
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_4
    :goto_4
    throw v0

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Class;La/a/u;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2, p1}, La/a/ae;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {p3, v0}, La/a/u;->a(Ljava/io/InputStream;)V

    iget-boolean v1, p0, La/a/ae;->d:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: successfully loaded resource: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, La/a/ae;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_3
    iget-boolean v1, p0, La/a/ae;->d:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: not loading resource: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, La/a/ae;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    :try_start_4
    iget-boolean v2, p0, La/a/ae;->d:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/a/ae;->c(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_3
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_3
    :try_start_6
    iget-boolean v2, p0, La/a/ae;->d:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/a/ae;->c(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_4
    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_4
    if-eqz v1, :cond_5

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_5
    :goto_5
    throw v0

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    :catch_7
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2
.end method

.method private declared-synchronized b(Ljava/lang/String;)La/a/t;
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, La/a/ad;

    const-string v1, "Invalid protocol: null"

    invoke-direct {v0, v1}, La/a/ad;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, La/a/ae;->a:Ljava/util/Properties;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-boolean v0, p0, La/a/ae;->d:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: mail."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".class property exists and points to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/a/ae;->c(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, La/a/ae;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz v0, :cond_5

    :cond_4
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_5
    :try_start_2
    iget-object v0, p0, La/a/ae;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/t;

    if-nez v0, :cond_6

    new-instance v0, La/a/ad;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No provider for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/ad;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-boolean v1, p0, La/a/ae;->d:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG: getProvider() returning "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, La/a/t;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, La/a/ae;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private b(La/a/t;La/a/p;)Ljava/lang/Object;
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, La/a/ad;

    const-string v1, "null"

    invoke-direct {v0, v1}, La/a/ad;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_6

    new-instance v0, La/a/p;

    invoke-virtual {p1}, La/a/t;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, La/a/p;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, La/a/ae;->b:La/a/y;

    if-eqz v1, :cond_2

    iget-object v1, p0, La/a/ae;->b:La/a/y;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :goto_1
    :try_start_0
    invoke-static {}, La/a/ae;->c()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {p1}, La/a/t;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    :cond_1
    :goto_2
    if-nez v2, :cond_5

    :try_start_2
    invoke-virtual {p1}, La/a/t;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    :goto_3
    const/4 v2, 0x2

    :try_start_3
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, La/a/ae;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, La/a/p;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {p1}, La/a/t;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    goto :goto_3

    :catch_1
    move-exception v0

    iget-boolean v1, p0, La/a/ae;->d:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, La/a/ae;->b()Ljava/io/PrintStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_3
    new-instance v0, La/a/ad;

    invoke-virtual {p1}, La/a/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/ad;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    iget-boolean v1, p0, La/a/ae;->d:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, La/a/ae;->b()Ljava/io/PrintStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_4
    new-instance v0, La/a/ad;

    invoke-virtual {p1}, La/a/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/ad;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v3

    goto :goto_2

    :cond_5
    move-object v1, v2

    goto :goto_3

    :cond_6
    move-object v0, p2

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/Class;La/a/u;)V
    .locals 8

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, La/a/ae;->c()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_3

    new-instance v1, La/a/d;

    invoke-direct {v1, v0, p1}, La/a/d;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/URL;

    :goto_0
    if-eqz v0, :cond_e

    move v1, v2

    :goto_1
    array-length v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-lt v1, v3, :cond_4

    move v0, v2

    :goto_2
    if-nez v0, :cond_2

    iget-boolean v0, p0, La/a/ae;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "DEBUG: !anyLoaded"

    invoke-direct {p0, v0}, La/a/ae;->c(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, La/a/ae;->a(Ljava/lang/String;Ljava/lang/Class;La/a/u;)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    new-instance v0, La/a/c;

    invoke-direct {v0, p1}, La/a/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/URL;

    goto :goto_0

    :cond_4
    aget-object v3, v0, v1

    const/4 v4, 0x0

    iget-boolean v5, p0, La/a/ae;->d:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG: URL "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, La/a/ae;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :cond_5
    :try_start_2
    invoke-static {v3}, La/a/ae;->a(Ljava/net/URL;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_8

    :try_start_3
    invoke-interface {p3, v4}, La/a/u;->a(Ljava/io/InputStream;)V

    const/4 v2, 0x1

    iget-boolean v5, p0, La/a/ae;->d:Z

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG: successfully loaded resource: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, La/a/ae;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_6
    :goto_3
    if-eqz v4, :cond_7

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    :try_start_5
    iget-boolean v5, p0, La/a/ae;->d:Z

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG: not loading resource: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, La/a/ae;->c(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v3

    move-object v7, v3

    move-object v3, v4

    move v4, v2

    move-object v2, v7

    :goto_5
    :try_start_6
    iget-boolean v5, p0, La/a/ae;->d:Z

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, La/a/ae;->c(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_9
    if-eqz v3, :cond_d

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move v2, v4

    goto :goto_4

    :catch_1
    move-exception v2

    move v2, v4

    goto :goto_4

    :catch_2
    move-exception v3

    move-object v7, v3

    move-object v3, v4

    move v4, v2

    move-object v2, v7

    :goto_6
    :try_start_8
    iget-boolean v5, p0, La/a/ae;->d:Z

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, La/a/ae;->c(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_a
    if-eqz v3, :cond_d

    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    move v2, v4

    goto :goto_4

    :catch_3
    move-exception v2

    move v2, v4

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v4

    :goto_7
    if-eqz v1, :cond_b

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :cond_b
    :goto_8
    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :catch_4
    move-exception v0

    move v1, v2

    :goto_9
    iget-boolean v2, p0, La/a/ae;->d:Z

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/a/ae;->c(Ljava/lang/String;)V

    :cond_c
    move v0, v1

    goto/16 :goto_2

    :catch_5
    move-exception v1

    goto :goto_8

    :catch_6
    move-exception v3

    goto/16 :goto_4

    :catch_7
    move-exception v0

    move v1, v4

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v1, v4

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v3

    move v2, v4

    goto :goto_7

    :catch_8
    move-exception v3

    move-object v7, v3

    move-object v3, v4

    move v4, v2

    move-object v2, v7

    goto :goto_6

    :catch_9
    move-exception v3

    move-object v7, v3

    move-object v3, v4

    move v4, v2

    move-object v2, v7

    goto/16 :goto_5

    :cond_d
    move v2, v4

    goto/16 :goto_4

    :cond_e
    move v0, v2

    goto/16 :goto_2
.end method

.method private static c()Ljava/lang/ClassLoader;
    .locals 1

    new-instance v0, La/a/f;

    invoke-direct {v0}, La/a/f;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, La/a/ae;->b()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(La/a/p;)La/a/ab;
    .locals 1

    iget-object v0, p0, La/a/ae;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/a/ab;

    return-object p0
.end method

.method public final a(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;)La/a/ab;
    .locals 1

    iget-object v0, p0, La/a/ae;->b:La/a/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/ae;->b:La/a/y;

    invoke-virtual {v0, p1, p2, p3, p4}, La/a/y;->a(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;)La/a/ab;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(La/a/ac;)La/a/ag;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, La/a/ae;->i:Ljava/util/Properties;

    invoke-virtual {p1}, La/a/ac;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v0, La/a/ad;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No provider for Address type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, La/a/ac;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/ad;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, La/a/p;

    const/4 v3, -0x1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, La/a/p;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, La/a/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, La/a/ae;->b(Ljava/lang/String;)La/a/t;

    move-result-object v1

    invoke-direct {p0, v1, v0}, La/a/ae;->a(La/a/t;La/a/p;)La/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/ae;->a:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, La/a/ae;->d:Z

    const-string v0, "DEBUG: setDebug: JavaMail version 1.4.1"

    invoke-direct {p0, v0}, La/a/ae;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Ljava/io/PrintStream;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/ae;->e:Ljava/io/PrintStream;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, La/a/ae;->e:Ljava/io/PrintStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
