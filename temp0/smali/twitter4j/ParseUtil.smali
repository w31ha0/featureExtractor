.class final Ltwitter4j/ParseUtil;
.super Ljava/lang/Object;
.source "ParseUtil.java"


# static fields
.field private static formatMap:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/text/SimpleDateFormat;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ltwitter4j/ParseUtil$1;

    invoke-direct {v0}, Ltwitter4j/ParseUtil$1;-><init>()V

    sput-object v0, Ltwitter4j/ParseUtil;->formatMap:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;

    .prologue
    .line 142
    invoke-static {p0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    :cond_0
    const/4 v1, 0x0

    .line 146
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method static getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 101
    sget-object v2, Ltwitter4j/ParseUtil;->formatMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    .line 102
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    if-nez v1, :cond_0

    .line 103
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, p1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 104
    .restart local v1    # "sdf":Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 105
    sget-object v2, Ltwitter4j/ParseUtil;->formatMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_0
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "pe":Ljava/text/ParseException;
    new-instance v2, Ltwitter4j/TwitterException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unexpected date format("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") returned from twitter.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method static getDate(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/util/Date;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 88
    const-string v0, "EEE MMM d HH:mm:ss z yyyy"

    invoke-static {p0, p1, v0}, Ltwitter4j/ParseUtil;->getDate(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static getDate(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p0, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "dateStr":Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    const/4 v1, 0x0

    .line 96
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0, p2}, Ltwitter4j/ParseUtil;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_0
.end method

.method static getDouble(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)D
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;

    .prologue
    .line 133
    invoke-static {p0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "str2":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    :cond_0
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 137
    :goto_0
    return-wide v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_0
.end method

.method static getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "elem"    # Ltwitter4j/internal/org/json/JSONObject;

    .prologue
    .line 115
    invoke-static {p0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "str2":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    :cond_0
    const/4 v1, -0x1

    .line 119
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method static getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;

    .prologue
    .line 125
    invoke-static {p0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "str2":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    :cond_0
    const-wide/16 v1, -0x1

    .line 129
    :goto_0
    return-wide v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method static getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 66
    :try_start_0
    invoke-virtual {p1, p0}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    :goto_0
    return-object v1

    .line 69
    :cond_0
    invoke-virtual {p1, p0}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "jsone":Ltwitter4j/internal/org/json/JSONException;
    goto :goto_0
.end method

.method static getURLDecodedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;

    .prologue
    .line 77
    invoke-static {p0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "returnValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 84
    :cond_0
    :goto_0
    return-object v0

    .line 81
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;

    .prologue
    .line 61
    invoke-static {p0, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/internal/http/HTMLEntity;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
