.class public final Lcom/netflix/mediaclient/util/net/IpAddressUtils;
.super Ljava/lang/Object;
.source "IpAddressUtils.java"


# static fields
.field private static VALID_IPV4_PATTERN:Ljava/util/regex/Pattern; = null

.field private static VALID_IPV6_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final ipv4Pattern:Ljava/lang/String; = "(([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.){3}([01]?\\d\\d?|2[0-4]\\d|25[0-5])"

.field private static final ipv6Pattern:Ljava/lang/String; = "([0-9a-f]{1,4}:){7}([0-9a-f]){1,4}"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lcom/netflix/mediaclient/util/net/IpAddressUtils;->VALID_IPV4_PATTERN:Ljava/util/regex/Pattern;

    .line 15
    sput-object v0, Lcom/netflix/mediaclient/util/net/IpAddressUtils;->VALID_IPV6_PATTERN:Ljava/util/regex/Pattern;

    .line 19
    :try_start_0
    const-string/jumbo v0, "(([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.){3}([01]?\\d\\d?|2[0-4]\\d|25[0-5])"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/util/net/IpAddressUtils;->VALID_IPV4_PATTERN:Ljava/util/regex/Pattern;

    .line 20
    const-string/jumbo v0, "([0-9a-f]{1,4}:){7}([0-9a-f]){1,4}"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/util/net/IpAddressUtils;->VALID_IPV6_PATTERN:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static isIPv4Address(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/netflix/mediaclient/util/net/IpAddressUtils;->VALID_IPV4_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isIPv6Address(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/netflix/mediaclient/util/net/IpAddressUtils;->VALID_IPV6_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isIpAddress(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 38
    invoke-static {p0}, Lcom/netflix/mediaclient/util/net/IpAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/util/net/IpAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    const/4 v0, 0x0

    goto :goto_0
.end method
