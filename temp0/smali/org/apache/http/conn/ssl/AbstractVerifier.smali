.class public abstract Lorg/apache/http/conn/ssl/AbstractVerifier;
.super Ljava/lang/Object;
.source "AbstractVerifier.java"

# interfaces
.implements Lorg/apache/http/conn/ssl/X509HostnameVerifier;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final BAD_COUNTRY_2LDS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ac"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "co"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "edu"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "go"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gouv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "gov"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "info"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lg"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ne"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "net"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "or"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "org"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/http/conn/ssl/AbstractVerifier;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    .line 78
    sget-object v0, Lorg/apache/http/conn/ssl/AbstractVerifier;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public static acceptableCountryWildcard(Ljava/lang/String;)Z
    .locals 5
    .param p0, "cn"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 233
    const-string v2, "\\."

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "parts":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lorg/apache/http/conn/ssl/AbstractVerifier;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    aget-object v3, v0, v1

    invoke-static {v2, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static countDots(Ljava/lang/String;)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 353
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    .line 354
    add-int/lit8 v0, v0, 0x1

    .line 352
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    :cond_1
    return v0
.end method

.method public static getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;
    .locals 7
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 241
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 264
    .local v0, "cnList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, "subjectPrincipal":Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v2, v3, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .local v2, "st":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 267
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "tok":Ljava/lang/String;
    const-string v6, "CN="

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 269
    .local v5, "x":I
    if-ltz v5, :cond_0

    .line 270
    add-int/lit8 v6, v5, 0x3

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    .end local v4    # "tok":Ljava/lang/String;
    .end local v5    # "x":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 274
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v6

    new-array v1, v6, [Ljava/lang/String;

    .line 275
    .local v1, "cns":[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 278
    .end local v1    # "cns":[Ljava/lang/String;
    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;
    .locals 1
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/http/conn/ssl/AbstractVerifier;->getSubjectAlts(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSubjectAlts(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 293
    invoke-static {p1}, Lorg/apache/http/conn/ssl/AbstractVerifier;->isIPAddress(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 294
    const/4 v8, 0x7

    .line 299
    .local v8, "subjectType":I
    :goto_0
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 300
    .local v6, "subjectAltList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 302
    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 308
    :goto_1
    if-eqz v1, :cond_2

    .line 309
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 310
    .local v0, "aC":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v4, v0

    .line 311
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v10, 0x0

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 312
    .local v9, "type":I
    if-ne v9, v8, :cond_0

    .line 313
    const/4 v10, 0x1

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 314
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 296
    .end local v0    # "aC":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "subjectAltList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v8    # "subjectType":I
    .end local v9    # "type":I
    :cond_1
    const/4 v8, 0x2

    .restart local v8    # "subjectType":I
    goto :goto_0

    .line 304
    .restart local v1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    .restart local v6    # "subjectAltList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 305
    .local v2, "cpe":Ljava/security/cert/CertificateParsingException;
    const-class v10, Lorg/apache/http/conn/ssl/AbstractVerifier;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v10

    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v12, "Error parsing certificate."

    invoke-virtual {v10, v11, v12, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 318
    .end local v2    # "cpe":Ljava/security/cert/CertificateParsingException;
    :cond_2
    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 319
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v10

    new-array v7, v10, [Ljava/lang/String;

    .line 320
    .local v7, "subjectAlts":[Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 323
    .end local v7    # "subjectAlts":[Ljava/lang/String;
    :goto_3
    return-object v7

    :cond_3
    const/4 v7, 0x0

    goto :goto_3
.end method

.method private static isIPAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "hostname"    # Ljava/lang/String;

    .prologue
    .line 361
    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

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
.method public final verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {p2}, Lorg/apache/http/conn/ssl/AbstractVerifier;->getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "cns":[Ljava/lang/String;
    invoke-static {p2, p1}, Lorg/apache/http/conn/ssl/AbstractVerifier;->getSubjectAlts(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "subjectAlts":[Ljava/lang/String;
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/conn/ssl/AbstractVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ssl"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "host to verify is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 91
    :cond_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    .line 92
    .local v2, "session":Ljavax/net/ssl/SSLSession;
    if-nez v2, :cond_1

    .line 96
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 97
    .local v1, "in":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    .line 116
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    .line 117
    if-nez v2, :cond_1

    .line 120
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 124
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    .line 128
    .end local v1    # "in":Ljava/io/InputStream;
    :cond_1
    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 129
    .local v0, "certs":[Ljava/security/cert/Certificate;
    const/4 v4, 0x0

    aget-object v3, v0, v4

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 130
    .local v3, "x509":Ljava/security/cert/X509Certificate;
    invoke-virtual {p0, p1, v3}, Lorg/apache/http/conn/ssl/AbstractVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    .line 131
    return-void
.end method

.method public final verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 21
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "cns"    # [Ljava/lang/String;
    .param p3, "subjectAlts"    # [Ljava/lang/String;
    .param p4, "strictWithSubDomains"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 162
    .local v13, "names":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_0

    const/16 v18, 0x0

    aget-object v18, p2, v18

    if-eqz v18, :cond_0

    .line 163
    const/16 v18, 0x0

    aget-object v18, p2, v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_0
    if-eqz p3, :cond_2

    .line 166
    move-object/from16 v2, p3

    .local v2, "arr$":[Ljava/lang/String;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v10, :cond_2

    aget-object v16, v2, v8

    .line 167
    .local v16, "subjectAlt":Ljava/lang/String;
    if-eqz v16, :cond_1

    .line 168
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 173
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v10    # "len$":I
    .end local v16    # "subjectAlt":Ljava/lang/String;
    :cond_2
    invoke-virtual {v13}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 174
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Certificate for <"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "> doesn\'t contain CN or DNS subjectAlt"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 175
    .local v12, "msg":Ljava/lang/String;
    new-instance v18, Ljavax/net/ssl/SSLException;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 179
    .end local v12    # "msg":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v3, "buf":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    sget-object v19, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, "hostName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 185
    .local v11, "match":Z
    invoke-virtual {v13}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 187
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 188
    .local v4, "cn":Ljava/lang/String;
    sget-object v18, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 190
    const-string v18, " <"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const/16 v18, 0x3e

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 194
    const-string v18, " OR"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_5
    const-string v18, "\\."

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 201
    .local v14, "parts":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_8

    const/16 v18, 0x0

    aget-object v18, v14, v18

    const-string v19, "*"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-static {v4}, Lorg/apache/http/conn/ssl/AbstractVerifier;->acceptableCountryWildcard(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-static/range {p1 .. p1}, Lorg/apache/http/conn/ssl/AbstractVerifier;->isIPAddress(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_8

    const/4 v5, 0x1

    .line 206
    .local v5, "doWildcard":Z
    :goto_1
    if-eqz v5, :cond_c

    .line 207
    const/16 v18, 0x0

    aget-object v18, v14, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_a

    .line 208
    const/16 v18, 0x0

    aget-object v18, v14, v18

    const/16 v19, 0x0

    array-length v0, v14

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x2

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 209
    .local v15, "prefix":Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v14, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 210
    .local v17, "suffix":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 211
    .local v7, "hostSuffix":Ljava/lang/String;
    invoke-virtual {v6, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    const/4 v11, 0x1

    .line 215
    .end local v7    # "hostSuffix":Ljava/lang/String;
    .end local v15    # "prefix":Ljava/lang/String;
    .end local v17    # "suffix":Ljava/lang/String;
    :goto_2
    if-eqz v11, :cond_6

    if-eqz p4, :cond_6

    .line 218
    invoke-static {v6}, Lorg/apache/http/conn/ssl/AbstractVerifier;->countDots(Ljava/lang/String;)I

    move-result v18

    invoke-static {v4}, Lorg/apache/http/conn/ssl/AbstractVerifier;->countDots(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    const/4 v11, 0x1

    .line 223
    :cond_6
    :goto_3
    if-eqz v11, :cond_4

    .line 227
    .end local v4    # "cn":Ljava/lang/String;
    .end local v5    # "doWildcard":Z
    .end local v14    # "parts":[Ljava/lang/String;
    :cond_7
    if-nez v11, :cond_d

    .line 228
    new-instance v18, Ljavax/net/ssl/SSLException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "hostname in certificate didn\'t match: <"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "> !="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 201
    .restart local v4    # "cn":Ljava/lang/String;
    .restart local v14    # "parts":[Ljava/lang/String;
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 211
    .restart local v5    # "doWildcard":Z
    .restart local v7    # "hostSuffix":Ljava/lang/String;
    .restart local v15    # "prefix":Ljava/lang/String;
    .restart local v17    # "suffix":Ljava/lang/String;
    :cond_9
    const/4 v11, 0x0

    goto :goto_2

    .line 213
    .end local v7    # "hostSuffix":Ljava/lang/String;
    .end local v15    # "prefix":Ljava/lang/String;
    .end local v17    # "suffix":Ljava/lang/String;
    :cond_a
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    goto :goto_2

    .line 218
    :cond_b
    const/4 v11, 0x0

    goto :goto_3

    .line 221
    :cond_c
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_3

    .line 230
    .end local v4    # "cn":Ljava/lang/String;
    .end local v5    # "doWildcard":Z
    .end local v14    # "parts":[Ljava/lang/String;
    :cond_d
    return-void
.end method

.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    const/4 v3, 0x0

    .line 135
    :try_start_0
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 136
    .local v0, "certs":[Ljava/security/cert/Certificate;
    const/4 v4, 0x0

    aget-object v2, v0, v4

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 137
    .local v2, "x509":Ljava/security/cert/X509Certificate;
    invoke-virtual {p0, p1, v2}, Lorg/apache/http/conn/ssl/AbstractVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    const/4 v3, 0x1

    .line 141
    .end local v0    # "certs":[Ljava/security/cert/Certificate;
    .end local v2    # "x509":Ljava/security/cert/X509Certificate;
    :goto_0
    return v3

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljavax/net/ssl/SSLException;
    goto :goto_0
.end method
