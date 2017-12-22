.class public Lcom/netflix/msl/io/MslEncoderFormat;
.super Ljava/lang/Object;
.source "MslEncoderFormat.java"


# static fields
.field public static final JSON:Lcom/netflix/msl/io/MslEncoderFormat;

.field private static formatsById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Lcom/netflix/msl/io/MslEncoderFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static formatsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/io/MslEncoderFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final identifier:B

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netflix/msl/io/MslEncoderFormat;->formatsByName:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netflix/msl/io/MslEncoderFormat;->formatsById:Ljava/util/Map;

    .line 36
    new-instance v0, Lcom/netflix/msl/io/MslEncoderFormat;

    const-string/jumbo v1, "JSON"

    const/16 v2, 0x7b

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/io/MslEncoderFormat;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcom/netflix/msl/io/MslEncoderFormat;->JSON:Lcom/netflix/msl/io/MslEncoderFormat;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;B)V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/netflix/msl/io/MslEncoderFormat;->name:Ljava/lang/String;

    .line 47
    iput-byte p2, p0, Lcom/netflix/msl/io/MslEncoderFormat;->identifier:B

    .line 50
    sget-object v1, Lcom/netflix/msl/io/MslEncoderFormat;->formatsByName:Ljava/util/Map;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lcom/netflix/msl/io/MslEncoderFormat;->formatsByName:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    sget-object v1, Lcom/netflix/msl/io/MslEncoderFormat;->formatsById:Ljava/util/Map;

    monitor-enter v1

    .line 54
    :try_start_1
    sget-object v0, Lcom/netflix/msl/io/MslEncoderFormat;->formatsById:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    return-void

    .line 52
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 55
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public static getFormat(B)Lcom/netflix/msl/io/MslEncoderFormat;
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/netflix/msl/io/MslEncoderFormat;->formatsById:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/io/MslEncoderFormat;

    return-object v0
.end method

.method public static getFormat(Ljava/lang/String;)Lcom/netflix/msl/io/MslEncoderFormat;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/netflix/msl/io/MslEncoderFormat;->formatsByName:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/io/MslEncoderFormat;

    return-object v0
.end method

.method public static values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/netflix/msl/io/MslEncoderFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    sget-object v0, Lcom/netflix/msl/io/MslEncoderFormat;->formatsByName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 118
    if-ne p1, p0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    instance-of v2, p1, Lcom/netflix/msl/io/MslEncoderFormat;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 120
    :cond_2
    check-cast p1, Lcom/netflix/msl/io/MslEncoderFormat;

    .line 121
    iget-object v2, p0, Lcom/netflix/msl/io/MslEncoderFormat;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/io/MslEncoderFormat;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-byte v2, p0, Lcom/netflix/msl/io/MslEncoderFormat;->identifier:B

    iget-byte v3, p1, Lcom/netflix/msl/io/MslEncoderFormat;->identifier:B

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/netflix/msl/io/MslEncoderFormat;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-byte v1, p0, Lcom/netflix/msl/io/MslEncoderFormat;->identifier:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public identifier()B
    .locals 1

    .prologue
    .line 94
    iget-byte v0, p0, Lcom/netflix/msl/io/MslEncoderFormat;->identifier:B

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/msl/io/MslEncoderFormat;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/netflix/msl/io/MslEncoderFormat;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
