.class public final Ltwitter4j/internal/http/HttpParameter;
.super Ljava/lang/Object;
.source "HttpParameter.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field private static final GIF:Ljava/lang/String; = "image/gif"

.field private static final JPEG:Ljava/lang/String; = "image/jpeg"

.field private static final OCTET:Ljava/lang/String; = "application/octet-stream"

.field private static final PNG:Ljava/lang/String; = "image/png"

.field private static final serialVersionUID:J = -0x78d96ac49142488cL


# instance fields
.field private file:Ljava/io/File;

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    .line 63
    iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 64
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    .line 53
    iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 54
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    .line 58
    iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 59
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    .line 48
    iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    .line 44
    iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    .line 68
    iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 69
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 70
    return-void
.end method

.method static containsFile(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "params":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    const/4 v0, 0x0

    .line 162
    .local v0, "containsFile":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltwitter4j/internal/http/HttpParameter;

    .line 163
    .local v2, "param":Ltwitter4j/internal/http/HttpParameter;
    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpParameter;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    const/4 v0, 0x1

    .line 168
    .end local v2    # "param":Ltwitter4j/internal/http/HttpParameter;
    :cond_1
    return v0
.end method

.method public static containsFile([Ltwitter4j/internal/http/HttpParameter;)Z
    .locals 6
    .param p0, "params"    # [Ltwitter4j/internal/http/HttpParameter;

    .prologue
    .line 148
    const/4 v1, 0x0

    .line 149
    .local v1, "containsFile":Z
    if-nez p0, :cond_0

    .line 150
    const/4 v5, 0x0

    .line 158
    :goto_0
    return v5

    .line 152
    :cond_0
    move-object v0, p0

    .local v0, "arr$":[Ltwitter4j/internal/http/HttpParameter;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 153
    .local v4, "param":Ltwitter4j/internal/http/HttpParameter;
    invoke-virtual {v4}, Ltwitter4j/internal/http/HttpParameter;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 154
    const/4 v1, 0x1

    .end local v4    # "param":Ltwitter4j/internal/http/HttpParameter;
    :cond_1
    move v5, v1

    .line 158
    goto :goto_0

    .line 152
    .restart local v4    # "param":Ltwitter4j/internal/http/HttpParameter;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static encodeParameters([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;
    .locals 5
    .param p0, "httpParams"    # [Ltwitter4j/internal/http/HttpParameter;

    .prologue
    .line 216
    if-nez p0, :cond_0

    .line 217
    const-string v2, ""

    .line 233
    :goto_0
    return-object v2

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 220
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 221
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpParameter;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "parameter ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, p0, v1

    iget-object v4, v4, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]should be text"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 224
    :cond_1
    if-eqz v1, :cond_2

    .line 225
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    :cond_2
    :try_start_0
    aget-object v2, p0, v1

    iget-object v2, v2, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v3, p0, v1

    iget-object v3, v3, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 233
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 230
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public static getParameterArray(Ljava/lang/String;I)[Ltwitter4j/internal/http/HttpParameter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 175
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ltwitter4j/internal/http/HttpParameter;->getParameterArray(Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v0

    return-object v0
.end method

.method public static getParameterArray(Ljava/lang/String;ILjava/lang/String;I)[Ltwitter4j/internal/http/HttpParameter;
    .locals 2
    .param p0, "name1"    # Ljava/lang/String;
    .param p1, "value1"    # I
    .param p2, "name2"    # Ljava/lang/String;
    .param p3, "value2"    # I

    .prologue
    .line 185
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, p2, v1}, Ltwitter4j/internal/http/HttpParameter;->getParameterArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v0

    return-object v0
.end method

.method public static getParameterArray(Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 172
    const/4 v0, 0x1

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {v2, p0, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getParameterArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;
    .locals 3
    .param p0, "name1"    # Ljava/lang/String;
    .param p1, "value1"    # Ljava/lang/String;
    .param p2, "name2"    # Ljava/lang/String;
    .param p3, "value2"    # Ljava/lang/String;

    .prologue
    .line 180
    const/4 v0, 0x2

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {v2, p0, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {v2, p2, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 207
    move-object v1, p1

    check-cast v1, Ltwitter4j/internal/http/HttpParameter;

    .line 208
    .local v1, "that":Ltwitter4j/internal/http/HttpParameter;
    iget-object v2, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 209
    .local v0, "compared":I
    if-nez v0, :cond_0

    .line 210
    iget-object v2, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 212
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    if-ne p0, p1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v1

    .line 134
    :cond_1
    instance-of v3, p1, Ltwitter4j/internal/http/HttpParameter;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 136
    check-cast v0, Ltwitter4j/internal/http/HttpParameter;

    .line 138
    .local v0, "that":Ltwitter4j/internal/http/HttpParameter;
    iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    if-eqz v3, :cond_4

    iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    move v1, v2

    .line 139
    goto :goto_0

    .line 138
    :cond_4
    iget-object v3, v0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    if-nez v3, :cond_3

    .line 140
    :cond_5
    iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 141
    :cond_6
    iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 142
    goto :goto_0

    .line 141
    :cond_7
    iget-object v3, v0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getContentType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 97
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpParameter;->isFile()Z

    move-result v3

    if-nez v3, :cond_0

    .line 98
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "not a file"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 101
    :cond_0
    iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "extensions":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 103
    .local v2, "index":I
    const/4 v3, -0x1

    if-ne v3, v2, :cond_1

    .line 105
    const-string v0, "application/octet-stream"

    .line 128
    .local v0, "contentType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 107
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_1
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 109
    const-string v3, "gif"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    const-string v0, "image/gif"

    .restart local v0    # "contentType":Ljava/lang/String;
    goto :goto_0

    .line 111
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_2
    const-string v3, "png"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 112
    const-string v0, "image/png"

    .restart local v0    # "contentType":Ljava/lang/String;
    goto :goto_0

    .line 113
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_3
    const-string v3, "jpg"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 114
    const-string v0, "image/jpeg"

    .restart local v0    # "contentType":Ljava/lang/String;
    goto :goto_0

    .line 116
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_4
    const-string v0, "application/octet-stream"

    .restart local v0    # "contentType":Ljava/lang/String;
    goto :goto_0

    .line 118
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    .line 119
    const-string v3, "jpeg"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 120
    const-string v0, "image/jpeg"

    .restart local v0    # "contentType":Ljava/lang/String;
    goto :goto_0

    .line 122
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_6
    const-string v0, "application/octet-stream"

    .restart local v0    # "contentType":Ljava/lang/String;
    goto :goto_0

    .line 125
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_7
    const-string v0, "application/octet-stream"

    .restart local v0    # "contentType":Ljava/lang/String;
    goto :goto_0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 191
    .local v0, "result":I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 192
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    if-eqz v3, :cond_0

    iget-object v2, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 193
    return v0

    :cond_1
    move v1, v2

    .line 191
    goto :goto_0
.end method

.method public isFile()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 198
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "PostParameter{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", value=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
