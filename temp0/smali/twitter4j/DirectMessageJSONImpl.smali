.class final Ltwitter4j/DirectMessageJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "DirectMessageJSONImpl.java"

# interfaces
.implements Ltwitter4j/DirectMessage;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2d250e1d8adf6ba9L


# instance fields
.field private createdAt:Ljava/util/Date;

.field private id:I

.field private recipient:Ltwitter4j/User;

.field private recipientId:I

.field private recipientScreenName:Ljava/lang/String;

.field private sender:Ltwitter4j/User;

.field private senderId:I

.field private senderScreenName:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;)V
    .locals 1
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 53
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/DirectMessageJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 54
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 0
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 56
    invoke-direct {p0, p1}, Ltwitter4j/DirectMessageJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 57
    return-void
.end method

.method static createDirectMessageList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 8
    .param p0, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 143
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v3

    .line 144
    .local v3, "list":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v3}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v4

    .line 145
    .local v4, "size":I
    new-instance v0, Ltwitter4j/ResponseList;

    invoke-direct {v0, v4, p0}, Ltwitter4j/ResponseList;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 146
    .local v0, "directMessages":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/DirectMessage;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 147
    new-instance v6, Ltwitter4j/DirectMessageJSONImpl;

    invoke-virtual {v3, v1}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    invoke-virtual {v0, v6}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "directMessages":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/DirectMessage;>;"
    .end local v1    # "i":I
    .end local v3    # "list":Ltwitter4j/internal/org/json/JSONArray;
    .end local v4    # "size":I
    :catch_0
    move-exception v2

    .line 151
    .local v2, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v6, Ltwitter4j/TwitterException;

    invoke-direct {v6, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 152
    .end local v2    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    :catch_1
    move-exception v5

    .line 153
    .local v5, "te":Ltwitter4j/TwitterException;
    throw v5

    .line 149
    .end local v5    # "te":Ltwitter4j/TwitterException;
    .restart local v0    # "directMessages":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/DirectMessage;>;"
    .restart local v1    # "i":I
    .restart local v3    # "list":Ltwitter4j/internal/org/json/JSONArray;
    .restart local v4    # "size":I
    :cond_0
    return-object v0
.end method

.method private init(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 59
    const-string v1, "id"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v1

    iput v1, p0, Ltwitter4j/DirectMessageJSONImpl;->id:I

    .line 60
    const-string v1, "text"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->text:Ljava/lang/String;

    .line 61
    const-string v1, "sender_id"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v1

    iput v1, p0, Ltwitter4j/DirectMessageJSONImpl;->senderId:I

    .line 62
    const-string v1, "recipient_id"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v1

    iput v1, p0, Ltwitter4j/DirectMessageJSONImpl;->recipientId:I

    .line 63
    const-string v1, "created_at"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getDate(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->createdAt:Ljava/util/Date;

    .line 64
    const-string v1, "sender_screen_name"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->senderScreenName:Ljava/lang/String;

    .line 65
    const-string v1, "recipient_screen_name"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->recipientScreenName:Ljava/lang/String;

    .line 67
    :try_start_0
    new-instance v1, Ltwitter4j/UserJSONImpl;

    const-string v2, "sender"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    iput-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->sender:Ltwitter4j/User;

    .line 68
    new-instance v1, Ltwitter4j/UserJSONImpl;

    const-string v2, "recipient"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    iput-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->recipient:Ltwitter4j/User;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 164
    if-nez p1, :cond_1

    move v0, v1

    .line 170
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 167
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-eq p0, p1, :cond_0

    .line 170
    instance-of v2, p1, Ltwitter4j/DirectMessage;

    if-eqz v2, :cond_2

    check-cast p1, Ltwitter4j/DirectMessage;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Ltwitter4j/DirectMessage;->getId()I

    move-result v2

    iget v3, p0, Ltwitter4j/DirectMessageJSONImpl;->id:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Ltwitter4j/DirectMessageJSONImpl;->id:I

    return v0
.end method

.method public getRecipient()Ltwitter4j/User;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->recipient:Ltwitter4j/User;

    return-object v0
.end method

.method public getRecipientId()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Ltwitter4j/DirectMessageJSONImpl;->recipientId:I

    return v0
.end method

.method public getRecipientScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->recipientScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()Ltwitter4j/User;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->sender:Ltwitter4j/User;

    return-object v0
.end method

.method public getSenderId()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Ltwitter4j/DirectMessageJSONImpl;->senderId:I

    return v0
.end method

.method public getSenderScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->senderScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Ltwitter4j/DirectMessageJSONImpl;->id:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 175
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "DirectMessageJSONImpl{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/DirectMessageJSONImpl;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", sender_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/DirectMessageJSONImpl;->senderId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", recipient_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/DirectMessageJSONImpl;->recipientId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", created_at="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", sender_screen_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->senderScreenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", recipient_screen_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->recipientScreenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", sender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->sender:Ltwitter4j/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", recipient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->recipient:Ltwitter4j/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
