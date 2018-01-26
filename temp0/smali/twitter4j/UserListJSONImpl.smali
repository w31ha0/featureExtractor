.class Ltwitter4j/UserListJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "UserListJSONImpl.java"

# interfaces
.implements Ltwitter4j/UserList;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x581124472812f726L


# instance fields
.field private description:Ljava/lang/String;

.field private fullName:Ljava/lang/String;

.field private id:I

.field private memberCount:I

.field private mode:Z

.field private name:Ljava/lang/String;

.field private slug:Ljava/lang/String;

.field private subscriberCount:I

.field private uri:Ljava/lang/String;

.field private user:Ltwitter4j/User;


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
    .line 57
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 58
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/UserListJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 59
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
    .line 62
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 63
    invoke-direct {p0, p1}, Ltwitter4j/UserListJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 64
    return-void
.end method

.method static createUserListList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;
    .locals 9
    .param p0, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 165
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    .line 166
    .local v1, "json":Ltwitter4j/internal/org/json/JSONObject;
    const-string v7, "lists"

    invoke-virtual {v1, v7}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v3

    .line 167
    .local v3, "list":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v3}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v4

    .line 168
    .local v4, "size":I
    new-instance v6, Ltwitter4j/PagableResponseList;

    invoke-direct {v6, v4, v1, p0}, Ltwitter4j/PagableResponseList;-><init>(ILtwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/http/HttpResponse;)V

    .line 170
    .local v6, "users":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<Ltwitter4j/UserList;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 171
    new-instance v7, Ltwitter4j/UserListJSONImpl;

    invoke-virtual {v3, v0}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v8

    invoke-direct {v7, v8}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    invoke-virtual {v6, v7}, Ltwitter4j/PagableResponseList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    .end local v0    # "i":I
    .end local v1    # "json":Ltwitter4j/internal/org/json/JSONObject;
    .end local v3    # "list":Ltwitter4j/internal/org/json/JSONArray;
    .end local v4    # "size":I
    .end local v6    # "users":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<Ltwitter4j/UserList;>;"
    :catch_0
    move-exception v2

    .line 175
    .local v2, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v7, Ltwitter4j/TwitterException;

    invoke-direct {v7, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 176
    .end local v2    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    :catch_1
    move-exception v5

    .line 177
    .local v5, "te":Ltwitter4j/TwitterException;
    throw v5

    .line 173
    .end local v5    # "te":Ltwitter4j/TwitterException;
    .restart local v0    # "i":I
    .restart local v1    # "json":Ltwitter4j/internal/org/json/JSONObject;
    .restart local v3    # "list":Ltwitter4j/internal/org/json/JSONArray;
    .restart local v4    # "size":I
    .restart local v6    # "users":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<Ltwitter4j/UserList;>;"
    :cond_0
    return-object v6
.end method

.method private init(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 67
    const-string v1, "id"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v1

    iput v1, p0, Ltwitter4j/UserListJSONImpl;->id:I

    .line 68
    const-string v1, "name"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/UserListJSONImpl;->name:Ljava/lang/String;

    .line 69
    const-string v1, "full_name"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/UserListJSONImpl;->fullName:Ljava/lang/String;

    .line 70
    const-string v1, "slug"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/UserListJSONImpl;->slug:Ljava/lang/String;

    .line 71
    const-string v1, "description"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/UserListJSONImpl;->description:Ljava/lang/String;

    .line 72
    const-string v1, "subscriber_count"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v1

    iput v1, p0, Ltwitter4j/UserListJSONImpl;->subscriberCount:I

    .line 73
    const-string v1, "member_count"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v1

    iput v1, p0, Ltwitter4j/UserListJSONImpl;->memberCount:I

    .line 74
    const-string v1, "uri"

    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/UserListJSONImpl;->uri:Ljava/lang/String;

    .line 75
    const-string v1, "public"

    const-string v2, "mode"

    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Ltwitter4j/UserListJSONImpl;->mode:Z

    .line 77
    :try_start_0
    const-string v1, "user"

    invoke-virtual {p1, v1}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Ltwitter4j/UserJSONImpl;

    const-string v2, "user"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    iput-object v1, p0, Ltwitter4j/UserListJSONImpl;->user:Ltwitter4j/User;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, Ltwitter4j/UserList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ltwitter4j/UserListJSONImpl;->compareTo(Ltwitter4j/UserList;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/UserList;)I
    .locals 2
    .param p1, "that"    # Ltwitter4j/UserList;

    .prologue
    .line 86
    iget v0, p0, Ltwitter4j/UserListJSONImpl;->id:I

    invoke-interface {p1}, Ltwitter4j/UserList;->getId()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 188
    if-nez p1, :cond_1

    move v0, v1

    .line 194
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 191
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-eq p0, p1, :cond_0

    .line 194
    instance-of v2, p1, Ltwitter4j/UserList;

    if-eqz v2, :cond_2

    check-cast p1, Ltwitter4j/UserList;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Ltwitter4j/UserList;->getId()I

    move-result v2

    iget v3, p0, Ltwitter4j/UserListJSONImpl;->id:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Ltwitter4j/UserListJSONImpl;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Ltwitter4j/UserListJSONImpl;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Ltwitter4j/UserListJSONImpl;->id:I

    return v0
.end method

.method public getMemberCount()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Ltwitter4j/UserListJSONImpl;->memberCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Ltwitter4j/UserListJSONImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSlug()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Ltwitter4j/UserListJSONImpl;->slug:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberCount()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Ltwitter4j/UserListJSONImpl;->subscriberCount:I

    return v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 3

    .prologue
    .line 143
    :try_start_0
    new-instance v1, Ljava/net/URI;

    iget-object v2, p0, Ltwitter4j/UserListJSONImpl;->uri:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-object v1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "ex":Ljava/net/URISyntaxException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUser()Ltwitter4j/User;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Ltwitter4j/UserListJSONImpl;->user:Ltwitter4j/User;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Ltwitter4j/UserListJSONImpl;->id:I

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Ltwitter4j/UserListJSONImpl;->mode:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 199
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "UserListJSONImpl{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserListJSONImpl;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserListJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", fullName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserListJSONImpl;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", slug=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserListJSONImpl;->slug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserListJSONImpl;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", subscriberCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserListJSONImpl;->subscriberCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", memberCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UserListJSONImpl;->memberCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", uri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserListJSONImpl;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", mode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/UserListJSONImpl;->mode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserListJSONImpl;->user:Ltwitter4j/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
