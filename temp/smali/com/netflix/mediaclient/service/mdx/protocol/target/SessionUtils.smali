.class public Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils;
.super Ljava/lang/Object;
.source "SessionUtils.java"


# static fields
.field private static final ACTION_ERROR:Ljava/lang/String; = "error"

.field private static final ACTION_SESSION:Ljava/lang/String; = "session"

.field private static final ACTION_SESSION_ENDCAST:Ljava/lang/String; = "endCastSession"

.field private static final SESSION_VERSION:Ljava/lang/String; = "1.0"

.field private static final TAG:Ljava/lang/String; = "MdxTargetSession"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildMdxSessionMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 64
    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->getmControlleruuid()Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->getmControllerIpa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":9080"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {p6, p5}, Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxCryptContext;->encrypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    .line 71
    :cond_0
    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    .line 72
    const-string/jumbo v4, "action=session"

    aput-object v4, v3, v7

    .line 73
    const-string/jumbo v4, "version=1.0"

    aput-object v4, v3, v8

    .line 74
    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fromurl="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    .line 75
    const/4 v1, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fromuuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 76
    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fromuserid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 77
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "touuid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 78
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "touserid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 79
    const/4 v0, 0x7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "nonce="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 80
    const/16 v0, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ciphertext="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 82
    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils;->getNrSeperatedForm([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 85
    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils;->getCananicalForm([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    const-string/jumbo v2, "MdxTargetSession"

    const-string/jumbo v3, "cform [%s]"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 87
    invoke-static {p6, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxCryptContext;->hmac([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "hmac="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static getCananicalForm([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 152
    array-length v1, p0

    if-lt v1, v0, :cond_3

    .line 153
    aget-object v1, p0, v3

    .line 154
    aget-object v3, p0, v3

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils;->urlEncodeCform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    .line 167
    :cond_0
    :goto_0
    return-object v1

    .line 163
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    add-int/lit8 v0, v0, 0x1

    :cond_2
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 159
    aget-object v3, p0, v0

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils;->urlEncodeCform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v2

    .line 161
    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 167
    goto :goto_0
.end method

.method private static getNrSeperatedForm([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 143
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 144
    array-length v2, p0

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    .line 145
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_1
    return-object v0
.end method

.method static parseMdxSessionMessage(Lorg/json/JSONObject;[BLcom/netflix/mediaclient/service/mdx/NotifierInterface;Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 95
    :try_start_0
    const-string/jumbo v0, "action"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string/jumbo v2, "endCastSession"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    const-string/jumbo v2, "MdxTargetSession"

    const-string/jumbo v3, "handle %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 99
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_ENDSESSOIN:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;)V

    .line 120
    :goto_0
    return-object v0

    .line 100
    :cond_0
    const-string/jumbo v2, "error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    const-string/jumbo v0, "MdxTargetSession"

    const-string/jumbo v2, "get a session error massage"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils;->parseSessionError(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_1
    const-string/jumbo v2, "session"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 104
    const-string/jumbo v2, "MdxTargetSession"

    const-string/jumbo v3, "not a session massage %s. BUG!!!"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 105
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_ENDSESSOIN:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    .line 120
    goto :goto_0

    .line 107
    :cond_2
    :try_start_1
    const-string/jumbo v0, "ciphertext"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 109
    goto :goto_0

    .line 111
    :cond_3
    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxCryptContext;->decrypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 113
    const-string/jumbo v0, "MdxTargetSession"

    const-string/jumbo v2, "appMsg is empty"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 114
    goto :goto_0

    .line 116
    :cond_4
    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxMessageUtils;->convertMsgToJSON(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;->ParsingSessionActionAndNotify(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method private static parseSessionError(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 123
    const-string/jumbo v0, "errorcode"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    const-string/jumbo v1, "errorstring"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    const-string/jumbo v2, "6"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "5"

    .line 127
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "9"

    .line 128
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "8"

    .line 129
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    :cond_0
    const-string/jumbo v2, "MdxTargetSession"

    const-string/jumbo v3, "session error %s, %s, redo pairing"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 131
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_ERROR_BADPAIR:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    invoke-direct {v0, v1, v7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;)V

    .line 134
    :goto_0
    return-object v0

    .line 133
    :cond_1
    const-string/jumbo v2, "MdxTargetSession"

    const-string/jumbo v3, "session error %s, %s, restart sesssion"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 134
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;->MESSAGE_TYPE_ERROR_BADSESSION:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;

    invoke-direct {v0, v1, v7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionUtils$SessionMessageParsingResult;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;)V

    goto :goto_0
.end method

.method public static startSessionMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string/jumbo v0, "sessionAction=createSession\r\n"

    return-object v0
.end method

.method private static urlEncodeCform(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 171
    const-string/jumbo v0, "="

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 174
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const-string/jumbo v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const/4 v0, 0x0

    goto :goto_0
.end method
