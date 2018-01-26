.class public final Ltwitter4j/conf/PropertyConfiguration;
.super Ltwitter4j/conf/ConfigurationBase;
.source "PropertyConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ASYNC_DISPATCHER_IMPL:Ljava/lang/String; = "async.dispatherImpl"

.field public static final ASYNC_NUM_THREADS:Ljava/lang/String; = "async.numThreads"

.field public static final CLIENT_URL:Ljava/lang/String; = "clientURL"

.field public static final CLIENT_VERSION:Ljava/lang/String; = "clientVersion"

.field public static final DEBUG:Ljava/lang/String; = "debug"

.field public static final HTTP_CONNECTION_TIMEOUT:Ljava/lang/String; = "http.connectionTimeout"

.field public static final HTTP_PROXY_HOST:Ljava/lang/String; = "http.proxyHost"

.field public static final HTTP_PROXY_HOST_FALLBACK:Ljava/lang/String; = "http.proxyHost"

.field public static final HTTP_PROXY_PASSWORD:Ljava/lang/String; = "http.proxyPassword"

.field public static final HTTP_PROXY_PORT:Ljava/lang/String; = "http.proxyPort"

.field public static final HTTP_PROXY_PORT_FALLBACK:Ljava/lang/String; = "http.proxyPort"

.field public static final HTTP_PROXY_USER:Ljava/lang/String; = "http.proxyUser"

.field public static final HTTP_READ_TIMEOUT:Ljava/lang/String; = "http.readTimeout"

.field public static final HTTP_RETRY_COUNT:Ljava/lang/String; = "http.retryCount"

.field public static final HTTP_RETRY_INTERVAL_SECS:Ljava/lang/String; = "http.retryIntervalSecs"

.field public static final HTTP_STREAMING_READ_TIMEOUT:Ljava/lang/String; = "http.streamingReadTimeout"

.field public static final HTTP_USER_AGENT:Ljava/lang/String; = "http.userAgent"

.field public static final HTTP_USE_SSL:Ljava/lang/String; = "http.useSSL"

.field public static final OAUTH_ACCESS_TOKEN:Ljava/lang/String; = "oauth.accessToken"

.field public static final OAUTH_ACCESS_TOKEN_SECRET:Ljava/lang/String; = "oauth.accessTokenSecret"

.field public static final OAUTH_ACCESS_TOKEN_URL:Ljava/lang/String; = "oauth.accessTokenURL"

.field public static final OAUTH_AUTHENTICATION_URL:Ljava/lang/String; = "oauth.authenticationURL"

.field public static final OAUTH_AUTHORIZATION_URL:Ljava/lang/String; = "oauth.authorizationURL"

.field public static final OAUTH_CONSUMER_KEY:Ljava/lang/String; = "oauth.consumerKey"

.field public static final OAUTH_CONSUMER_SECRET:Ljava/lang/String; = "oauth.consumerSecret"

.field public static final OAUTH_REQUEST_TOKEN_URL:Ljava/lang/String; = "oauth.requestTokenURL"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final REST_BASE_URL:Ljava/lang/String; = "restBaseURL"

.field public static final SEARCH_BASE_URL:Ljava/lang/String; = "searchBaseURL"

.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final STREAM_BASE_URL:Ljava/lang/String; = "streamBaseURL"

.field public static final USER:Ljava/lang/String; = "user"

