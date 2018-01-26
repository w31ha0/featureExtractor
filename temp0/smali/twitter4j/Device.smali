.class public final Ltwitter4j/Device;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NONE:Ltwitter4j/Device;

.field public static final SMS:Ltwitter4j/Device;

.field private static final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ltwitter4j/Device;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x3955de92cae5612L


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltwitter4j/Device;->instances:Ljava/util/Map;

    .line 41
    new-instance v0, Ltwitter4j/Device;

    const-string v1, "sms"

    invoke-direct {v0, v1}, Ltwitter4j/Device;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/Device;->SMS:Ltwitter4j/Device;

    .line 42
    new-instance v0, Ltwitter4j/Device;

    const-string v1, "none"

    invoke-direct {v0, v1}, Ltwitter4j/Device;-><init>(Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/Device;->NONE:Ltwitter4j/Device;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Ltwitter4j/Device;->name:Ljava/lang/String;

    .line 52
    sget-object v0, Ltwitter4j/Device;->instances:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method private static getInstance(Ljava/lang/String;)Ltwitter4j/Device;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 82
    sget-object v0, Ltwitter4j/Device;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/Device;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Ltwitter4j/Device;->name:Ljava/lang/String;

    invoke-static {v0}, Ltwitter4j/Device;->getInstance(Ljava/lang/String;)Ltwitter4j/Device;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    if-ne p0, p1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v1

    .line 62
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

    .line 64
    check-cast v0, Ltwitter4j/Device;

    .line 66
    .local v0, "device":Ltwitter4j/Device;
    iget-object v3, p0, Ltwitter4j/Device;->name:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/Device;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Ltwitter4j/Device;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Ltwitter4j/Device;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ltwitter4j/Device;->name:Ljava/lang/String;

    return-object v0
.end method
