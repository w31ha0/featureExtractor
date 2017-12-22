.class public Lcom/netflix/msl/msg/MessageCapabilities;
.super Ljava/lang/Object;
.source "MessageCapabilities.java"

# interfaces
.implements Lcom/netflix/msl/io/MslEncodable;


# static fields
.field private static final KEY_COMPRESSION_ALGOS:Ljava/lang/String; = "compressionalgos"

.field private static final KEY_ENCODER_FORMATS:Ljava/lang/String; = "encoderformats"

.field private static final KEY_LANGUAGES:Ljava/lang/String; = "languages"


# instance fields
.field private final compressionAlgos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/MslConstants$CompressionAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private final encoderFormats:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/io/MslEncoderFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/msl/io/MslObject;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    :try_start_0
    const-class v1, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    .line 119
    const-string/jumbo v1, "compressionalgos"

    invoke-virtual {p1, v1}, Lcom/netflix/msl/io/MslObject;->optMslArray(Ljava/lang/String;)Lcom/netflix/msl/io/MslArray;

    move-result-object v3

    move v1, v0

    .line 120
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/netflix/msl/io/MslArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 121
    invoke-virtual {v3, v1}, Lcom/netflix/msl/io/MslArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 124
    :try_start_1
    invoke-static {v4}, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;->valueOf(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_0
    :try_start_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageCapabilities;->compressionAlgos:Ljava/util/Set;

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    const-string/jumbo v1, "languages"

    invoke-virtual {p1, v1}, Lcom/netflix/msl/io/MslObject;->optMslArray(Ljava/lang/String;)Lcom/netflix/msl/io/MslArray;

    move-result-object v3

    move v1, v0

    .line 132
    :goto_2
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/netflix/msl/io/MslArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 133
    invoke-virtual {v3, v1}, Lcom/netflix/msl/io/MslArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 134
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/msl/msg/MessageCapabilities;->languages:Ljava/util/List;

    .line 137
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 138
    const-string/jumbo v2, "encoderformats"

    invoke-virtual {p1, v2}, Lcom/netflix/msl/io/MslObject;->optMslArray(Ljava/lang/String;)Lcom/netflix/msl/io/MslArray;

    move-result-object v2

    .line 139
    :goto_3
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/netflix/msl/io/MslArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 140
    invoke-virtual {v2, v0}, Lcom/netflix/msl/io/MslArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-static {v3}, Lcom/netflix/msl/io/MslEncoderFormat;->getFormat(Ljava/lang/String;)Lcom/netflix/msl/io/MslEncoderFormat;

    move-result-object v3

    .line 143
    if-eqz v3, :cond_2

    .line 144
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 146
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageCapabilities;->encoderFormats:Ljava/util/Set;
    :try_end_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_2 .. :try_end_2} :catch_0

    .line 150
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "capabilities "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 125
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/List;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/MslConstants$CompressionAlgorithm;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/io/MslEncoderFormat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    if-eqz p1, :cond_0

    :goto_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageCapabilities;->compressionAlgos:Ljava/util/Set;

    .line 104
    if-eqz p2, :cond_1

    :goto_1
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageCapabilities;->languages:Ljava/util/List;

    .line 105
    if-eqz p3, :cond_2

    :goto_2
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/msg/MessageCapabilities;->encoderFormats:Ljava/util/Set;

    .line 106
    return-void

    .line 103
    :cond_0
    const-class v0, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    goto :goto_0

    .line 104
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 105
    :cond_2
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    goto :goto_2
.end method

.method public static intersection(Lcom/netflix/msl/msg/MessageCapabilities;Lcom/netflix/msl/msg/MessageCapabilities;)Lcom/netflix/msl/msg/MessageCapabilities;
    .locals 4

    .prologue
    .line 71
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 72
    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    .line 75
    :cond_1
    const-class v0, Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 76
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageCapabilities;->compressionAlgos:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 77
    iget-object v0, p1, Lcom/netflix/msl/msg/MessageCapabilities;->compressionAlgos:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/netflix/msl/msg/MessageCapabilities;->languages:Ljava/util/List;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 81
    iget-object v0, p1, Lcom/netflix/msl/msg/MessageCapabilities;->languages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 85
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 86
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageCapabilities;->encoderFormats:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 87
    iget-object v0, p1, Lcom/netflix/msl/msg/MessageCapabilities;->encoderFormats:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 89
    new-instance v0, Lcom/netflix/msl/msg/MessageCapabilities;

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/msg/MessageCapabilities;-><init>(Ljava/util/Set;Ljava/util/List;Ljava/util/Set;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 193
    if-ne p0, p1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v0

    .line 194
    :cond_1
    instance-of v2, p1, Lcom/netflix/msl/msg/MessageCapabilities;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 195
    :cond_2
    check-cast p1, Lcom/netflix/msl/msg/MessageCapabilities;

    .line 196
    iget-object v2, p0, Lcom/netflix/msl/msg/MessageCapabilities;->compressionAlgos:Ljava/util/Set;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageCapabilities;->compressionAlgos:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageCapabilities;->languages:Ljava/util/List;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageCapabilities;->languages:Ljava/util/List;

    .line 197
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageCapabilities;->encoderFormats:Ljava/util/Set;

    iget-object v3, p1, Lcom/netflix/msl/msg/MessageCapabilities;->encoderFormats:Ljava/util/Set;

    .line 198
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getCompressionAlgorithms()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/MslConstants$CompressionAlgorithm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageCapabilities;->compressionAlgos:Ljava/util/Set;

    return-object v0
.end method

.method public getEncoderFormats()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/io/MslEncoderFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageCapabilities;->encoderFormats:Ljava/util/Set;

    return-object v0
.end method

.method public getLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageCapabilities;->languages:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageCapabilities;->compressionAlgos:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageCapabilities;->languages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/msg/MessageCapabilities;->encoderFormats:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 5

    .prologue
    .line 178
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v1

    .line 179
    const-string/jumbo v0, "compressionalgos"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageCapabilities;->compressionAlgos:Ljava/util/Set;

    invoke-virtual {p1, v2}, Lcom/netflix/msl/io/MslEncoderFactory;->createArray(Ljava/util/Collection;)Lcom/netflix/msl/io/MslArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 180
    const-string/jumbo v0, "languages"

    iget-object v2, p0, Lcom/netflix/msl/msg/MessageCapabilities;->languages:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 181
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createArray()Lcom/netflix/msl/io/MslArray;

    move-result-object v2

    .line 182
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageCapabilities;->encoderFormats:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/io/MslEncoderFormat;

    .line 183
    const/4 v4, -0x1

    invoke-virtual {v0}, Lcom/netflix/msl/io/MslEncoderFormat;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/netflix/msl/io/MslArray;->put(ILjava/lang/Object;)Lcom/netflix/msl/io/MslArray;

    goto :goto_0

    .line 184
    :cond_0
    const-string/jumbo v0, "encoderformats"

    invoke-virtual {v1, v0, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 185
    invoke-virtual {p1, v1, p2}, Lcom/netflix/msl/io/MslEncoderFactory;->encodeObject(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v0

    return-object v0
.end method
