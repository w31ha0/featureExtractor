.class public Lcom/netflix/android/org/json/HTTPTokener;
.super Lcom/netflix/android/org/json/JSONTokener;
.source "HTTPTokener.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/netflix/android/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public nextToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 52
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/android/org/json/HTTPTokener;->next()C

    move-result v0

    .line 55
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    const/16 v2, 0x22

    if-eq v0, v2, :cond_1

    const/16 v2, 0x27

    if-ne v0, v2, :cond_5

    .line 59
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/android/org/json/HTTPTokener;->next()C

    move-result v2

    .line 60
    const/16 v3, 0x20

    if-ge v2, v3, :cond_2

    .line 61
    const-string/jumbo v0, "Unterminated string."

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/HTTPTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    .line 63
    :cond_2
    if-ne v2, v0, :cond_3

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_1
    return-object v0

    .line 66
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {p0}, Lcom/netflix/android/org/json/HTTPTokener;->next()C

    move-result v0

    .line 70
    :cond_5
    if-eqz v0, :cond_6

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 71
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
