.class public final Ltwitter4j/internal/http/HttpResponseEvent;
.super Ljava/lang/Object;
.source "HttpResponseEvent.java"


# instance fields
.field private request:Ltwitter4j/internal/http/HttpRequest;

.field private response:Ltwitter4j/internal/http/HttpResponse;


# direct methods
.method public constructor <init>(Ltwitter4j/internal/http/HttpRequest;Ltwitter4j/internal/http/HttpResponse;)V
    .locals 0
    .param p1, "request"    # Ltwitter4j/internal/http/HttpRequest;
    .param p2, "response"    # Ltwitter4j/internal/http/HttpResponse;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    .line 41
    iput-object p2, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    if-ne p0, p1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v1

    .line 67
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 69
    check-cast v0, Ltwitter4j/internal/http/HttpResponseEvent;

    .line 71
    .local v0, "that":Ltwitter4j/internal/http/HttpResponseEvent;
    iget-object v3, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    if-eqz v3, :cond_5

    iget-object v3, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    invoke-virtual {v3, v4}, Ltwitter4j/internal/http/HttpRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    .line 72
    goto :goto_0

    .line 71
    :cond_5
    iget-object v3, v0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    if-nez v3, :cond_4

    .line 73
    :cond_6
    iget-object v3, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    if-eqz v3, :cond_7

    iget-object v3, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 74
    goto :goto_0

    .line 73
    :cond_7
    iget-object v3, v0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getRequest()Ltwitter4j/internal/http/HttpRequest;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    return-object v0
.end method

.method public getResponse()Ltwitter4j/internal/http/HttpResponse;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v2, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpRequest;->hashCode()I

    move-result v0

    .line 82
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    if-eqz v3, :cond_0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 83
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 81
    goto :goto_0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    invoke-virtual {v0}, Ltwitter4j/internal/http/HttpRequest;->getAuthorization()Ltwitter4j/http/Authorization;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/http/Authorization;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "HttpResponseEvent{request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
