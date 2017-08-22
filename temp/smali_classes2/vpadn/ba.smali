.class public Lvpadn/ba;
.super Ljava/lang/Object;
.source "APIServerMessageStore.java"


# static fields
.field private static b:Lvpadn/ba;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lvpadn/az;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lvpadn/ba;

    invoke-direct {v0}, Lvpadn/ba;-><init>()V

    sput-object v0, Lvpadn/ba;->b:Lvpadn/ba;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lvpadn/ba;->a:Ljava/util/Map;

    .line 24
    return-void
.end method

.method public static a()Lvpadn/ba;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lvpadn/ba;->b:Lvpadn/ba;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 35
    if-nez p3, :cond_0

    .line 36
    iget-object v0, p0, Lvpadn/ba;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    iget-object v0, p0, Lvpadn/ba;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuffer;

    .line 40
    if-nez v0, :cond_1

    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 44
    :cond_1
    if-eqz p3, :cond_2

    .line 45
    const-string v1, "-----------------------------------------------------------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    iget-object v1, p0, Lvpadn/ba;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void

    .line 47
    :cond_2
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lorg/apache/http/HttpResponse;Z)V
    .locals 6

    .prologue
    .line 55
    if-nez p3, :cond_0

    .line 56
    iget-object v0, p0, Lvpadn/ba;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    iget-object v0, p0, Lvpadn/ba;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuffer;

    .line 60
    if-nez v0, :cond_3

    .line 61
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v0

    .line 64
    :goto_0
    if-eqz p3, :cond_1

    .line 65
    const-string v0, "-----------------------------------------------------------\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    :goto_1
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 67
    :cond_1
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 74
    :cond_2
    iget-object v0, p0, Lvpadn/ba;->a:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lvpadn/ba;->c:Lvpadn/az;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lvpadn/ba;->c:Lvpadn/az;

    invoke-interface {v0, p1}, Lvpadn/az;->b(Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 88
    const-string v0, "OK_key"

    invoke-direct {p0, v0, p1, p2}, Lvpadn/ba;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 90
    return-void
.end method

.method public a(Lorg/apache/http/HttpResponse;Z)V
    .locals 1

    .prologue
    .line 79
    const-string v0, "OK_key"

    invoke-direct {p0, v0, p1, p2}, Lvpadn/ba;->a(Ljava/lang/String;Lorg/apache/http/HttpResponse;Z)V

    .line 81
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lvpadn/ba;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 107
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lvpadn/ba;->c:Lvpadn/az;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lvpadn/ba;->c:Lvpadn/az;

    invoke-interface {v0, p1}, Lvpadn/az;->a(Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 93
    const-string v0, "ERR_key"

    invoke-direct {p0, v0, p1, p2}, Lvpadn/ba;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 94
    return-void
.end method

.method public b(Lorg/apache/http/HttpResponse;Z)V
    .locals 1

    .prologue
    .line 84
    const-string v0, "ERR_key"

    invoke-direct {p0, v0, p1, p2}, Lvpadn/ba;->a(Ljava/lang/String;Lorg/apache/http/HttpResponse;Z)V

    .line 85
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lvpadn/ba;->c:Lvpadn/az;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lvpadn/ba;->c:Lvpadn/az;

    invoke-interface {v0}, Lvpadn/az;->a()V

    .line 113
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lvpadn/ba;->c:Lvpadn/az;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lvpadn/ba;->c:Lvpadn/az;

    invoke-interface {v0}, Lvpadn/az;->b()V

    .line 119
    :cond_0
    return-void
.end method