.field static class$twitter4j$conf$Configuration:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = 0x59a2240419f3c755L


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 125
    const-string v0, "/"

    invoke-direct {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;-><init>(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 88
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;-><init>()V

    .line 89
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 90
    .local v0, "props":Ljava/util/Properties;
    invoke-direct {p0, v0, p1}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z

    .line 91
    const-string v1, "/"

    invoke-direct {p0, v0, v1}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithTreePath(Ljava/util/Properties;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "treePath"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;-><init>()V

    .line 101
    const/4 v3, 0x0

    .line 104
    .local v3, "props":Ljava/util/Properties;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/Properties;

    move-object v3, v0

    .line 105
    invoke-direct {p0, v3}, Ltwitter4j/conf/PropertyConfiguration;->normalize(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    const-string v1, "twitter4j.properties"

    .line 112
    .local v1, "TWITTER4J_PROPERTIES":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "twitter4j.properties"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/lang/String;)Z

    .line 114
    sget-object v4, Ltwitter4j/conf/PropertyConfiguration;->class$twitter4j$conf$Configuration:Ljava/lang/Class;

    if-nez v4, :cond_0

    const-string v4, "twitter4j.conf.Configuration"

    invoke-static {v4}, Ltwitter4j/conf/PropertyConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ltwitter4j/conf/PropertyConfiguration;->class$twitter4j$conf$Configuration:Ljava/lang/Class;

    :goto_1
    const-string v5, "/twitter4j.properties"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z

    .line 116
    sget-object v4, Ltwitter4j/conf/PropertyConfiguration;->class$twitter4j$conf$Configuration:Ljava/lang/Class;

    if-nez v4, :cond_1

    const-string v4, "twitter4j.conf.Configuration"

    invoke-static {v4}, Ltwitter4j/conf/PropertyConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Ltwitter4j/conf/PropertyConfiguration;->class$twitter4j$conf$Configuration:Ljava/lang/Class;

    :goto_2
    const-string v5, "/WEB-INF/twitter4j.properties"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Ltwitter4j/conf/PropertyConfiguration;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z

    .line 118
    invoke-direct {p0, v3, p1}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithTreePath(Ljava/util/Properties;Ljava/lang/String;)V

    .line 119
    return-void

    .line 106
    .end local v1    # "TWITTER4J_PROPERTIES":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 108
    .local v2, "ace":Ljava/security/AccessControlException;
    new-instance v3, Ljava/util/Properties;

    .end local v3    # "props":Ljava/util/Properties;
    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .restart local v3    # "props":Ljava/util/Properties;
    goto :goto_0

    .line 114
    .end local v2    # "ace":Ljava/security/AccessControlException;
    .restart local v1    # "TWITTER4J_PROPERTIES":Ljava/lang/String;
    :cond_0
    sget-object v4, Ltwitter4j/conf/PropertyConfiguration;->class$twitter4j$conf$Configuration:Ljava/lang/Class;

    goto :goto_1

    .line 116
    :cond_1
    sget-object v4, Ltwitter4j/conf/PropertyConfiguration;->class$twitter4j$conf$Configuration:Ljava/lang/Class;

    goto :goto_2
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1
    .param p1, "props"    # Ljava/util/Properties;

    .prologue
    .line 95
    invoke-direct {p0}, Ltwitter4j/conf/ConfigurationBase;-><init>()V

    .line 96
    const-string v0, "/"

    invoke-direct {p0, p1, v0}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithTreePath(Ljava/util/Properties;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 114
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "is"    # Ljava/io/InputStream;

    .prologue
    .line 157
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 158
    invoke-direct {p0, p1}, Ltwitter4j/conf/PropertyConfiguration;->normalize(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    .line 160
    :catch_0
    move-exception v0

    .line 162
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadProperties(Ljava/util/Properties;Ljava/lang/String;)Z
    .locals 5
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 133
    const/4 v1, 0x0

    .line 135
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 139
    invoke-direct {p0, p1}, Ltwitter4j/conf/PropertyConfiguration;->normalize(Ljava/util/Properties;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    const/4 v3, 0x1

    .line 145
    if-eqz v2, :cond_0

    .line 146
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    move-object v1, v2

    .line 152
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :goto_1
    return v3

    .line 145
    .restart local v0    # "file":Ljava/io/File;
    :cond_1
    if-eqz v1, :cond_2

    .line 146
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 152
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 142
    :catch_0
    move-exception v3

    .line 145
    :goto_3
    if-eqz v1, :cond_2

    .line 146
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 148
    :catch_1
    move-exception v3

    goto :goto_2

    .line 144
    :catchall_0
    move-exception v3

    .line 145
    :goto_4
    if-eqz v1, :cond_3

    .line 146
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 150
    :cond_3
    :goto_5
    throw v3

    .line 148
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v3

    goto :goto_2

    .end local v0    # "file":Ljava/io/File;
    :catch_4
    move-exception v4

    goto :goto_5

    .line 144
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 142
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private normalize(Ljava/util/Properties;)V
    .locals 10
    .param p1, "props"    # Ljava/util/Properties;

    .prologue
    .line 166
    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 167
    .local v4, "keys":Ljava/util/Set;
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    .local v7, "toBeNormalized":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "key":Ljava/lang/Object;
    move-object v3, v2

    .line 169
    check-cast v3, Ljava/lang/String;

    .line 170
    .local v3, "keyStr":Ljava/lang/String;
    const/4 v8, -0x1

    const-string v9, "twitter4j."

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v8, v9, :cond_0

    .line 171
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "keyStr":Ljava/lang/String;
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 175
    .restart local v3    # "keyStr":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, "property":Ljava/lang/String;
    const-string v8, "twitter4j."

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 177
    .local v1, "index":I
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    add-int/lit8 v9, v1, 0xa

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, "newKey":Ljava/lang/String;
    invoke-virtual {p1, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 180
    .end local v1    # "index":I
    .end local v3    # "keyStr":Ljava/lang/String;
    .end local v5    # "newKey":Ljava/lang/String;
    .end local v6    # "property":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFieldsWithPrefix(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 1
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 208
    const-string v0, "debug"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "debug"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setDebug(Z)V

    .line 212
    :cond_0
    const-string v0, "source"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    const-string v0, "source"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setSource(Ljava/lang/String;)V

    .line 216
    :cond_1
    const-string v0, "user"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    const-string v0, "user"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setUser(Ljava/lang/String;)V

    .line 219
    :cond_2
    const-string v0, "password"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    const-string v0, "password"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setPassword(Ljava/lang/String;)V

    .line 222
    :cond_3
    const-string v0, "http.useSSL"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 223
    const-string v0, "http.useSSL"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setUseSSL(Z)V

    .line 229
    :cond_4
    :goto_0
    const-string v0, "http.proxyHost"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 230
    const-string v0, "http.proxyHost"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyHost(Ljava/lang/String;)V

    .line 234
    :cond_5
    :goto_1
    const-string v0, "http.proxyUser"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 235
    const-string v0, "http.proxyUser"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyUser(Ljava/lang/String;)V

    .line 237
    :cond_6
    const-string v0, "http.proxyPassword"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 238
    const-string v0, "http.proxyPassword"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyPassword(Ljava/lang/String;)V

    .line 240
    :cond_7
    const-string v0, "http.proxyPort"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 241
    const-string v0, "http.proxyPort"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyPort(I)V

    .line 245
    :cond_8
    :goto_2
    const-string v0, "http.connectionTimeout"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 246
    const-string v0, "http.connectionTimeout"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setHttpConnectionTimeout(I)V

    .line 248
    :cond_9
    const-string v0, "http.readTimeout"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 249
    const-string v0, "http.readTimeout"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setHttpReadTimeout(I)V

    .line 251
    :cond_a
    const-string v0, "http.streamingReadTimeout"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 252
    const-string v0, "http.streamingReadTimeout"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setHttpStreamingReadTimeout(I)V

    .line 254
    :cond_b
    const-string v0, "http.retryCount"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 255
    const-string v0, "http.retryCount"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setHttpRetryCount(I)V

    .line 257
    :cond_c
    const-string v0, "http.retryIntervalSecs"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 258
    const-string v0, "http.retryIntervalSecs"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setHttpRetryIntervalSeconds(I)V

    .line 260
    :cond_d
    const-string v0, "oauth.consumerKey"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 261
    const-string v0, "oauth.consumerKey"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthConsumerKey(Ljava/lang/String;)V

    .line 263
    :cond_e
    const-string v0, "oauth.consumerSecret"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 264
    const-string v0, "oauth.consumerSecret"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthConsumerSecret(Ljava/lang/String;)V

    .line 266
    :cond_f
    const-string v0, "oauth.accessToken"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 267
    const-string v0, "oauth.accessToken"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAccessToken(Ljava/lang/String;)V

    .line 269
    :cond_10
    const-string v0, "oauth.accessTokenSecret"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 270
    const-string v0, "oauth.accessTokenSecret"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAccessTokenSecret(Ljava/lang/String;)V

    .line 272
    :cond_11
    const-string v0, "async.numThreads"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 273
    const-string v0, "async.numThreads"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setAsyncNumThreads(I)V

    .line 275
    :cond_12
    const-string v0, "async.dispatherImpl"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 276
    const-string v0, "async.dispatherImpl"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setAsyncNumThreads(I)V

    .line 278
    :cond_13
    const-string v0, "clientVersion"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 279
    const-string v0, "clientVersion"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setClientVersion(Ljava/lang/String;)V

    .line 281
    :cond_14
    const-string v0, "clientURL"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 282
    const-string v0, "clientURL"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setClientURL(Ljava/lang/String;)V

    .line 284
    :cond_15
    const-string v0, "http.userAgent"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 285
    const-string v0, "http.userAgent"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setUserAgent(Ljava/lang/String;)V

    .line 288
    :cond_16
    const-string v0, "oauth.requestTokenURL"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 289
    const-string v0, "oauth.requestTokenURL"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthRequestTokenURL(Ljava/lang/String;)V

    .line 292
    :cond_17
    const-string v0, "oauth.authorizationURL"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 293
    const-string v0, "oauth.authorizationURL"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAuthorizationURL(Ljava/lang/String;)V

    .line 296
    :cond_18
    const-string v0, "oauth.accessTokenURL"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 297
    const-string v0, "oauth.accessTokenURL"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAccessTokenURL(Ljava/lang/String;)V

    .line 300
    :cond_19
    const-string v0, "oauth.authenticationURL"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 301
    const-string v0, "oauth.authenticationURL"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setOAuthAuthenticationURL(Ljava/lang/String;)V

    .line 304
    :cond_1a
    const-string v0, "restBaseURL"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 305
    const-string v0, "restBaseURL"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setRestBaseURL(Ljava/lang/String;)V

    .line 308
    :cond_1b
    const-string v0, "searchBaseURL"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 309
    const-string v0, "searchBaseURL"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setSearchBaseURL(Ljava/lang/String;)V

    .line 312
    :cond_1c
    const-string v0, "streamBaseURL"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 313
    const-string v0, "streamBaseURL"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setStreamBaseURL(Ljava/lang/String;)V

    .line 315
    :cond_1d
    return-void

    .line 224
    :cond_1e
    const-string v0, "user"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "password"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 227
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setUseSSL(Z)V

    goto/16 :goto_0

    .line 231
    :cond_1f
    const-string v0, "http.proxyHost"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 232
    const-string v0, "http.proxyHost"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyHost(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 242
    :cond_20
    const-string v0, "http.proxyPort"

    invoke-direct {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->notNull(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 243
    const-string v0, "http.proxyPort"

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/conf/PropertyConfiguration;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ltwitter4j/conf/PropertyConfiguration;->setHttpProxyPort(I)V

    goto/16 :goto_2
.end method

.method private setFieldsWithTreePath(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 8
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "treePath"    # Ljava/lang/String;

    .prologue
    .line 192
    const-string v6, ""

    invoke-direct {p0, p1, v6}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithPrefix(Ljava/util/Properties;Ljava/lang/String;)V

    .line 193
    const-string v6, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "splitArray":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 195
    .local v3, "prefix":Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 196
    .local v4, "split":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 197
    if-nez v3, :cond_1

    .line 198
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    :goto_1
    invoke-direct {p0, p1, v3}, Ltwitter4j/conf/PropertyConfiguration;->setFieldsWithPrefix(Ljava/util/Properties;Ljava/lang/String;)V

    .line 195
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_1
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 205
    .end local v4    # "split":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-super {p0, p1}, Ltwitter4j/conf/ConfigurationBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected getBoolean(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 318
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getDispatcherImpl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getDispatcherImpl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpStreamingReadTimeout()I
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getHttpStreamingReadTimeout()I

    move-result v0

    return v0
.end method

.method protected getIntProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 323
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 327
    :goto_0
    return v2

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getOAuthAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAccessTokenSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessTokenURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAccessTokenURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAuthenticationURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAuthenticationURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAuthorizationURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthAuthorizationURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthRequestTokenURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getOAuthRequestTokenURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRestBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getRestBaseURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getSearchBaseURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Ltwitter4j/conf/ConfigurationBase;->getStreamBaseURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getString(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 332
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
